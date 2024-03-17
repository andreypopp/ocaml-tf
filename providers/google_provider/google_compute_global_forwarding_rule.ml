(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_compute_global_forwarding_rule__metadata_filters__filter_labels = {
  name : string;
      (** Name of the metadata label. The length must be between
1 and 1024 characters, inclusive. *)
  value : string;
      (** The value that the label must match. The value has a maximum
length of 1024 characters. *)
}
[@@deriving yojson_of]
(** The list of label value pairs that must match labels in the
provided metadata based on filterMatchCriteria

This list must not be empty and can have at the most 64 entries. *)

type google_compute_global_forwarding_rule__metadata_filters = {
  filter_match_criteria : string;
      (** Specifies how individual filterLabel matches within the list of
filterLabels contribute towards the overall metadataFilter match.

MATCH_ANY - At least one of the filterLabels must have a matching
label in the provided metadata.
MATCH_ALL - All filterLabels must have matching labels in the
provided metadata. Possible values: [MATCH_ANY, MATCH_ALL] *)
  filter_labels :
    google_compute_global_forwarding_rule__metadata_filters__filter_labels
    list;
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

type google_compute_global_forwarding_rule__service_directory_registrations = {
  namespace : string option; [@option]
      (** Service Directory namespace to register the forwarding rule under. *)
  service_directory_region : string option; [@option]
      (** [Optional] Service Directory region to register this global forwarding rule under.
Default to us-central1. Only used for PSC for Google APIs. All PSC for
Google APIs Forwarding Rules on the same network should use the same Service
Directory region. *)
}
[@@deriving yojson_of]
(** Service Directory resources to register this forwarding rule with.

Currently, only supports a single Service Directory resource. *)

type google_compute_global_forwarding_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_global_forwarding_rule__timeouts *)

type google_compute_global_forwarding_rule = {
  description : string option; [@option]
      (** An optional description of this resource. Provide this property when
you create the resource. *)
  ip_version : string option; [@option]
      (** The IP Version that will be used by this global forwarding rule. Possible values: [IPV4, IPV6] *)
  labels : (string * string) list option; [@option]
      (** Labels to apply to this forwarding rule.  A list of key->value pairs.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  load_balancing_scheme : string option; [@option]
      (** Specifies the forwarding rule type.

For more information about forwarding rules, refer to
[Forwarding rule concepts](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts). Default value: EXTERNAL Possible values: [EXTERNAL, EXTERNAL_MANAGED, INTERNAL_MANAGED, INTERNAL_SELF_MANAGED] *)
  name : string;
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
  no_automate_dns_zone : bool option; [@option]
      (** This is used in PSC consumer ForwardingRule to control whether it should try to auto-generate a DNS zone or not. Non-PSC forwarding rules do not use this field. *)
  port_range : string option; [@option]
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
  source_ip_ranges : string list option; [@option]
      (** If not empty, this Forwarding Rule will only forward the traffic when the source IP address matches one of the IP addresses or CIDR ranges set here. Note that a Forwarding Rule can only have up to 64 source IP ranges, and this field can only be used with a regional Forwarding Rule whose scheme is EXTERNAL. Each sourceIpRange entry should be either an IP address (for example, 1.2.3.4) or a CIDR range (for example, 1.2.3.0/24). *)
  target : string;
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
  metadata_filters :
    google_compute_global_forwarding_rule__metadata_filters list;
  service_directory_registrations :
    google_compute_global_forwarding_rule__service_directory_registrations
    list;
  timeouts : google_compute_global_forwarding_rule__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_global_forwarding_rule *)

let google_compute_global_forwarding_rule ?description ?ip_version
    ?labels ?load_balancing_scheme ?no_automate_dns_zone ?port_range
    ?source_ip_ranges ?timeouts ~name ~target ~metadata_filters
    ~service_directory_registrations __resource_id =
  let __resource_type = "google_compute_global_forwarding_rule" in
  let __resource =
    {
      description;
      ip_version;
      labels;
      load_balancing_scheme;
      name;
      no_automate_dns_zone;
      port_range;
      source_ip_ranges;
      target;
      metadata_filters;
      service_directory_registrations;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_global_forwarding_rule __resource);
  ()
