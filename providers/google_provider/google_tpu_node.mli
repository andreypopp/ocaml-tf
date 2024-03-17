(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_tpu_node__scheduling_config
type google_tpu_node__timeouts

type google_tpu_node__network_endpoints = {
  ip_address : string;  (** ip_address *)
  port : float;  (** port *)
}
[@@deriving yojson_of]

type google_tpu_node

val google_tpu_node :
  ?description:string ->
  ?labels:(string * string) list ->
  ?use_service_networking:bool ->
  ?timeouts:google_tpu_node__timeouts ->
  accelerator_type:string ->
  name:string ->
  tensorflow_version:string ->
  scheduling_config:google_tpu_node__scheduling_config list ->
  string ->
  unit
