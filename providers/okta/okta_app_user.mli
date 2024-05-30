(** Creates an Application User.
		This resource allows you to create and configure an Application User.
		~> **IMPORTANT:** When the 'okta_app_user' is retained, by setting 'retain_assignment' to 'true', it is no longer managed by Terraform after it is destroyed. To truly delete the assignment, you will need to remove it either through the Okta Console or API. This argument exists for the use case where the same user is assigned in multiple places in order to prevent a single destruction removing all of them. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_app_user

val okta_app_user :
  ?id:string prop ->
  ?password:string prop ->
  ?profile:string prop ->
  ?retain_assignment:bool prop ->
  ?username:string prop ->
  app_id:string prop ->
  user_id:string prop ->
  unit ->
  okta_app_user

val yojson_of_okta_app_user : okta_app_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_id : string prop;
  has_shared_username : bool prop;
  id : string prop;
  password : string prop;
  profile : string prop;
  retain_assignment : bool prop;
  user_id : string prop;
  username : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?password:string prop ->
  ?profile:string prop ->
  ?retain_assignment:bool prop ->
  ?username:string prop ->
  app_id:string prop ->
  user_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?password:string prop ->
  ?profile:string prop ->
  ?retain_assignment:bool prop ->
  ?username:string prop ->
  app_id:string prop ->
  user_id:string prop ->
  string ->
  t Tf_core.resource
