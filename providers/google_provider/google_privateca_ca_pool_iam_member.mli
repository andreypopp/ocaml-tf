(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_privateca_ca_pool_iam_member__condition
type google_privateca_ca_pool_iam_member

val google_privateca_ca_pool_iam_member :
  ?id:string ->
  ?location:string ->
  ?project:string ->
  ca_pool:string ->
  member:string ->
  role:string ->
  condition:google_privateca_ca_pool_iam_member__condition list ->
  string ->
  unit
