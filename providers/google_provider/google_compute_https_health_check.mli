(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_https_health_check__timeouts
type google_compute_https_health_check

val google_compute_https_health_check :
  ?check_interval_sec:float ->
  ?description:string ->
  ?healthy_threshold:float ->
  ?host:string ->
  ?port:float ->
  ?request_path:string ->
  ?timeout_sec:float ->
  ?unhealthy_threshold:float ->
  ?timeouts:google_compute_https_health_check__timeouts ->
  name:string ->
  string ->
  unit
