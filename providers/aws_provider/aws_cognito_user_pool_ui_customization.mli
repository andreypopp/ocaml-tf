(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cognito_user_pool_ui_customization

type t = private {
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

val aws_cognito_user_pool_ui_customization :
  ?client_id:string prop ->
  ?css:string prop ->
  ?id:string prop ->
  ?image_file:string prop ->
  user_pool_id:string prop ->
  string ->
  t
