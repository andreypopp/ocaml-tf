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

type google_secure_source_manager_instance_iam_member

val google_secure_source_manager_instance_iam_member :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  instance_id:string prop ->
  member:string prop ->
  role:string prop ->
  condition:condition list ->
  unit ->
  google_secure_source_manager_instance_iam_member

val yojson_of_google_secure_source_manager_instance_iam_member :
  google_secure_source_manager_instance_iam_member -> json

(** RESOURCE REGISTRATION *)

type t = private {
  etag : string prop;
  id : string prop;
  instance_id : string prop;
  location : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  instance_id:string prop ->
  member:string prop ->
  role:string prop ->
  condition:condition list ->
  string ->
  t
