(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_http_health_check__timeouts
type google_compute_http_health_check

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

val google_compute_http_health_check :
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
  ?timeouts:google_compute_http_health_check__timeouts ->
  name:string prop ->
  string ->
  t
