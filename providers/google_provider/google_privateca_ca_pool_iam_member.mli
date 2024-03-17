(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_privateca_ca_pool_iam_member__condition
type google_privateca_ca_pool_iam_member

val google_privateca_ca_pool_iam_member :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ca_pool:string prop ->
  member:string prop ->
  role:string prop ->
  condition:google_privateca_ca_pool_iam_member__condition list ->
  string ->
  unit
