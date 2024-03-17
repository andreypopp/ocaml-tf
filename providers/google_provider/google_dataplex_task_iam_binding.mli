(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataplex_task_iam_binding__condition
type google_dataplex_task_iam_binding

val google_dataplex_task_iam_binding :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  lake:string prop ->
  members:string prop list ->
  role:string prop ->
  task_id:string prop ->
  condition:google_dataplex_task_iam_binding__condition list ->
  string ->
  unit
