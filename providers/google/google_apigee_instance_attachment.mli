(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_apigee_instance_attachment

val google_apigee_instance_attachment :
  ?id:string prop ->
  ?timeouts:timeouts ->
  environment:string prop ->
  instance_id:string prop ->
  unit ->
  google_apigee_instance_attachment

val yojson_of_google_apigee_instance_attachment :
  google_apigee_instance_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  environment : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  environment:string prop ->
  instance_id:string prop ->
  string ->
  t
