(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type project_team = {
  project_number : string prop;  (** project_number *)
  team : string prop;  (** team *)
}

[@@@deriving.end]

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_storage_object_access_control

val google_storage_object_access_control :
  ?id:string prop ->
  ?timeouts:timeouts ->
  bucket:string prop ->
  entity:string prop ->
  object_:string prop ->
  role:string prop ->
  unit ->
  google_storage_object_access_control

val yojson_of_google_storage_object_access_control :
  google_storage_object_access_control -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bucket : string prop;
  domain : string prop;
  email : string prop;
  entity : string prop;
  entity_id : string prop;
  generation : float prop;
  id : string prop;
  object_ : string prop;
  project_team : project_team list prop;
  role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  bucket:string prop ->
  entity:string prop ->
  object_:string prop ->
  role:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  bucket:string prop ->
  entity:string prop ->
  object_:string prop ->
  role:string prop ->
  string ->
  t Tf_core.resource
