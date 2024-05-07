(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type folders = {
  create_time : string prop;  (** create_time *)
  delete_time : string prop;  (** delete_time *)
  display_name : string prop;  (** display_name *)
  etag : string prop;  (** etag *)
  name : string prop;  (** name *)
  parent : string prop;  (** parent *)
  state : string prop;  (** state *)
  update_time : string prop;  (** update_time *)
}

type google_folders

val google_folders :
  ?id:string prop -> parent_id:string prop -> unit -> google_folders

val yojson_of_google_folders : google_folders -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  folders : folders list prop;
  id : string prop;
  parent_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  parent_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  parent_id:string prop ->
  string ->
  t Tf_core.resource
