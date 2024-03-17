(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dns_managed_zone_iam_member__condition
type google_dns_managed_zone_iam_member

val google_dns_managed_zone_iam_member :
  ?id:string ->
  ?project:string ->
  managed_zone:string ->
  member:string ->
  role:string ->
  condition:google_dns_managed_zone_iam_member__condition list ->
  string ->
  unit
