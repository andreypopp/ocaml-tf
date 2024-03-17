(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dns_managed_zone_iam_binding__condition
type google_dns_managed_zone_iam_binding

val google_dns_managed_zone_iam_binding :
  ?id:string prop ->
  ?project:string prop ->
  managed_zone:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:google_dns_managed_zone_iam_binding__condition list ->
  string ->
  unit
