(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_app_engine_firewall_rule

val google_app_engine_firewall_rule :
  ?description:string prop ->
  ?id:string prop ->
  ?priority:float prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  action:string prop ->
  source_range:string prop ->
  unit ->
  google_app_engine_firewall_rule

val yojson_of_google_app_engine_firewall_rule :
  google_app_engine_firewall_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  action : string prop;
  description : string prop;
  id : string prop;
  priority : float prop;
  project : string prop;
  source_range : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?priority:float prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  action:string prop ->
  source_range:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?priority:float prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  action:string prop ->
  source_range:string prop ->
  string ->
  t Tf_core.resource
