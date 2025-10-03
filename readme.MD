Q.Here’s the scenario you want to implement:
•	Private subnet:
o	No incoming public internet traffic (only from inside the VPC and your company network).
o	Outbound internet access allowed (for updates, downloads, etc.) via NAT Gateway.
•	Public subnet:
o	Allows inbound public internet traffic (public-facing services).
o	Outbound internet access allowed.

A : 1. Private Subnet Setup:
   ==========================
    •	Ingress: Only allow traffic from your VPC CIDR block and your company network CIDRs.
    •	Egress: Allow all outbound traffic so instances can reach the internet via NAT Gateway.
    •	Routing: Route all 0.0.0.0/0 traffic from private subnet to NAT Gateway in the public subnet.
  2. Public Subnet Setup
========================
    •	Ingress: Allow inbound traffic from anywhere (0.0.0.0/0) on needed ports (like HTTP/HTTPS).
    •	Egress: Allow all outbound traffic
    •	Routing: Route all 0.0.0.0/0 traffic from public subnet to Internet Gateway.



