(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_external_vpn_gateway__interface
type google_compute_external_vpn_gateway__timeouts
type google_compute_external_vpn_gateway

type t = private {
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  label_fingerprint : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  redundancy_type : string prop;
  self_link : string prop;
  terraform_labels : (string * string) list prop;
}

val google_compute_external_vpn_gateway :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?redundancy_type:string prop ->
  ?timeouts:google_compute_external_vpn_gateway__timeouts ->
  name:string prop ->
  interface:google_compute_external_vpn_gateway__interface list ->
  string ->
  t
