(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type permissions = {
  api_disabled : bool prop;  (** api_disabled *)
  custom_support_level : string prop;  (** custom_support_level *)
  name : string prop;  (** name *)
  stage : string prop;  (** stage *)
  title : string prop;  (** title *)
}

type google_iam_testable_permissions

val google_iam_testable_permissions :
  ?custom_support_level:string prop ->
  ?id:string prop ->
  ?stages:string prop list ->
  full_resource_name:string prop ->
  unit ->
  google_iam_testable_permissions

val yojson_of_google_iam_testable_permissions :
  google_iam_testable_permissions -> json

(** RESOURCE REGISTRATION *)

type t = private {
  custom_support_level : string prop;
  full_resource_name : string prop;
  id : string prop;
  permissions : permissions list prop;
  stages : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?custom_support_level:string prop ->
  ?id:string prop ->
  ?stages:string prop list ->
  full_resource_name:string prop ->
  string ->
  t

val make :
  ?custom_support_level:string prop ->
  ?id:string prop ->
  ?stages:string prop list ->
  full_resource_name:string prop ->
  string ->
  t Tf_core.resource
