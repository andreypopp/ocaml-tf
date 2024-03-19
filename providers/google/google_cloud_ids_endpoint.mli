(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_cloud_ids_endpoint

val google_cloud_ids_endpoint :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?threat_exceptions:string prop list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  network:string prop ->
  severity:string prop ->
  unit ->
  google_cloud_ids_endpoint

val yojson_of_google_cloud_ids_endpoint :
  google_cloud_ids_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  description : string prop;
  endpoint_forwarding_rule : string prop;
  endpoint_ip : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  network : string prop;
  project : string prop;
  severity : string prop;
  threat_exceptions : string list prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?threat_exceptions:string prop list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  network:string prop ->
  severity:string prop ->
  string ->
  t
