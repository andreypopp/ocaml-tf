(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type local_data__local_datas

val local_data__local_datas :
  ?rrdatas:string prop list ->
  ?ttl:float prop ->
  name:string prop ->
  type_:string prop ->
  unit ->
  local_data__local_datas

type local_data

val local_data :
  local_datas:local_data__local_datas list -> unit -> local_data

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_dns_response_policy_rule

val google_dns_response_policy_rule :
  ?id:string prop ->
  ?project:string prop ->
  ?local_data:local_data list ->
  ?timeouts:timeouts ->
  dns_name:string prop ->
  response_policy:string prop ->
  rule_name:string prop ->
  unit ->
  google_dns_response_policy_rule

val yojson_of_google_dns_response_policy_rule :
  google_dns_response_policy_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  dns_name : string prop;
  id : string prop;
  project : string prop;
  response_policy : string prop;
  rule_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?local_data:local_data list ->
  ?timeouts:timeouts ->
  dns_name:string prop ->
  response_policy:string prop ->
  rule_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?local_data:local_data list ->
  ?timeouts:timeouts ->
  dns_name:string prop ->
  response_policy:string prop ->
  rule_name:string prop ->
  string ->
  t Tf_core.resource
