(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_forwarding_rule__service_directory_registrations = {
  namespace : string option; [@option]
      (** Service Directory namespace to register the forwarding rule under. *)
  service : string option; [@option]
      (** Service Directory service to register the forwarding rule under. *)
}
[@@deriving yojson_of]
(** Service Directory resources to register this forwarding rule with.

Currently, only supports a single Service Directory resource. *)

type google_compute_forwarding_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_forwarding_rule__timeouts *)

type google_compute_forwarding_rule = {
  all_ports : bool option; [@option]
      (** The 'ports', 'portRange', and 'allPorts' fields are mutually exclusive.
Only packets addressed to ports in the specified range will be forwarded
to the backends configured with this forwarding rule.

The 'allPorts' field has the following limitations:
* It requires that the forwarding rule 'IPProtocol' be TCP, UDP, SCTP, or
L3_DEFAULT.
* It's applicable only to the following products: internal passthrough
Network Load Balancers, backend service-based external passthrough Network
Load Balancers, and internal and external protocol forwarding.
* Set this field to true to allow packets addressed to any port or packets
lacking destination port information (for example, UDP fragments after the
first fragment) to be forwarded to the backends configured with this
forwarding rule. The L3_DEFAULT protocol requires 'allPorts' be set to
true. *)
  allow_global_access : bool option; [@option]
      (** This field is used along with the 'backend_service' field for
internal load balancing or with the 'target' field for internal
TargetInstance.

If the field is set to 'TRUE', clients can access ILB from all
regions.

Otherwise only allows access from clients in the same region as the
internal load balancer. *)
  allow_psc_global_access : bool option; [@option]
      (** This is used in PSC consumer ForwardingRule to control whether the PSC endpoint can be accessed from another region. *)
  backend_service : string option; [@option]
      (** Identifies the backend service to which the forwarding rule sends traffic.

Required for Internal TCP/UDP Load Balancing and Network Load Balancing;
must be omitted for all other load balancer types. *)
  description : string option; [@option]
      (** An optional description of this resource. Provide this property when
you create the resource. *)
  is_mirroring_collector : bool option; [@option]
      (** Indicates whether or not this load balancer can be used as a collector for
packet mirroring. To prevent mirroring loops, instances behind this
load balancer will not have their traffic mirrored even if a
'PacketMirroring' rule applies to them.

This can only be set to true for load balancers that have their
'loadBalancingScheme' set to 'INTERNAL'. *)
  labels : (string * string) list option; [@option]
      (** Labels to apply to this forwarding rule.  A list of key->value pairs.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  load_balancing_scheme : string option; [@option]
      (** Specifies the forwarding rule type.

For more information about forwarding rules, refer to
[Forwarding rule concepts](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts). Default value: EXTERNAL Possible values: [EXTERNAL, EXTERNAL_MANAGED, INTERNAL, INTERNAL_MANAGED] *)
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
  ports : string list option; [@option]
      (** The 'ports', 'portRange', and 'allPorts' fields are mutually exclusive.
Only packets addressed to ports in the specified range will be forwarded
to the backends configured with this forwarding rule.

The 'ports' field has the following limitations:
* It requires that the forwarding rule 'IPProtocol' be TCP, UDP, or SCTP,
and
* It's applicable only to the following products: internal passthrough
Network Load Balancers, backend service-based external passthrough Network
Load Balancers, and internal protocol forwarding.
* You can specify a list of up to five ports by number, separated by
commas. The ports can be contiguous or discontiguous.

For external forwarding rules, two or more forwarding rules cannot use the
same '[IPAddress, IPProtocol]' pair if they share at least one port
number.

For internal forwarding rules within the same VPC network, two or more
forwarding rules cannot use the same '[IPAddress, IPProtocol]' pair if
they share at least one port number.

@pattern: \d+(?:-\d+)? *)
  recreate_closed_psc : bool option; [@option]
      (** This is used in PSC consumer ForwardingRule to make terraform recreate the ForwardingRule when the status is closed *)
  service_label : string option; [@option]
      (** An optional prefix to the service name for this Forwarding Rule.
If specified, will be the first label of the fully qualified service
name.

The label must be 1-63 characters long, and comply with RFC1035.
Specifically, the label must be 1-63 characters long and match the
regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the first
character must be a lowercase letter, and all following characters
must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.

This field is only used for INTERNAL load balancing. *)
  source_ip_ranges : string list option; [@option]
      (** If not empty, this Forwarding Rule will only forward the traffic when the source IP address matches one of the IP addresses or CIDR ranges set here. Note that a Forwarding Rule can only have up to 64 source IP ranges, and this field can only be used with a regional Forwarding Rule whose scheme is EXTERNAL. Each sourceIpRange entry should be either an IP address (for example, 1.2.3.4) or a CIDR range (for example, 1.2.3.0/24). *)
  target : string option; [@option]
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
  service_directory_registrations :
    google_compute_forwarding_rule__service_directory_registrations
    list;
  timeouts : google_compute_forwarding_rule__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_forwarding_rule *)

let google_compute_forwarding_rule ?all_ports ?allow_global_access
    ?allow_psc_global_access ?backend_service ?description
    ?is_mirroring_collector ?labels ?load_balancing_scheme
    ?no_automate_dns_zone ?ports ?recreate_closed_psc ?service_label
    ?source_ip_ranges ?target ?timeouts ~name
    ~service_directory_registrations __resource_id =
  let __resource_type = "google_compute_forwarding_rule" in
  let __resource =
    {
      all_ports;
      allow_global_access;
      allow_psc_global_access;
      backend_service;
      description;
      is_mirroring_collector;
      labels;
      load_balancing_scheme;
      name;
      no_automate_dns_zone;
      ports;
      recreate_closed_psc;
      service_label;
      source_ip_ranges;
      target;
      service_directory_registrations;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_forwarding_rule __resource);
  ()
