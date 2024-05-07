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

type version_configs

val version_configs : version:string prop -> unit -> version_configs

type google_dialogflow_cx_environment

val google_dialogflow_cx_environment :
  ?description:string prop ->
  ?id:string prop ->
  ?parent:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  version_configs:version_configs list ->
  unit ->
  google_dialogflow_cx_environment

val yojson_of_google_dialogflow_cx_environment :
  google_dialogflow_cx_environment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?parent:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  version_configs:version_configs list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?parent:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  version_configs:version_configs list ->
  string ->
  t Tf_core.resource
