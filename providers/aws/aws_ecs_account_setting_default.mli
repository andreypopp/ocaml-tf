(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
  tf_name : string;
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

val make :
  ?id:string prop ->
  name:string prop ->
  value:string prop ->
  string ->
  t Tf_core.resource
