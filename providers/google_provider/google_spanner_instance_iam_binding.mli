(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_spanner_instance_iam_binding__condition
type google_spanner_instance_iam_binding

val google_spanner_instance_iam_binding :
  ?id:string ->
  ?project:string ->
  instance:string ->
  members:string list ->
  role:string ->
  condition:google_spanner_instance_iam_binding__condition list ->
  string ->
  unit
