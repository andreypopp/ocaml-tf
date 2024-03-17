(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_public_delegated_prefix__timeouts
type google_compute_public_delegated_prefix

type t = private {
  description : string prop;
  id : string prop;
  ip_cidr_range : string prop;
  is_live_migration : bool prop;
  name : string prop;
  parent_prefix : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
}

val google_compute_public_delegated_prefix :
  ?description:string prop ->
  ?id:string prop ->
  ?is_live_migration:bool prop ->
  ?project:string prop ->
  ?timeouts:google_compute_public_delegated_prefix__timeouts ->
  ip_cidr_range:string prop ->
  name:string prop ->
  parent_prefix:string prop ->
  region:string prop ->
  string ->
  t
