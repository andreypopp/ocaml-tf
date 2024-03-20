(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_apigee_instance

val google_apigee_instance :
  ?consumer_accept_list:string prop list ->
  ?description:string prop ->
  ?disk_encryption_key_name:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?ip_range:string prop ->
  ?peering_cidr_range:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  org_id:string prop ->
  unit ->
  google_apigee_instance

val yojson_of_google_apigee_instance : google_apigee_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  consumer_accept_list : string list prop;
  description : string prop;
  disk_encryption_key_name : string prop;
  display_name : string prop;
  host : string prop;
  id : string prop;
  ip_range : string prop;
  location : string prop;
  name : string prop;
  org_id : string prop;
  peering_cidr_range : string prop;
  port : string prop;
  service_attachment : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?consumer_accept_list:string prop list ->
  ?description:string prop ->
  ?disk_encryption_key_name:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?ip_range:string prop ->
  ?peering_cidr_range:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  org_id:string prop ->
  string ->
  t

val make :
  ?consumer_accept_list:string prop list ->
  ?description:string prop ->
  ?disk_encryption_key_name:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?ip_range:string prop ->
  ?peering_cidr_range:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  org_id:string prop ->
  string ->
  t Tf_core.resource
