(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_compute_firewall__allow = {
  ports : string list option; [@option]
      (** An optional list of ports to which this rule applies. This field
is only applicable for UDP or TCP protocol. Each entry must be
either an integer or a range. If not specified, this rule
applies to connections through any port.

Example inputs include: [22], [80,443], and
[12345-12349]. *)
  protocol : string;
      (** The IP protocol to which this rule applies. The protocol type is
required when creating a firewall rule. This value can either be
one of the following well known protocol strings (tcp, udp,
icmp, esp, ah, sctp, ipip, all), or the IP protocol number. *)
}
[@@deriving yojson_of]
(** The list of ALLOW rules specified by this firewall. Each rule
specifies a protocol and port-range tuple that describes a permitted
connection. *)

type google_compute_firewall__deny = {
  ports : string list option; [@option]
      (** An optional list of ports to which this rule applies. This field
is only applicable for UDP or TCP protocol. Each entry must be
either an integer or a range. If not specified, this rule
applies to connections through any port.

Example inputs include: [22], [80,443], and
[12345-12349]. *)
  protocol : string;
      (** The IP protocol to which this rule applies. The protocol type is
required when creating a firewall rule. This value can either be
one of the following well known protocol strings (tcp, udp,
icmp, esp, ah, sctp, ipip, all), or the IP protocol number. *)
}
[@@deriving yojson_of]
(** The list of DENY rules specified by this firewall. Each rule specifies
a protocol and port-range tuple that describes a denied connection. *)

type google_compute_firewall__log_config = {
  metadata : string;
      (** This field denotes whether to include or exclude metadata for firewall logs. Possible values: [EXCLUDE_ALL_METADATA, INCLUDE_ALL_METADATA] *)
}
[@@deriving yojson_of]
(** This field denotes the logging options for a particular firewall rule.
If defined, logging is enabled, and logs will be exported to Cloud Logging. *)

type google_compute_firewall__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_firewall__timeouts *)

type google_compute_firewall = {
  description : string option; [@option]
      (** An optional description of this resource. Provide this property when
you create the resource. *)
  disabled : bool option; [@option]
      (** Denotes whether the firewall rule is disabled, i.e not applied to the
network it is associated with. When set to true, the firewall rule is
not enforced and the network behaves as if it did not exist. If this
is unspecified, the firewall rule will be enabled. *)
  name : string;
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  network : string;
      (** The name or self_link of the network to attach this firewall to. *)
  priority : float option; [@option]
      (** Priority for this rule. This is an integer between 0 and 65535, both
inclusive. When not specified, the value assumed is 1000. Relative
priorities determine precedence of conflicting rules. Lower value of
priority implies higher precedence (eg, a rule with priority 0 has
higher precedence than a rule with priority 1). DENY rules take
precedence over ALLOW rules having equal priority. *)
  source_ranges : string list option; [@option]
      (** If source ranges are specified, the firewall will apply only to
traffic that has source IP address in these ranges. These ranges must
be expressed in CIDR format. One or both of sourceRanges and
sourceTags may be set. If both properties are set, the firewall will
apply to traffic that has source IP address within sourceRanges OR the
source IP that belongs to a tag listed in the sourceTags property. The
connection does not need to match both properties for the firewall to
apply. IPv4 or IPv6 ranges are supported. For INGRESS traffic, one of
'source_ranges', 'source_tags' or 'source_service_accounts' is required. *)
  source_service_accounts : string list option; [@option]
      (** If source service accounts are specified, the firewall will apply only
to traffic originating from an instance with a service account in this
list. Source service accounts cannot be used to control traffic to an
instance's external IP address because service accounts are associated
with an instance, not an IP address. sourceRanges can be set at the
same time as sourceServiceAccounts. If both are set, the firewall will
apply to traffic that has source IP address within sourceRanges OR the
source IP belongs to an instance with service account listed in
sourceServiceAccount. The connection does not need to match both
properties for the firewall to apply. sourceServiceAccounts cannot be
used at the same time as sourceTags or targetTags. For INGRESS traffic,
one of 'source_ranges', 'source_tags' or 'source_service_accounts' is required. *)
  source_tags : string list option; [@option]
      (** If source tags are specified, the firewall will apply only to traffic
with source IP that belongs to a tag listed in source tags. Source
tags cannot be used to control traffic to an instance's external IP
address. Because tags are associated with an instance, not an IP
address. One or both of sourceRanges and sourceTags may be set. If
both properties are set, the firewall will apply to traffic that has
source IP address within sourceRanges OR the source IP that belongs to
a tag listed in the sourceTags property. The connection does not need
to match both properties for the firewall to apply. For INGRESS traffic,
one of 'source_ranges', 'source_tags' or 'source_service_accounts' is required. *)
  target_service_accounts : string list option; [@option]
      (** A list of service accounts indicating sets of instances located in the
network that may make network connections as specified in allowed[].
targetServiceAccounts cannot be used at the same time as targetTags or
sourceTags. If neither targetServiceAccounts nor targetTags are
specified, the firewall rule applies to all instances on the specified
network. *)
  target_tags : string list option; [@option]
      (** A list of instance tags indicating sets of instances located in the
network that may make network connections as specified in allowed[].
If no targetTags are specified, the firewall rule applies to all
instances on the specified network. *)
  allow : google_compute_firewall__allow list;
  deny : google_compute_firewall__deny list;
  log_config : google_compute_firewall__log_config list;
  timeouts : google_compute_firewall__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_firewall *)

let google_compute_firewall ?description ?disabled ?priority
    ?source_ranges ?source_service_accounts ?source_tags
    ?target_service_accounts ?target_tags ?timeouts ~name ~network
    ~allow ~deny ~log_config __resource_id =
  let __resource_type = "google_compute_firewall" in
  let __resource =
    {
      description;
      disabled;
      name;
      network;
      priority;
      source_ranges;
      source_service_accounts;
      source_tags;
      target_service_accounts;
      target_tags;
      allow;
      deny;
      log_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_firewall __resource);
  ()