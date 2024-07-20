(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_storage_managed_folder

val google_storage_managed_folder :
  ?id:string prop ->
  ?timeouts:timeouts ->
  bucket:string prop ->
  name:string prop ->
  unit ->
  google_storage_managed_folder

val yojson_of_google_storage_managed_folder :
  google_storage_managed_folder -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bucket : string prop;
  create_time : string prop;
  id : string prop;
  metageneration : string prop;
  name : string prop;
  self_link : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  bucket:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  bucket:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
