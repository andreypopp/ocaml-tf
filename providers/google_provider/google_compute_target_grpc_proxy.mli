(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_target_grpc_proxy__timeouts
type google_compute_target_grpc_proxy

val google_compute_target_grpc_proxy :
  ?description:string ->
  ?url_map:string ->
  ?validate_for_proxyless:bool ->
  ?timeouts:google_compute_target_grpc_proxy__timeouts ->
  name:string ->
  string ->
  unit
