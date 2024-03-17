(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ecs_account_setting_default

type t = private {
  id : string prop;
  name : string prop;
  principal_arn : string prop;
  value : string prop;
}

val aws_ecs_account_setting_default :
  ?id:string prop ->
  name:string prop ->
  value:string prop ->
  string ->
  t
