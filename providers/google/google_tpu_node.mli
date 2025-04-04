(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type network_endpoints = {
  ip_address : string prop;  (** ip_address *)
  port : float prop;  (** port *)
}

type scheduling_config

val scheduling_config :
  preemptible:bool prop -> unit -> scheduling_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_tpu_node

val google_tpu_node :
  ?cidr_block:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?network:string prop ->
  ?project:string prop ->
  ?use_service_networking:bool prop ->
  ?zone:string prop ->
  ?scheduling_config:scheduling_config list ->
  ?timeouts:timeouts ->
  accelerator_type:string prop ->
  name:string prop ->
  tensorflow_version:string prop ->
  unit ->
  google_tpu_node

val yojson_of_google_tpu_node : google_tpu_node -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accelerator_type : string prop;
  cidr_block : string prop;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  network : string prop;
  network_endpoints : network_endpoints list prop;
  project : string prop;
  service_account : string prop;
  tensorflow_version : string prop;
  terraform_labels : string Tf_core.assoc prop;
  use_service_networking : bool prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?cidr_block:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?network:string prop ->
  ?project:string prop ->
  ?use_service_networking:bool prop ->
  ?zone:string prop ->
  ?scheduling_config:scheduling_config list ->
  ?timeouts:timeouts ->
  accelerator_type:string prop ->
  name:string prop ->
  tensorflow_version:string prop ->
  string ->
  t

val make :
  ?cidr_block:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?network:string prop ->
  ?project:string prop ->
  ?use_service_networking:bool prop ->
  ?zone:string prop ->
  ?scheduling_config:scheduling_config list ->
  ?timeouts:timeouts ->
  accelerator_type:string prop ->
  name:string prop ->
  tensorflow_version:string prop ->
  string ->
  t Tf_core.resource
