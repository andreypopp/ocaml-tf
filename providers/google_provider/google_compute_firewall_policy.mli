(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_firewall_policy__timeouts
type google_compute_firewall_policy

val google_compute_firewall_policy :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:google_compute_firewall_policy__timeouts ->
  parent:string prop ->
  short_name:string prop ->
  string ->
  unit
