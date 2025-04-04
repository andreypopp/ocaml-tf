(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_active_folder

val google_active_folder :
  ?api_method:string prop ->
  ?id:string prop ->
  display_name:string prop ->
  parent:string prop ->
  unit ->
  google_active_folder

val yojson_of_google_active_folder : google_active_folder -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_method : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?api_method:string prop ->
  ?id:string prop ->
  display_name:string prop ->
  parent:string prop ->
  string ->
  t

val make :
  ?api_method:string prop ->
  ?id:string prop ->
  display_name:string prop ->
  parent:string prop ->
  string ->
  t Tf_core.resource
