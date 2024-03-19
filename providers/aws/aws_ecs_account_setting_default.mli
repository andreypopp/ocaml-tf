(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_ecs_account_setting_default

val aws_ecs_account_setting_default :
  ?id:string prop ->
  name:string prop ->
  value:string prop ->
  unit ->
  aws_ecs_account_setting_default

val yojson_of_aws_ecs_account_setting_default :
  aws_ecs_account_setting_default -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  principal_arn : string prop;
  value : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  value:string prop ->
  string ->
  t
