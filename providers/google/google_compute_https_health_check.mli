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

type google_compute_https_health_check

val google_compute_https_health_check :
  ?check_interval_sec:float prop ->
  ?description:string prop ->
  ?healthy_threshold:float prop ->
  ?host:string prop ->
  ?id:string prop ->
  ?port:float prop ->
  ?project:string prop ->
  ?request_path:string prop ->
  ?timeout_sec:float prop ->
  ?unhealthy_threshold:float prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  google_compute_https_health_check

val yojson_of_google_compute_https_health_check :
  google_compute_https_health_check -> json

(** RESOURCE REGISTRATION *)

type t = private {
  check_interval_sec : float prop;
  creation_timestamp : string prop;
  description : string prop;
  healthy_threshold : float prop;
  host : string prop;
  id : string prop;
  name : string prop;
  port : float prop;
  project : string prop;
  request_path : string prop;
  self_link : string prop;
  timeout_sec : float prop;
  unhealthy_threshold : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?check_interval_sec:float prop ->
  ?description:string prop ->
  ?healthy_threshold:float prop ->
  ?host:string prop ->
  ?id:string prop ->
  ?port:float prop ->
  ?project:string prop ->
  ?request_path:string prop ->
  ?timeout_sec:float prop ->
  ?unhealthy_threshold:float prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t
