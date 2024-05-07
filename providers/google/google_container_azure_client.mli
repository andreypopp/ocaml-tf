(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_container_azure_client

val google_container_azure_client :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  application_id:string prop ->
  location:string prop ->
  name:string prop ->
  tenant_id:string prop ->
  unit ->
  google_container_azure_client

val yojson_of_google_container_azure_client :
  google_container_azure_client -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  application_id : string prop;
  certificate : string prop;
  create_time : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  tenant_id : string prop;
  uid : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  application_id:string prop ->
  location:string prop ->
  name:string prop ->
  tenant_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  application_id:string prop ->
  location:string prop ->
  name:string prop ->
  tenant_id:string prop ->
  string ->
  t Tf_core.resource
