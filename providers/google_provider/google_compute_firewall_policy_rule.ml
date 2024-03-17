(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_firewall_policy_rule__match__layer4_configs = {
  ip_protocol : string;
      (** The IP protocol to which this rule applies. The protocol type is required when creating a firewall rule. This value can either be one of the following well known protocol strings (`tcp`, `udp`, `icmp`, `esp`, `ah`, `ipip`, `sctp`), or the IP protocol number. *)
  ports : string list option; [@option]
      (** An optional list of ports to which this rule applies. This field is only applicable for UDP or TCP protocol. Each entry must be either an integer or a range. If not specified, this rule applies to connections through any port. Example inputs include: ``. *)
}
[@@deriving yojson_of]
(** Pairs of IP protocols and ports that the rule should match. *)

type google_compute_firewall_policy_rule__match = {
  dest_address_groups : string list option; [@option]
      (** Address groups which should be matched against the traffic destination. Maximum number of destination address groups is 10. Destination address groups is only supported in Egress rules. *)
  dest_fqdns : string list option; [@option]
      (** Domain names that will be used to match against the resolved domain name of destination of traffic. Can only be specified if DIRECTION is egress. *)
  dest_ip_ranges : string list option; [@option]
      (** CIDR IP address range. Maximum number of destination CIDR IP ranges allowed is 256. *)
  dest_region_codes : string list option; [@option]
      (** The Unicode country codes whose IP addresses will be used to match against the source of traffic. Can only be specified if DIRECTION is egress. *)
  dest_threat_intelligences : string list option; [@option]
      (** Name of the Google Cloud Threat Intelligence list. *)
  src_address_groups : string list option; [@option]
      (** Address groups which should be matched against the traffic source. Maximum number of source address groups is 10. Source address groups is only supported in Ingress rules. *)
  src_fqdns : string list option; [@option]
      (** Domain names that will be used to match against the resolved domain name of source of traffic. Can only be specified if DIRECTION is ingress. *)
  src_ip_ranges : string list option; [@option]
      (** CIDR IP address range. Maximum number of source CIDR IP ranges allowed is 256. *)
  src_region_codes : string list option; [@option]
      (** The Unicode country codes whose IP addresses will be used to match against the source of traffic. Can only be specified if DIRECTION is ingress. *)
  src_threat_intelligences : string list option; [@option]
      (** Name of the Google Cloud Threat Intelligence list. *)
  layer4_configs :
    google_compute_firewall_policy_rule__match__layer4_configs list;
}
[@@deriving yojson_of]
(** A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced. *)

type google_compute_firewall_policy_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_firewall_policy_rule__timeouts *)

type google_compute_firewall_policy_rule = {
  action : string;
      (** The Action to perform when the client connection triggers the rule. Valid actions are allow, deny and goto_next. *)
  description : string option; [@option]
      (** An optional description for this resource. *)
  direction : string;
      (** The direction in which this rule applies. Possible values: INGRESS, EGRESS *)
  disabled : bool option; [@option]
      (** Denotes whether the firewall policy rule is disabled. When set to true, the firewall policy rule is not enforced and traffic behaves as if it did not exist. If this is unspecified, the firewall policy rule will be enabled. *)
  enable_logging : bool option; [@option]
      (** Denotes whether to enable logging for a particular rule. If logging is enabled, logs will be exported to the configured export destination in Stackdriver. Logs may be exported to BigQuery or Pub/Sub. Note: you cannot enable logging on goto_next rules. *)
  firewall_policy : string;
      (** The firewall policy of the resource. *)
  priority : float;
      (** An integer indicating the priority of a rule in the list. The priority must be a positive value between 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest prority. *)
  target_resources : string list option; [@option]
      (** A list of network resource URLs to which this rule applies. This field allows you to control which network's VMs get this rule. If this field is left blank, all VMs within the organization will receive the rule. *)
  target_service_accounts : string list option; [@option]
      (** A list of service accounts indicating the sets of instances that are applied with this rule. *)
  match_ : google_compute_firewall_policy_rule__match list;
  timeouts : google_compute_firewall_policy_rule__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_firewall_policy_rule *)

let google_compute_firewall_policy_rule ?description ?disabled
    ?enable_logging ?target_resources ?target_service_accounts
    ?timeouts ~action ~direction ~firewall_policy ~priority ~match_
    __resource_id =
  let __resource_type = "google_compute_firewall_policy_rule" in
  let __resource =
    {
      action;
      description;
      direction;
      disabled;
      enable_logging;
      firewall_policy;
      priority;
      target_resources;
      target_service_accounts;
      match_;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_firewall_policy_rule __resource);
  ()
