(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type match__layer4_configs

val match__layer4_configs :
  ?ports:string prop list ->
  ip_protocol:string prop ->
  unit ->
  match__layer4_configs

type match__src_secure_tags

val match__src_secure_tags :
  name:string prop -> unit -> match__src_secure_tags

type match_

val match_ :
  ?dest_address_groups:string prop list ->
  ?dest_fqdns:string prop list ->
  ?dest_ip_ranges:string prop list ->
  ?dest_region_codes:string prop list ->
  ?dest_threat_intelligences:string prop list ->
  ?src_address_groups:string prop list ->
  ?src_fqdns:string prop list ->
  ?src_ip_ranges:string prop list ->
  ?src_region_codes:string prop list ->
  ?src_threat_intelligences:string prop list ->
  ?src_secure_tags:match__src_secure_tags list ->
  layer4_configs:match__layer4_configs list ->
  unit ->
  match_

type target_secure_tags

val target_secure_tags :
  name:string prop -> unit -> target_secure_tags

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_network_firewall_policy_rule

val google_compute_network_firewall_policy_rule :
  ?description:string prop ->
  ?disabled:bool prop ->
  ?enable_logging:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?rule_name:string prop ->
  ?security_profile_group:string prop ->
  ?target_service_accounts:string prop list ->
  ?tls_inspect:bool prop ->
  ?target_secure_tags:target_secure_tags list ->
  ?timeouts:timeouts ->
  action:string prop ->
  direction:string prop ->
  firewall_policy:string prop ->
  priority:float prop ->
  match_:match_ list ->
  unit ->
  google_compute_network_firewall_policy_rule

val yojson_of_google_compute_network_firewall_policy_rule :
  google_compute_network_firewall_policy_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  security_profile_group : string prop;
  target_service_accounts : string list prop;
  tls_inspect : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?disabled:bool prop ->
  ?enable_logging:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?rule_name:string prop ->
  ?security_profile_group:string prop ->
  ?target_service_accounts:string prop list ->
  ?tls_inspect:bool prop ->
  ?target_secure_tags:target_secure_tags list ->
  ?timeouts:timeouts ->
  action:string prop ->
  direction:string prop ->
  firewall_policy:string prop ->
  priority:float prop ->
  match_:match_ list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?disabled:bool prop ->
  ?enable_logging:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?rule_name:string prop ->
  ?security_profile_group:string prop ->
  ?target_service_accounts:string prop list ->
  ?tls_inspect:bool prop ->
  ?target_secure_tags:target_secure_tags list ->
  ?timeouts:timeouts ->
  action:string prop ->
  direction:string prop ->
  firewall_policy:string prop ->
  priority:float prop ->
  match_:match_ list ->
  string ->
  t Tf_core.resource
