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

type google_apigee_environment_iam_binding

val google_apigee_environment_iam_binding :
  ?id:string prop ->
  env_id:string prop ->
  members:string prop list ->
  org_id:string prop ->
  role:string prop ->
  condition:condition list ->
  unit ->
  google_apigee_environment_iam_binding

val yojson_of_google_apigee_environment_iam_binding :
  google_apigee_environment_iam_binding -> json

(** RESOURCE REGISTRATION *)

type t = private {
  env_id : string prop;
  etag : string prop;
  id : string prop;
  members : string list prop;
  org_id : string prop;
  role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  env_id:string prop ->
  members:string prop list ->
  org_id:string prop ->
  role:string prop ->
  condition:condition list ->
  string ->
  t
