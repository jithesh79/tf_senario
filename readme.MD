Here’s the scenario you want to implement:
•	Private subnet:
o	No incoming public internet traffic (only from inside the VPC and your company network).
o	Outbound internet access allowed (for updates, downloads, etc.) via NAT Gateway.
•	Public subnet:
o	Allows inbound public internet traffic (public-facing services).
o	Outbound internet access allowed.
