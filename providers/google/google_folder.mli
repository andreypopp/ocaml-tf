(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_folder

val google_folder :
  ?id:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  parent:string prop ->
  unit ->
  google_folder

val yojson_of_google_folder : google_folder -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  display_name : string prop;
  folder_id : string prop;
  id : string prop;
  lifecycle_state : string prop;
  name : string prop;
  parent : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  parent:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  parent:string prop ->
  string ->
  t Tf_core.resource
