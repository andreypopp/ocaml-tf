(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_target_grpc_proxy__timeouts
type google_compute_target_grpc_proxy

type t = private {
  creation_timestamp : string prop;
  description : string prop;
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  self_link_with_id : string prop;
  url_map : string prop;
  validate_for_proxyless : bool prop;
}

val google_compute_target_grpc_proxy :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?url_map:string prop ->
  ?validate_for_proxyless:bool prop ->
  ?timeouts:google_compute_target_grpc_proxy__timeouts ->
  name:string prop ->
  string ->
  t
