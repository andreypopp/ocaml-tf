(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type match__layer4_configs = {
  ip_protocol : string prop;
      (** The IP protocol to which this rule applies. The protocol type is required when creating a firewall rule. This value can either be one of the following well known protocol strings (`tcp`, `udp`, `icmp`, `esp`, `ah`, `ipip`, `sctp`), or the IP protocol number. *)
  ports : string prop list option; [@option]
      (** An optional list of ports to which this rule applies. This field is only applicable for UDP or TCP protocol. Each entry must be either an integer or a range. If not specified, this rule applies to connections through any port. Example inputs include: ``. *)
}
[@@deriving yojson_of]
(** Pairs of IP protocols and ports that the rule should match. *)

type match__src_secure_tags = {
  name : string prop;
      (** Name of the secure tag, created with TagManager's TagValue API. @pattern tagValues/[0-9]+ *)
}
[@@deriving yojson_of]
(** List of secure tag values, which should be matched at the source of the traffic. For INGRESS rule, if all the <code>srcSecureTag</code> are INEFFECTIVE, and there is no <code>srcIpRange</code>, this rule will be ignored. Maximum number of source tag values allowed is 256. *)

type match_ = {
  dest_address_groups : string prop list option; [@option]
      (** Address groups which should be matched against the traffic destination. Maximum number of destination address groups is 10. Destination address groups is only supported in Egress rules. *)
  dest_fqdns : string prop list option; [@option]
      (** Domain names that will be used to match against the resolved domain name of destination of traffic. Can only be specified if DIRECTION is egress. *)
  dest_ip_ranges : string prop list option; [@option]
      (** CIDR IP address range. Maximum number of destination CIDR IP ranges allowed is 5000. *)
  dest_region_codes : string prop list option; [@option]
      (** The Unicode country codes whose IP addresses will be used to match against the source of traffic. Can only be specified if DIRECTION is egress. *)
  dest_threat_intelligences : string prop list option; [@option]
      (** Name of the Google Cloud Threat Intelligence list. *)
  src_address_groups : string prop list option; [@option]
      (** Address groups which should be matched against the traffic source. Maximum number of source address groups is 10. Source address groups is only supported in Ingress rules. *)
  src_fqdns : string prop list option; [@option]
      (** Domain names that will be used to match against the resolved domain name of source of traffic. Can only be specified if DIRECTION is ingress. *)
  src_ip_ranges : string prop list option; [@option]
      (** CIDR IP address range. Maximum number of source CIDR IP ranges allowed is 5000. *)
  src_region_codes : string prop list option; [@option]
      (** The Unicode country codes whose IP addresses will be used to match against the source of traffic. Can only be specified if DIRECTION is ingress. *)
  src_threat_intelligences : string prop list option; [@option]
      (** Name of the Google Cloud Threat Intelligence list. *)
  layer4_configs : match__layer4_configs list;
  src_secure_tags : match__src_secure_tags list;
}
[@@deriving yojson_of]
(** A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced. *)

type target_secure_tags = {
  name : string prop;
      (** Name of the secure tag, created with TagManager's TagValue API. @pattern tagValues/[0-9]+ *)
}
[@@deriving yojson_of]
(** A list of secure tags that controls which instances the firewall rule applies to. If <code>targetSecureTag</code> are specified, then the firewall rule applies only to instances in the VPC network that have one of those EFFECTIVE secure tags, if all the target_secure_tag are in INEFFECTIVE state, then this rule will be ignored. <code>targetSecureTag</code> may not be set at the same time as <code>targetServiceAccounts</code>. If neither <code>targetServiceAccounts</code> nor <code>targetSecureTag</code> are specified, the firewall rule applies to all instances on the specified network. Maximum number of target label tags allowed is 256. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_network_firewall_policy_rule = {
  action : string prop;
      (** The Action to perform when the client connection triggers the rule. Valid actions are allow, deny and goto_next. *)
  description : string prop option; [@option]
      (** An optional description for this resource. *)
  direction : string prop;
      (** The direction in which this rule applies. Possible values: INGRESS, EGRESS *)
  disabled : bool prop option; [@option]
      (** Denotes whether the firewall policy rule is disabled. When set to true, the firewall policy rule is not enforced and traffic behaves as if it did not exist. If this is unspecified, the firewall policy rule will be enabled. *)
  enable_logging : bool prop option; [@option]
      (** Denotes whether to enable logging for a particular rule. If logging is enabled, logs will be exported to the configured export destination in Stackdriver. Logs may be exported to BigQuery or Pub/Sub. Note: you cannot enable logging on goto_next rules. *)
  firewall_policy : string prop;
      (** The firewall policy of the resource. *)
  id : string prop option; [@option]  (** id *)
  priority : float prop;
      (** An integer indicating the priority of a rule in the list. The priority must be a positive value between 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest prority. *)
  project : string prop option; [@option]
      (** The project for the resource *)
  rule_name : string prop option; [@option]
      (** An optional name for the rule. This field is not a unique identifier and can be updated. *)
  target_service_accounts : string prop list option; [@option]
      (** A list of service accounts indicating the sets of instances that are applied with this rule. *)
  match_ : match_ list;
  target_secure_tags : target_secure_tags list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_network_firewall_policy_rule *)

let match__layer4_configs ?ports ~ip_protocol () :
    match__layer4_configs =
  { ip_protocol; ports }

let match__src_secure_tags ~name () : match__src_secure_tags =
  { name }

let match_ ?dest_address_groups ?dest_fqdns ?dest_ip_ranges
    ?dest_region_codes ?dest_threat_intelligences ?src_address_groups
    ?src_fqdns ?src_ip_ranges ?src_region_codes
    ?src_threat_intelligences ~layer4_configs ~src_secure_tags () :
    match_ =
  {
    dest_address_groups;
    dest_fqdns;
    dest_ip_ranges;
    dest_region_codes;
    dest_threat_intelligences;
    src_address_groups;
    src_fqdns;
    src_ip_ranges;
    src_region_codes;
    src_threat_intelligences;
    layer4_configs;
    src_secure_tags;
  }

let target_secure_tags ~name () : target_secure_tags = { name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_network_firewall_policy_rule ?description
    ?disabled ?enable_logging ?id ?project ?rule_name
    ?target_service_accounts ?timeouts ~action ~direction
    ~firewall_policy ~priority ~match_ ~target_secure_tags () :
    google_compute_network_firewall_policy_rule =
  {
    action;
    description;
    direction;
    disabled;
    enable_logging;
    firewall_policy;
    id;
    priority;
    project;
    rule_name;
    target_service_accounts;
    match_;
    target_secure_tags;
    timeouts;
  }

type t = {
  action : string prop;
  description : string prop;
  direction : string prop;
  disabled : bool prop;
  enable_logging : bool prop;
  firewall_policy : string prop;
  id : string prop;
  kind : string prop;
  priority : float prop;
  project : string prop;
  rule_name : string prop;
  rule_tuple_count : float prop;
  target_service_accounts : string list prop;
}

let make ?description ?disabled ?enable_logging ?id ?project
    ?rule_name ?target_service_accounts ?timeouts ~action ~direction
    ~firewall_policy ~priority ~match_ ~target_secure_tags __id =
  let __type = "google_compute_network_firewall_policy_rule" in
  let __attrs =
    ({
       action = Prop.computed __type __id "action";
       description = Prop.computed __type __id "description";
       direction = Prop.computed __type __id "direction";
       disabled = Prop.computed __type __id "disabled";
       enable_logging = Prop.computed __type __id "enable_logging";
       firewall_policy = Prop.computed __type __id "firewall_policy";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       priority = Prop.computed __type __id "priority";
       project = Prop.computed __type __id "project";
       rule_name = Prop.computed __type __id "rule_name";
       rule_tuple_count =
         Prop.computed __type __id "rule_tuple_count";
       target_service_accounts =
         Prop.computed __type __id "target_service_accounts";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_network_firewall_policy_rule
        (google_compute_network_firewall_policy_rule ?description
           ?disabled ?enable_logging ?id ?project ?rule_name
           ?target_service_accounts ?timeouts ~action ~direction
           ~firewall_policy ~priority ~match_ ~target_secure_tags ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?disabled ?enable_logging ?id
    ?project ?rule_name ?target_service_accounts ?timeouts ~action
    ~direction ~firewall_policy ~priority ~match_ ~target_secure_tags
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?disabled ?enable_logging ?id ?project
      ?rule_name ?target_service_accounts ?timeouts ~action
      ~direction ~firewall_policy ~priority ~match_
      ~target_secure_tags __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
