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

type google_monitoring_group

val google_monitoring_group :
  ?id:string prop ->
  ?is_cluster:bool prop ->
  ?parent_name:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  filter:string prop ->
  unit ->
  google_monitoring_group

val yojson_of_google_monitoring_group :
  google_monitoring_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  display_name : string prop;
  filter : string prop;
  id : string prop;
  is_cluster : bool prop;
  name : string prop;
  parent_name : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?is_cluster:bool prop ->
  ?parent_name:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  filter:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?is_cluster:bool prop ->
  ?parent_name:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  filter:string prop ->
  string ->
  t Tf_core.resource
