(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_pubsub_schema_iam_binding__condition
type google_pubsub_schema_iam_binding

val google_pubsub_schema_iam_binding :
  ?id:string ->
  ?project:string ->
  members:string list ->
  role:string ->
  schema:string ->
  condition:google_pubsub_schema_iam_binding__condition list ->
  string ->
  unit
