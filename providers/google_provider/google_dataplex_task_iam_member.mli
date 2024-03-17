(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataplex_task_iam_member__condition
type google_dataplex_task_iam_member

val google_dataplex_task_iam_member :
  ?id:string ->
  ?location:string ->
  ?project:string ->
  lake:string ->
  member:string ->
  role:string ->
  task_id:string ->
  condition:google_dataplex_task_iam_member__condition list ->
  string ->
  unit
