(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type allow

val allow :
  ?ports:string prop list -> protocol:string prop -> unit -> allow

type deny

val deny :
  ?ports:string prop list -> protocol:string prop -> unit -> deny

type log_config

val log_config : metadata:string prop -> unit -> log_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_firewall

val google_compute_firewall :
  ?description:string prop ->
  ?destination_ranges:string prop list ->
  ?direction:string prop ->
  ?disabled:bool prop ->
  ?enable_logging:bool prop ->
  ?id:string prop ->
  ?priority:float prop ->
  ?project:string prop ->
  ?source_ranges:string prop list ->
  ?source_service_accounts:string prop list ->
  ?source_tags:string prop list ->
  ?target_service_accounts:string prop list ->
  ?target_tags:string prop list ->
  ?log_config:log_config list ->
  ?timeouts:timeouts ->
  name:string prop ->
  network:string prop ->
  allow:allow list ->
  deny:deny list ->
  unit ->
  google_compute_firewall

val yojson_of_google_compute_firewall :
  google_compute_firewall -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  creation_timestamp : string prop;
  description : string prop;
  destination_ranges : string list prop;
  direction : string prop;
  disabled : bool prop;
  enable_logging : bool prop;
  id : string prop;
  name : string prop;
  network : string prop;
  priority : float prop;
  project : string prop;
  self_link : string prop;
  source_ranges : string list prop;
  source_service_accounts : string list prop;
  source_tags : string list prop;
  target_service_accounts : string list prop;
  target_tags : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?destination_ranges:string prop list ->
  ?direction:string prop ->
  ?disabled:bool prop ->
  ?enable_logging:bool prop ->
  ?id:string prop ->
  ?priority:float prop ->
  ?project:string prop ->
  ?source_ranges:string prop list ->
  ?source_service_accounts:string prop list ->
  ?source_tags:string prop list ->
  ?target_service_accounts:string prop list ->
  ?target_tags:string prop list ->
  ?log_config:log_config list ->
  ?timeouts:timeouts ->
  name:string prop ->
  network:string prop ->
  allow:allow list ->
  deny:deny list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?destination_ranges:string prop list ->
  ?direction:string prop ->
  ?disabled:bool prop ->
  ?enable_logging:bool prop ->
  ?id:string prop ->
  ?priority:float prop ->
  ?project:string prop ->
  ?source_ranges:string prop list ->
  ?source_service_accounts:string prop list ->
  ?source_tags:string prop list ->
  ?target_service_accounts:string prop list ->
  ?target_tags:string prop list ->
  ?log_config:log_config list ->
  ?timeouts:timeouts ->
  name:string prop ->
  network:string prop ->
  allow:allow list ->
  deny:deny list ->
  string ->
  t Tf_core.resource
