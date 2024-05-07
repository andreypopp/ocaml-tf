(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type uptime_check_ips = {
  ip_address : string prop;  (** ip_address *)
  location : string prop;  (** location *)
  region : string prop;  (** region *)
}

type google_monitoring_uptime_check_ips

val google_monitoring_uptime_check_ips :
  ?id:string prop -> unit -> google_monitoring_uptime_check_ips

val yojson_of_google_monitoring_uptime_check_ips :
  google_monitoring_uptime_check_ips -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  uptime_check_ips : uptime_check_ips list prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> string -> t
val make : ?id:string prop -> string -> t Tf_core.resource
