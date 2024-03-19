(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_apigee_endpoint_attachment

val google_apigee_endpoint_attachment :
  ?id:string prop ->
  ?timeouts:timeouts ->
  endpoint_attachment_id:string prop ->
  location:string prop ->
  org_id:string prop ->
  service_attachment:string prop ->
  unit ->
  google_apigee_endpoint_attachment

val yojson_of_google_apigee_endpoint_attachment :
  google_apigee_endpoint_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  connection_state : string prop;
  endpoint_attachment_id : string prop;
  host : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  org_id : string prop;
  service_attachment : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  endpoint_attachment_id:string prop ->
  location:string prop ->
  org_id:string prop ->
  service_attachment:string prop ->
  string ->
  t
