(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cognito_user_group

type t = private {
  description : string prop;
  id : string prop;
  name : string prop;
  precedence : float prop;
  role_arn : string prop;
  user_pool_id : string prop;
}

val aws_cognito_user_group :
  ?description:string prop ->
  ?id:string prop ->
  ?precedence:float prop ->
  ?role_arn:string prop ->
  name:string prop ->
  user_pool_id:string prop ->
  string ->
  t
