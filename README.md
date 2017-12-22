<!-- Title: "Programmble Network API" -->

<table style="border:none;box-shadow:none;padding:0 0 0 0;margin:0">
<tr><td style="border:none;padding:0 0 0 0">
<p>Telstra Programmable Network is a self-provisioning platform that allows its users to create on-demand connectivity services between multiple end-points and add various network functions to those services. Programmable Network enables to connectivity to a global ecosystem of networking services as well as public and private cloud services.</p>
<p>Once you are connected to the platform on one or more POPs (points of presence), you can start creating those services based on the use case that you want to accomplish.</p>
</td>
<td style="width: 20%;border:none">
<img src="https://dev.telstra.com/sites/default/files/programmable%20network%20logo-FF.png">
</td></tr></table>

## Features

| Feature | Description |
| --- | --- |
| [Endpoint](https://dev.telstra.com/content/key-concepts-tpn#endpoint) | An **Endpoint** is point in the network that can be connected with a point-to-point **Link**, such as a physical port, a Cloud Provider, a Virtual Network Function or an interconnect point with an IPVPN network such as [Connect IP&reg;](https://www.telstra.com.au/business-enterprise/solutions/network-services/networks/vpn) in Australia or [Telstra IPVPN](https://www.telstraglobal.com/products/connectivity/virtual-private-networks/ipvpn) globally. |
| [Link](https://dev.telstra.com/content/key-concepts-tpn#link) | A **Link** is a mechanism to create a Layer 2 point-to-point connection between two **Endpoints**, allowing traffic to flow according to the conditions of one or more **Contracts** assigned to the **Link** |
| [Contract](https://dev.telstra.com/content/key-concepts-tpn#contract) | A **Contract** describes the commercial terms associated with a link (such as duration, billing account and price) and determines the characteristics of the traffic flowing across the link (such as bandwidth, latency, etc.) |
| [Virtual Port](https://dev.telstra.com/content/key-concepts-tpn#virtualportvport) | A **VPort** can be thought of as a connection point on an **Endpoint**, allowing multiple **Links** to be connected to the same **Endpoint** |
| [Virtual&nbsp;Network&nbsp;Function](https://dev.telstra.com/content/key-concepts-tpn#virtualnetworkfunctionmarketplace) | A **Virtual Network Function** is a virtual appliance which can operate within the Programmable Network, providing more sophisticated services, such as routing, firewalling, load-balancing, encryption, etc. |
| [Marketplace](https://dev.telstra.com/content/key-concepts-tpn#virtualnetworkfunctionmarketplace) | The Programmable Network **Marketplace** provides a way for Telstra and network appliance vendors to publish a **Virtual Network Function** which users can deploy in the Programmable Network |
| [Data Centre](https://dev.telstra.com/content/key-concepts-tpn#datacentre) | Each physical **Endpoint** of the Programmable Network (such as physical port, **Exchange** connection, etc.) are located in a **Data Centre** |
| [Global Exchange](https://dev.telstra.com/content/key-concepts-tpn#globalexchange) | The **Global Exchange** provides a mechanism to interconnect with external networks and services, such as Cloud Providers, Telstra IPVPN services, 3rd-party Networks and other Programmable Network users |
| [Telstra Global IPVPN](https://dev.telstra.com/content/key-concepts-tpn#telstraglobalipvpn) | The **Telstra Global IPVPN** refers to the international IPVPN service provided by Telstra. |
| [Telstra Next IP](https://dev.telstra.com/content/key-concepts-tpn#telstranextip) | The **Telstra Next IP** refers to the Australian IPVPN service provided by Telstra. |
| [Topologies](https://dev.telstra.com/content/key-concepts-tpn#topologyandtag) | Multiple resources created in an account's Programmable Network can be grouped in a **Topology** which easily allows logical separation of parts of the network for users (e.g. Production vs. Lab networks) |
| [Tags](https://dev.telstra.com/content/key-concepts-tpn#topologyandtag) | A **Tag** is the labels by which users refer to a **Topology** |
| [Customer](https://dev.telstra.com/content/key-concepts-tpn#customeruseraccount) | A **Customer** owns a Programmable Network **Account**. A **Customer** can have a parent-child relationship which allows children **Customers** to be created for departments, projects, etc. |
| [Account](https://dev.telstra.com/content/key-concepts-tpn#customeruseraccount) | An **Account** holds details  |
| [User](https://dev.telstra.com/content/key-concepts-tpn#customeruseraccount) | A **User**  |
| [Statistics](https://dev.telstra.com/content/key-concepts-tpn#statistics) | Users can extract historical **Statistics** relating to links and endpoints. |

## Example Use Cases

| Use Case | Example |
| --- | --- |
| [Data Centre Interconnect](https://dev.telstra.com/content/examples-tpn#datacentreinterconnect) | Flexible bandwidth between two public data centres |
| Cloud Connectivity | Connect to Cloud Providers, such as Amazon AWS, Microsoft Azure, IBM BlueMix (SoftLayer), Google Compute Platform, etc. |
| Firewall | Use a firewall Virtual Network Function from the [Marketplace](https://dev.telstra.com/content/key-concepts-tpn#virtual-network-functions-marketplace) to secure traffic between different endpoints (e.g. Corporate IPVPN and a Cloud Provider) |
| Inter-Company Exchange | Use the [Global Exchange](https://dev.telstra.com/content/key-concepts-tpn#global-exchange) feature to create connections to other Programmable Network customers |

<!--
| [Cloud Connectivity](https://dev.telstra.com/content/examples-tpn#cloudconnectivity) | Connect to Cloud Providers, such as Amazon AWS, Microsoft Azure, IBM BlueMix (SoftLayer), Google Compute Platform, etc. |
| [Firewall](https://dev.telstra.com/content/examples-tpn#firewall) | Use a firewall Virtual Network Function from the [Marketplace](https://dev.telstra.com/content/key-concepts-tpn#virtual-network-functions-marketplace) to secure traffic between different endpoints (e.g. Corporate IPVPN and a Cloud Provider) |
| [Inter-Company Exchange](https://dev.telstra.com/content/examples-tpn#intercompanyexchange) | Use the [Global Exchange](https://dev.telstra.com/content/key-concepts-tpn#global-exchange) feature to create connections to other Programmable Network customers | -->

## Getting Started

Start with the [Getting Started](https://dev.telstra.com/content/getting-started-tpn) Guide.

The OpenAPI 2.0 (Swagger) specification is also available [here](https://dev.telstra.com/content/openapi-30-specification-tpn).

## Key Concepts
See [Key Concepts](https://dev.telstra.com/content/key-concepts-tpn) for details on Key Concepts for the Programmable Network.
<!-- TODO: maybe put an overview diagram here? -->

## SDKs
- [Programmable Network - Ruby SDK](https://github.com/telstra/Programmable-Network-SDK-ruby)
- [Programmable Network - Perl SDK](https://github.com/telstra/Programmable-Network-SDK-perl)
- [Programmable Network - Bash SDK](https://github.com/telstra/Programmable-Network-SDK-bash)
- [Programmable Network - Java SDK](https://github.com/telstra/Programmable-Network-SDK-java)
- [Programmable Network - Node SDK](https://github.com/telstra/Programmable-Network-SDK-node)
- [Programmable Network - PHP SDK](https://github.com/telstra/Programmable-Network-SDK-PHP)
- [Programmable Network - Python SDK](https://github.com/telstra/Programmable-Network-SDK-python)
- [Programmable Network - .Net2 SDK](https://github.com/telstra/Programmable-Network-SDK-dotnet)
- [Programmable Network - Go SDK](https://github.com/telstra/Programmable-Network-SDK-go)

