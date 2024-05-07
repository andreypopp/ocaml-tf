(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_project_iam_custom_role

val google_project_iam_custom_role :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?stage:string prop ->
  permissions:string prop list ->
  role_id:string prop ->
  title:string prop ->
  unit ->
  google_project_iam_custom_role

val yojson_of_google_project_iam_custom_role :
  google_project_iam_custom_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  deleted : bool prop;
  description : string prop;
  id : string prop;
  name : string prop;
  permissions : string list prop;
  project : string prop;
  role_id : string prop;
  stage : string prop;
  title : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?stage:string prop ->
  permissions:string prop list ->
  role_id:string prop ->
  title:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?stage:string prop ->
  permissions:string prop list ->
  role_id:string prop ->
  title:string prop ->
  string ->
  t Tf_core.resource
