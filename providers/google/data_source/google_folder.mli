(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_folder

val google_folder :
  ?id:string prop ->
  ?lookup_organization:bool prop ->
  folder:string prop ->
  unit ->
  google_folder

val yojson_of_google_folder : google_folder -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  display_name : string prop;
  folder : string prop;
  folder_id : string prop;
  id : string prop;
  lifecycle_state : string prop;
  lookup_organization : bool prop;
  name : string prop;
  organization : string prop;
  parent : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?lookup_organization:bool prop ->
  folder:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?lookup_organization:bool prop ->
  folder:string prop ->
  string ->
  t Tf_core.resource
