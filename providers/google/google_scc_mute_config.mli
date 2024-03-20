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

type google_scc_mute_config

val google_scc_mute_config :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  filter:string prop ->
  mute_config_id:string prop ->
  parent:string prop ->
  unit ->
  google_scc_mute_config

val yojson_of_google_scc_mute_config : google_scc_mute_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  description : string prop;
  filter : string prop;
  id : string prop;
  most_recent_editor : string prop;
  mute_config_id : string prop;
  name : string prop;
  parent : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  filter:string prop ->
  mute_config_id:string prop ->
  parent:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  filter:string prop ->
  mute_config_id:string prop ->
  parent:string prop ->
  string ->
  t Tf_core.resource
