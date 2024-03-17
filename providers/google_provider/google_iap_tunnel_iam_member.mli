(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_iap_tunnel_iam_member__condition
type google_iap_tunnel_iam_member

val google_iap_tunnel_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  member:string prop ->
  role:string prop ->
  condition:google_iap_tunnel_iam_member__condition list ->
  string ->
  unit
