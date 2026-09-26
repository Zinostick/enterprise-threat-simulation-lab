#!/bin/bash

MAILHOG_IP="10.0.0.8"
TO_EMAIL="janed"
POLL_INTERVAL=30 # seconds

echo "Janed's Mail Watcher started... polling every $POLL_INTERVAL seconds"
echo "Watching for new mail sent to: $TO_EMAIL"

# Keep track of seen message IDs
SEEN_IDS_FILE="/tmp/mailhog_seen_ids_janed.txt"
touch "$SEEN_IDS_FILE"

while true; do
    # Fetch current message list
    curl -s http://$MAILHOG_IP:8025/api/v2/messages | jq -c '.items[]' | while read -r msg; do
        TO=$(echo "$msg" | jq -r '.To[].Mailbox')
        ID=$(echo "$msg" | jq -r '.ID')

        if [[ "$TO" == "$TO_EMAIL" && ! $(grep -Fx "$ID" "$SEEN_IDS_FILE") ]]; then
            SUBJECT=$(echo "$msg" | jq -r '.Content.Headers.Subject[0]')
            BODY=$(echo "$msg" | jq -r '.Content.Body')

            echo -e "\n New Email Received!"
            echo "Subject: $SUBJECT"
            echo "From: $(echo "$msg" | jq -r '.Content.Headers.From[0]')"
            echo "Date: $(echo "$msg" | jq -r '.Created')"
            echo -e "Message:\n$BODY"
            echo "----------------------------------------"

            echo "$ID" >> "$SEEN_IDS_FILE"
        fi
    done

    sleep "$POLL_INTERVAL"
