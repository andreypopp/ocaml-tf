(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_tags_tag_key

val google_tags_tag_key :
  parent:string prop ->
  short_name:string prop ->
  unit ->
  google_tags_tag_key

val yojson_of_google_tags_tag_key : google_tags_tag_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
