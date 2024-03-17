(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_tpu_node__scheduling_config
type google_tpu_node__timeouts

type google_tpu_node__network_endpoints = {
  ip_address : string prop;  (** ip_address *)
  port : float prop;  (** port *)
}

type google_tpu_node

type t = private {
  accelerator_type : string prop;
  cidr_block : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  network : string prop;
  network_endpoints : google_tpu_node__network_endpoints list prop;
  project : string prop;
  service_account : string prop;
  tensorflow_version : string prop;
  terraform_labels : (string * string) list prop;
  use_service_networking : bool prop;
  zone : string prop;
}

val google_tpu_node :
  ?cidr_block:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?network:string prop ->
  ?project:string prop ->
  ?use_service_networking:bool prop ->
  ?zone:string prop ->
  ?timeouts:google_tpu_node__timeouts ->
  accelerator_type:string prop ->
  name:string prop ->
  tensorflow_version:string prop ->
  scheduling_config:google_tpu_node__scheduling_config list ->
  string ->
  t
