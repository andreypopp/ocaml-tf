(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cognito_user_pool_ui_customization

val aws_cognito_user_pool_ui_customization :
  ?client_id:string prop ->
  ?css:string prop ->
  ?id:string prop ->
  ?image_file:string prop ->
  user_pool_id:string prop ->
  unit ->
  aws_cognito_user_pool_ui_customization

val yojson_of_aws_cognito_user_pool_ui_customization :
  aws_cognito_user_pool_ui_customization -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  client_id : string prop;
  creation_date : string prop;
  css : string prop;
  css_version : string prop;
  id : string prop;
  image_file : string prop;
  image_url : string prop;
  last_modified_date : string prop;
  user_pool_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?client_id:string prop ->
  ?css:string prop ->
  ?id:string prop ->
  ?image_file:string prop ->
  user_pool_id:string prop ->
  string ->
  t

val make :
  ?client_id:string prop ->
  ?css:string prop ->
  ?id:string prop ->
  ?image_file:string prop ->
  user_pool_id:string prop ->
  string ->
  t Tf_core.resource
