<<<<<<< HEAD
# Enterprise Threat Simulation & Security Monitoring Lab

## Project Overview
This project demonstrates a multi-machine enterprise simulation designed to test threat detection, log collection, and incident response workflows. Using a localized virtualization environment, the lab simulates real-world attack vectors—including phishing delivery and credential harvesting—while centralizing security monitoring through a Wazuh SIEM architecture.

---

## Lab Architecture & Topology
The environment consists of several interconnected VirtualBox virtual machines mimicking a small enterprise network:

1. *demo-project-x-dc (Windows Server 2022 - Domain Controller):* Acts as the central identity provider equipped with the Wazuh agent for endpoint telemetry.
2. *demo-project-x-win-client (Windows 11 Client):* Configured as a standard corporate workstation inside the test domain.
3. *demo-project-x-linux-client (Ubuntu/Linux Client):* Used for mail utility tasks and testing cross-platform log ingestion.
4. *demo2-project-x-corp-svr (Corporate Server):* Maintained via baseline snapshots for application and service testing.
5. *demo-project-x-sec-box (Security / SIEM Node):* Configured with detection mechanisms and alert triggers.
6. *demo-project-x-dc-attacker (Attacker Machine):* Offensive simulation node used to launch attack payloads against the enterprise domain.

---

## Key Capabilities & Scenarios Simulated
* *Phishing & Credential Harvesting:* Simulated delivery of phishing vectors to test user interaction logging and credential capture detection.
* *Centralized Log Monitoring:* Integrated Wazuh agents across Windows and Linux endpoints to aggregate security events, authentication logs, and system changes.
* *Alert & Detection Engineering:* Verified custom setup detection rules to trigger real-time alerts upon suspicious activity execution.

---

## Repository Structure
* /configs/ - Sample configuration files and hardening guidelines.
* /scripts/ - Automation and deployment scripts utilized across the lab nodes.
* /screenshots/ - Visual evidence of Wazuh alerts, dashboard metrics, and successful detection events.

---

## Skills & Tools Demonstrated
* *SIEM & Log Analysis:* Wazuh, centralized event log collection.
* *Enterprise Environment Management:* Windows Server 2022 Active Directory, Windows 11, and Linux client configuration.
* *Threat Simulation:* Controlled attack execution and security control validation.
=======
# enterprise-threat-simulation-lab
This project demonstrates a multi-machine enterprise simulation designed to test threat detection
>>>>>>> 52468a152f3772f24294c7ecd8f18d7af9a46c5a
