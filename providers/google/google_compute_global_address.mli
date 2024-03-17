(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_global_address__timeouts
type google_compute_global_address

type t = private {
  address : string prop;
  address_type : string prop;
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  ip_version : string prop;
  name : string prop;
  network : string prop;
  prefix_length : float prop;
  project : string prop;
  purpose : string prop;
  self_link : string prop;
}

val google_compute_global_address :
  ?address:string prop ->
  ?address_type:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?ip_version:string prop ->
  ?network:string prop ->
  ?prefix_length:float prop ->
  ?project:string prop ->
  ?purpose:string prop ->
  ?timeouts:google_compute_global_address__timeouts ->
  name:string prop ->
  string ->
  t
