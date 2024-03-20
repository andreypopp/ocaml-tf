(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type condition

val condition :
  ?description:string prop ->
  expression:string prop ->
  title:string prop ->
  unit ->
  condition

type google_dataplex_task_iam_binding

val google_dataplex_task_iam_binding :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  lake:string prop ->
  members:string prop list ->
  role:string prop ->
  task_id:string prop ->
  condition:condition list ->
  unit ->
  google_dataplex_task_iam_binding

val yojson_of_google_dataplex_task_iam_binding :
  google_dataplex_task_iam_binding -> json

(** RESOURCE REGISTRATION *)

type t = private {
  etag : string prop;
  id : string prop;
  lake : string prop;
  location : string prop;
  members : string list prop;
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
  members:string prop list ->
  role:string prop ->
  task_id:string prop ->
  condition:condition list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  lake:string prop ->
  members:string prop list ->
  role:string prop ->
  task_id:string prop ->
  condition:condition list ->
  string ->
  t Tf_core.resource
