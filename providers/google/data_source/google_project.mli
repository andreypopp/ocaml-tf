(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_project

val google_project :
  ?id:string prop ->
  ?project_id:string prop ->
  unit ->
  google_project

val yojson_of_google_project : google_project -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  auto_create_network : bool prop;
  billing_account : string prop;
  effective_labels : string Tf_core.assoc prop;
  folder_id : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  number : string prop;
  org_id : string prop;
  project_id : string prop;
  skip_delete : bool prop;
  terraform_labels : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project_id:string prop ->
  string ->
  t Tf_core.resource
