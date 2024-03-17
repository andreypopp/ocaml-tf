(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_iap_tunnel_instance_iam_binding__condition
type google_iap_tunnel_instance_iam_binding

val google_iap_tunnel_instance_iam_binding :
  ?id:string ->
  ?project:string ->
  ?zone:string ->
  instance:string ->
  members:string list ->
  role:string ->
  condition:google_iap_tunnel_instance_iam_binding__condition list ->
  string ->
  unit
