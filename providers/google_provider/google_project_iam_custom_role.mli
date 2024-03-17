(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_project_iam_custom_role

type t = private {
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

val google_project_iam_custom_role :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?stage:string prop ->
  permissions:string prop list ->
  role_id:string prop ->
  title:string prop ->
  string ->
  t
