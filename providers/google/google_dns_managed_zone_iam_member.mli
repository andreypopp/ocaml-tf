(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dns_managed_zone_iam_member__condition
type google_dns_managed_zone_iam_member

type t = private {
  etag : string prop;
  id : string prop;
  managed_zone : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
}

val google_dns_managed_zone_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  managed_zone:string prop ->
  member:string prop ->
  role:string prop ->
  condition:google_dns_managed_zone_iam_member__condition list ->
  string ->
  t
