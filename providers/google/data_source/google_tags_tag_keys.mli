(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type keys = {
  create_time : string prop;  (** create_time *)
  description : string prop;  (** description *)
  name : string prop;  (** name *)
  namespaced_name : string prop;  (** namespaced_name *)
  parent : string prop;  (** parent *)
  purpose : string prop;  (** purpose *)
  purpose_data : (string * string prop) list;  (** purpose_data *)
  short_name : string prop;  (** short_name *)
  update_time : string prop;  (** update_time *)
}

type google_tags_tag_keys

val google_tags_tag_keys :
  ?id:string prop ->
  parent:string prop ->
  unit ->
  google_tags_tag_keys

val yojson_of_google_tags_tag_keys : google_tags_tag_keys -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  keys : keys list prop;
  parent : string prop;
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
