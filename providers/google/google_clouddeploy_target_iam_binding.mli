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

type google_clouddeploy_target_iam_binding

val google_clouddeploy_target_iam_binding :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  members:string prop list ->
  name:string prop ->
  role:string prop ->
  condition:condition list ->
  unit ->
  google_clouddeploy_target_iam_binding

val yojson_of_google_clouddeploy_target_iam_binding :
  google_clouddeploy_target_iam_binding -> json

(** RESOURCE REGISTRATION *)

type t = private {
  etag : string prop;
  id : string prop;
  location : string prop;
  members : string list prop;
  name : string prop;
  project : string prop;
  role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  members:string prop list ->
  name:string prop ->
  role:string prop ->
  condition:condition list ->
  string ->
  t
