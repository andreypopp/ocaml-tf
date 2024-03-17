(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_quicksight_user

type t = private {
  arn : string prop;
  aws_account_id : string prop;
  email : string prop;
  iam_arn : string prop;
  id : string prop;
  identity_type : string prop;
  namespace : string prop;
  session_name : string prop;
  user_name : string prop;
  user_role : string prop;
}

val aws_quicksight_user :
  ?aws_account_id:string prop ->
  ?iam_arn:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?session_name:string prop ->
  ?user_name:string prop ->
  email:string prop ->
  identity_type:string prop ->
  user_role:string prop ->
  string ->
  t
