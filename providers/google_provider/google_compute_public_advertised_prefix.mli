(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_public_advertised_prefix__timeouts
type google_compute_public_advertised_prefix

type t = private {
  description : string prop;
  dns_verification_ip : string prop;
  id : string prop;
  ip_cidr_range : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
}

val google_compute_public_advertised_prefix :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_compute_public_advertised_prefix__timeouts ->
  dns_verification_ip:string prop ->
  ip_cidr_range:string prop ->
  name:string prop ->
  string ->
  t
