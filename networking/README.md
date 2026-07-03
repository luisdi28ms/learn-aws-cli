# VPC Network Diagram

Following the course we created the following AWS objects under VPC:

- A VPC named patientping
- 4 subnets:
  - patientping-public-a
  - patientping-public-b
  - patientping-private-a
  - patientping-private-b
- 2 route tables:
  - patientping-public-rt
  - patientping-private-rt
- 1 internet gateway patientpint-igw

This is an AI generated diagram of the components:

```mermaid
flowchart TB
    %% Styles
    classDef internetStyle fill:#1a1a1a,stroke:#4CAF50,stroke-width:3px,color:#4CAF50
    classDef vpcStyle fill:#1a1a1a,stroke:#ffffff,stroke-width:3px,color:#ffffff
    classDef subnetStyle fill:#1a1a1a,stroke:#ffffff,stroke-width:2px,color:#ffffff
    classDef gatewayStyle fill:#0d2137,stroke:#2196F3,stroke-width:2px,color:#2196F3

    %% Internet
    INTERNET["The Internet"]
    class INTERNET internetStyle

    %% VPC Container
    subgraph VPC["Our VPC"]
        direction TB

        %% Internet Gateway (top of public side)
        IGW["internet gateway"]
        class IGW gatewayStyle

        %% Subnets row
        subgraph SUBNETS[" "]
            direction LR
            PRIVATE_A["Private A"]
            PRIVATE_B["Private B"]
            PUBLIC_A["Public A"]
            PUBLIC_B["Public B"]
        end
        class PRIVATE_A,PRIVATE_B,PUBLIC_A,PUBLIC_B subnetStyle

        %% NAT Gateway (bottom, receives from private)
        NAT["NAT gateway"]
        class NAT gatewayStyle
    end
    class VPC vpcStyle

    %% Internet to Public (via IGW)
    INTERNET --> IGW
    IGW --> PUBLIC_A
    IGW --> PUBLIC_B

    %% No Ingress to Private
    INTERNET -.->|"no ingress"| PRIVATE_A
    INTERNET -.->|"no ingress"| PRIVATE_B

    %% Private Egress via NAT
    PRIVATE_A -->|"yes egress!"| NAT
    PRIVATE_B -->|"yes egress!"| NAT
    NAT --> IGW
```

## Diagram Explanation

This diagram illustrates a typical AWS VPC network topology with the following characteristics:

- **The Internet**: External network access represented at the top.
- **Our VPC**: The Virtual Private Cloud boundary containing all resources.
- **Private Subnets (A & B)**: Resources here have **no direct inbound access** from the internet (no ingress). However, they **can initiate outbound connections** (egress) through the NAT gateway.
- **Public Subnets (A & B)**: Resources here can communicate directly with the internet via the Internet Gateway.
- **Internet Gateway**: Allows bidirectional communication between public subnets and the internet.
- **NAT Gateway**: Allows private subnets to initiate outbound connections to the internet while remaining protected from unsolicited inbound traffic.

## References

- [Virtual Private Cloud](!https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html)
- [Classless Inter-Domain Routing (CIDR)](!https://aws.amazon.com/what-is/cidr/)
- [Internet Gateway](!https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Internet_Gateway.html)
- [Route Table](!https://docs.aws.amazon.com/vpc/latest/userguide/RouteTables.html)
