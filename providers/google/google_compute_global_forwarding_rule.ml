(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type metadata_filters__filter_labels = {
  name : string prop;
      (** Name of the metadata label. The length must be between
1 and 1024 characters, inclusive. *)
  value : string prop;
      (** The value that the label must match. The value has a maximum
length of 1024 characters. *)
}
[@@deriving yojson_of]
(** The list of label value pairs that must match labels in the
provided metadata based on filterMatchCriteria

This list must not be empty and can have at the most 64 entries. *)

type metadata_filters = {
  filter_match_criteria : string prop;
      (** Specifies how individual filterLabel matches within the list of
filterLabels contribute towards the overall metadataFilter match.

MATCH_ANY - At least one of the filterLabels must have a matching
label in the provided metadata.
MATCH_ALL - All filterLabels must have matching labels in the
provided metadata. Possible values: [MATCH_ANY, MATCH_ALL] *)
  filter_labels : metadata_filters__filter_labels list;
}
[@@deriving yojson_of]
(** Opaque filter criteria used by Loadbalancer to restrict routing
configuration to a limited set xDS compliant clients. In their xDS
requests to Loadbalancer, xDS clients present node metadata. If a
match takes place, the relevant routing configuration is made available
to those proxies.

For each metadataFilter in this list, if its filterMatchCriteria is set
to MATCH_ANY, at least one of the filterLabels must match the
corresponding label provided in the metadata. If its filterMatchCriteria
is set to MATCH_ALL, then all of its filterLabels must match with
corresponding labels in the provided metadata.

metadataFilters specified here can be overridden by those specified in
the UrlMap that this ForwardingRule references.

metadataFilters only applies to Loadbalancers that have their
loadBalancingScheme set to INTERNAL_SELF_MANAGED. *)

type service_directory_registrations = {
  namespace : string prop option; [@option]
      (** Service Directory namespace to register the forwarding rule under. *)
  service_directory_region : string prop option; [@option]
      (** [Optional] Service Directory region to register this global forwarding rule under.
Default to us-central1. Only used for PSC for Google APIs. All PSC for
Google APIs Forwarding Rules on the same network should use the same Service
Directory region. *)
}
[@@deriving yojson_of]
(** Service Directory resources to register this forwarding rule with.

Currently, only supports a single Service Directory resource. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_global_forwarding_rule = {
  description : string prop option; [@option]
      (** An optional description of this resource. Provide this property when
you create the resource. *)
  id : string prop option; [@option]  (** id *)
  ip_address : string prop option; [@option]
      (** IP address for which this forwarding rule accepts traffic. When a client
sends traffic to this IP address, the forwarding rule directs the traffic
to the referenced 'target'.

While creating a forwarding rule, specifying an 'IPAddress' is
required under the following circumstances:

* When the 'target' is set to 'targetGrpcProxy' and
'validateForProxyless' is set to 'true', the
'IPAddress' should be set to '0.0.0.0'.
* When the 'target' is a Private Service Connect Google APIs
bundle, you must specify an 'IPAddress'.


Otherwise, you can optionally specify an IP address that references an
existing static (reserved) IP address resource. When omitted, Google Cloud
assigns an ephemeral IP address.

Use one of the following formats to specify an IP address while creating a
forwarding rule:

* IP address number, as in '100.1.2.3'
* IPv6 address range, as in '2600:1234::/96'
* Full resource URL, as in
'https://www.googleapis.com/compute/v1/projects/project_id/regions/region/addresses/address-name'
* Partial URL or by name, as in:
  * 'projects/project_id/regions/region/addresses/address-name'
  * 'regions/region/addresses/address-name'
  * 'global/addresses/address-name'
  * 'address-name'


The forwarding rule's 'target',
and in most cases, also the 'loadBalancingScheme', determine the
type of IP address that you can use. For detailed information, see
[IP address
specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications).

When reading an 'IPAddress', the API always returns the IP
address number. *)
  ip_protocol : string prop option; [@option]
      (** The IP protocol to which this rule applies.

For protocol forwarding, valid
options are 'TCP', 'UDP', 'ESP',
'AH', 'SCTP', 'ICMP' and
'L3_DEFAULT'.

The valid IP protocols are different for different load balancing products
as described in [Load balancing
features](https://cloud.google.com/load-balancing/docs/features#protocols_from_the_load_balancer_to_the_backends). Possible values: [TCP, UDP, ESP, AH, SCTP, ICMP] *)
  ip_version : string prop option; [@option]
      (** The IP Version that will be used by this global forwarding rule. Possible values: [IPV4, IPV6] *)
  labels : (string * string prop) list option; [@option]
      (** Labels to apply to this forwarding rule.  A list of key->value pairs.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  load_balancing_scheme : string prop option; [@option]
      (** Specifies the forwarding rule type.

For more information about forwarding rules, refer to
[Forwarding rule concepts](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts). Default value: EXTERNAL Possible values: [EXTERNAL, EXTERNAL_MANAGED, INTERNAL_MANAGED, INTERNAL_SELF_MANAGED] *)
  name : string prop;
      (** Name of the resource; provided by the client when the resource is created.
The name must be 1-63 characters long, and comply with
[RFC1035](https://www.ietf.org/rfc/rfc1035.txt).

Specifically, the name must be 1-63 characters long and match the regular
expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the first
character must be a lowercase letter, and all following characters must
be a dash, lowercase letter, or digit, except the last character, which
cannot be a dash.

For Private Service Connect forwarding rules that forward traffic to Google
APIs, the forwarding rule name must be a 1-20 characters string with
lowercase letters and numbers and must start with a letter. *)
  network : string prop option; [@option]
      (** This field is not used for external load balancing.

For Internal TCP/UDP Load Balancing, this field identifies the network that
the load balanced IP should belong to for this Forwarding Rule.
If the subnetwork is specified, the network of the subnetwork will be used.
If neither subnetwork nor this field is specified, the default network will
be used.

For Private Service Connect forwarding rules that forward traffic to Google
APIs, a network must be provided. *)
  no_automate_dns_zone : bool prop option; [@option]
      (** This is used in PSC consumer ForwardingRule to control whether it should try to auto-generate a DNS zone or not. Non-PSC forwarding rules do not use this field. *)
  port_range : string prop option; [@option]
      (** The 'portRange' field has the following limitations:
* It requires that the forwarding rule 'IPProtocol' be TCP, UDP, or SCTP,
and
* It's applicable only to the following products: external passthrough
Network Load Balancers, internal and external proxy Network Load
Balancers, internal and external Application Load Balancers, external
protocol forwarding, and Classic VPN.
* Some products have restrictions on what ports can be used. See
[port specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#port_specifications)
for details.

For external forwarding rules, two or more forwarding rules cannot use the
same '[IPAddress, IPProtocol]' pair, and cannot have overlapping
'portRange's.

For internal forwarding rules within the same VPC network, two or more
forwarding rules cannot use the same '[IPAddress, IPProtocol]' pair, and
cannot have overlapping 'portRange's.

@pattern: \d+(?:-\d+)? *)
  project : string prop option; [@option]  (** project *)
  source_ip_ranges : string prop list option; [@option]
      (** If not empty, this Forwarding Rule will only forward the traffic when the source IP address matches one of the IP addresses or CIDR ranges set here. Note that a Forwarding Rule can only have up to 64 source IP ranges, and this field can only be used with a regional Forwarding Rule whose scheme is EXTERNAL. Each sourceIpRange entry should be either an IP address (for example, 1.2.3.4) or a CIDR range (for example, 1.2.3.0/24). *)
  subnetwork : string prop option; [@option]
      (** This field identifies the subnetwork that the load balanced IP should
belong to for this Forwarding Rule, used in internal load balancing and
network load balancing with IPv6.

If the network specified is in auto subnet mode, this field is optional.
However, a subnetwork must be specified if the network is in custom subnet
mode or when creating external forwarding rule with IPv6. *)
  target : string prop;
      (** The URL of the target resource to receive the matched traffic.  For
regional forwarding rules, this target must be in the same region as the
forwarding rule. For global forwarding rules, this target must be a global
load balancing resource.

The forwarded traffic must be of a type appropriate to the target object.
*  For load balancers, see the Target column in [Port specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications).
*  For Private Service Connect forwarding rules that forward traffic to Google APIs, provide the name of a supported Google API bundle:
  *  'vpc-sc' - [ APIs that support VPC Service Controls](https://cloud.google.com/vpc-service-controls/docs/supported-products).
  *  'all-apis' - [All supported Google APIs](https://cloud.google.com/vpc/docs/private-service-connect#supported-apis).


For Private Service Connect forwarding rules that forward traffic to managed services, the target must be a service attachment. *)
  metadata_filters : metadata_filters list;
  service_directory_registrations :
    service_directory_registrations list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_global_forwarding_rule *)

let metadata_filters__filter_labels ~name ~value () :
    metadata_filters__filter_labels =
  { name; value }

let metadata_filters ~filter_match_criteria ~filter_labels () :
    metadata_filters =
  { filter_match_criteria; filter_labels }

let service_directory_registrations ?namespace
    ?service_directory_region () : service_directory_registrations =
  { namespace; service_directory_region }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_global_forwarding_rule ?description ?id
    ?ip_address ?ip_protocol ?ip_version ?labels
    ?load_balancing_scheme ?network ?no_automate_dns_zone ?port_range
    ?project ?source_ip_ranges ?subnetwork ?timeouts ~name ~target
    ~metadata_filters ~service_directory_registrations () :
    google_compute_global_forwarding_rule =
  {
    description;
    id;
    ip_address;
    ip_protocol;
    ip_version;
    labels;
    load_balancing_scheme;
    name;
    network;
    no_automate_dns_zone;
    port_range;
    project;
    source_ip_ranges;
    subnetwork;
    target;
    metadata_filters;
    service_directory_registrations;
    timeouts;
  }

type t = {
  base_forwarding_rule : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  ip_address : string prop;
  ip_protocol : string prop;
  ip_version : string prop;
  label_fingerprint : string prop;
  labels : (string * string) list prop;
  load_balancing_scheme : string prop;
  name : string prop;
  network : string prop;
  no_automate_dns_zone : bool prop;
  port_range : string prop;
  project : string prop;
  psc_connection_id : string prop;
  psc_connection_status : string prop;
  self_link : string prop;
  source_ip_ranges : string list prop;
  subnetwork : string prop;
  target : string prop;
  terraform_labels : (string * string) list prop;
}

let register ?tf_module ?description ?id ?ip_address ?ip_protocol
    ?ip_version ?labels ?load_balancing_scheme ?network
    ?no_automate_dns_zone ?port_range ?project ?source_ip_ranges
    ?subnetwork ?timeouts ~name ~target ~metadata_filters
    ~service_directory_registrations __resource_id =
  let __resource_type = "google_compute_global_forwarding_rule" in
  let __resource =
    google_compute_global_forwarding_rule ?description ?id
      ?ip_address ?ip_protocol ?ip_version ?labels
      ?load_balancing_scheme ?network ?no_automate_dns_zone
      ?port_range ?project ?source_ip_ranges ?subnetwork ?timeouts
      ~name ~target ~metadata_filters
      ~service_directory_registrations ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_global_forwarding_rule __resource);
  let __resource_attributes =
    ({
       base_forwarding_rule =
         Prop.computed __resource_type __resource_id
           "base_forwarding_rule";
       description =
         Prop.computed __resource_type __resource_id "description";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       id = Prop.computed __resource_type __resource_id "id";
       ip_address =
         Prop.computed __resource_type __resource_id "ip_address";
       ip_protocol =
         Prop.computed __resource_type __resource_id "ip_protocol";
       ip_version =
         Prop.computed __resource_type __resource_id "ip_version";
       label_fingerprint =
         Prop.computed __resource_type __resource_id
           "label_fingerprint";
       labels = Prop.computed __resource_type __resource_id "labels";
       load_balancing_scheme =
         Prop.computed __resource_type __resource_id
           "load_balancing_scheme";
       name = Prop.computed __resource_type __resource_id "name";
       network =
         Prop.computed __resource_type __resource_id "network";
       no_automate_dns_zone =
         Prop.computed __resource_type __resource_id
           "no_automate_dns_zone";
       port_range =
         Prop.computed __resource_type __resource_id "port_range";
       project =
         Prop.computed __resource_type __resource_id "project";
       psc_connection_id =
         Prop.computed __resource_type __resource_id
           "psc_connection_id";
       psc_connection_status =
         Prop.computed __resource_type __resource_id
           "psc_connection_status";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
       source_ip_ranges =
         Prop.computed __resource_type __resource_id
           "source_ip_ranges";
       subnetwork =
         Prop.computed __resource_type __resource_id "subnetwork";
       target = Prop.computed __resource_type __resource_id "target";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
     }
      : t)
  in
  __resource_attributes
