(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_public_delegated_prefix__timeouts
type google_compute_public_delegated_prefix

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
  unit
