(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloud_tasks_queue_iam_member__condition
type google_cloud_tasks_queue_iam_member

val google_cloud_tasks_queue_iam_member :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  member:string prop ->
  name:string prop ->
  role:string prop ->
  condition:google_cloud_tasks_queue_iam_member__condition list ->
  string ->
  unit
