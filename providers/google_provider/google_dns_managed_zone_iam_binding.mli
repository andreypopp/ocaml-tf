(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dns_managed_zone_iam_binding__condition
type google_dns_managed_zone_iam_binding

val google_dns_managed_zone_iam_binding :
  ?id:string ->
  ?project:string ->
  managed_zone:string ->
  members:string list ->
  role:string ->
  condition:google_dns_managed_zone_iam_binding__condition list ->
  string ->
  unit
