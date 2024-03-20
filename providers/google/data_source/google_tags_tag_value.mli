(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_tags_tag_value

val google_tags_tag_value :
  parent:string prop ->
  short_name:string prop ->
  unit ->
  google_tags_tag_value

val yojson_of_google_tags_tag_value : google_tags_tag_value -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  namespaced_name : string prop;
  parent : string prop;
  short_name : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  parent:string prop ->
  short_name:string prop ->
  string ->
  t

val make :
  parent:string prop ->
  short_name:string prop ->
  string ->
  t Tf_core.resource
