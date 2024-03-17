(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloud9_environment_membership

type t = private {
  environment_id : string prop;
  id : string prop;
  permissions : string prop;
  user_arn : string prop;
  user_id : string prop;
}

val aws_cloud9_environment_membership :
  ?id:string prop ->
  environment_id:string prop ->
  permissions:string prop ->
  user_arn:string prop ->
  string ->
  t
