(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataplex_task_iam_member__condition
type google_dataplex_task_iam_member

val google_dataplex_task_iam_member :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  lake:string prop ->
  member:string prop ->
  role:string prop ->
  task_id:string prop ->
  condition:google_dataplex_task_iam_member__condition list ->
  string ->
  unit
