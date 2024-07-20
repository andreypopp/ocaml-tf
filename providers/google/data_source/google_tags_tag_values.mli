(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type values = {
  create_time : string prop;  (** create_time *)
  description : string prop;  (** description *)
  name : string prop;  (** name *)
  namespaced_name : string prop;  (** namespaced_name *)
  parent : string prop;  (** parent *)
  short_name : string prop;  (** short_name *)
  update_time : string prop;  (** update_time *)
}

type google_tags_tag_values

val google_tags_tag_values :
  ?id:string prop ->
  parent:string prop ->
  unit ->
  google_tags_tag_values

val yojson_of_google_tags_tag_values : google_tags_tag_values -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  parent : string prop;
  values : values list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  parent:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  parent:string prop ->
  string ->
  t Tf_core.resource
