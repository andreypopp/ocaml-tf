(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type condition

val condition :
  ?description:string prop ->
  expression:string prop ->
  title:string prop ->
  unit ->
  condition

type google_dataplex_task_iam_member

val google_dataplex_task_iam_member :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  lake:string prop ->
  member:string prop ->
  role:string prop ->
  task_id:string prop ->
  condition:condition list ->
  unit ->
  google_dataplex_task_iam_member

val yojson_of_google_dataplex_task_iam_member :
  google_dataplex_task_iam_member -> json

(** RESOURCE REGISTRATION *)

type t = private {
  etag : string prop;
  id : string prop;
  lake : string prop;
  location : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
  task_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  lake:string prop ->
  member:string prop ->
  role:string prop ->
  task_id:string prop ->
  condition:condition list ->
  string ->
  t
