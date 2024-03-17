(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_privateca_ca_pool_iam_binding__condition
type google_privateca_ca_pool_iam_binding

val google_privateca_ca_pool_iam_binding :
  ca_pool:string ->
  members:string list ->
  role:string ->
  condition:google_privateca_ca_pool_iam_binding__condition list ->
  string ->
  unit
