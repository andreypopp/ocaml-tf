(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_compute_lb_ip_ranges

val google_compute_lb_ip_ranges :
  ?id:string prop -> unit -> google_compute_lb_ip_ranges

val yojson_of_google_compute_lb_ip_ranges :
  google_compute_lb_ip_ranges -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  http_ssl_tcp_internal : string list prop;
  id : string prop;
  network : string list prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> string -> t
val make : ?id:string prop -> string -> t Tf_core.resource
