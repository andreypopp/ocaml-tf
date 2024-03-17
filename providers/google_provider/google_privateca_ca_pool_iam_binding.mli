(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_privateca_ca_pool_iam_binding__condition
type google_privateca_ca_pool_iam_binding

val google_privateca_ca_pool_iam_binding :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ca_pool:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:google_privateca_ca_pool_iam_binding__condition list ->
  string ->
  unit
