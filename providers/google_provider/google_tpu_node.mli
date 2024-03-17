(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_tpu_node__scheduling_config
type google_tpu_node__timeouts

type google_tpu_node__network_endpoints = {
  ip_address : string;  (** ip_address *)
  port : float;  (** port *)
}

type google_tpu_node

val google_tpu_node :
  ?cidr_block:string ->
  ?description:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?network:string ->
  ?project:string ->
  ?use_service_networking:bool ->
  ?zone:string ->
  ?timeouts:google_tpu_node__timeouts ->
  accelerator_type:string ->
  name:string ->
  tensorflow_version:string ->
  scheduling_config:google_tpu_node__scheduling_config list ->
  string ->
  unit
