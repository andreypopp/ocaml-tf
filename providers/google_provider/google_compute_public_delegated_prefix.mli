(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_public_delegated_prefix__timeouts
type google_compute_public_delegated_prefix

val google_compute_public_delegated_prefix :
  ?description:string ->
  ?is_live_migration:bool ->
  ?timeouts:google_compute_public_delegated_prefix__timeouts ->
  ip_cidr_range:string ->
  name:string ->
  parent_prefix:string ->
  region:string ->
  string ->
  unit
