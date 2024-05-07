(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ssm_service_setting

val aws_ssm_service_setting :
  ?id:string prop ->
  setting_id:string prop ->
  setting_value:string prop ->
  unit ->
  aws_ssm_service_setting

val yojson_of_aws_ssm_service_setting :
  aws_ssm_service_setting -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  setting_id : string prop;
  setting_value : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  setting_id:string prop ->
  setting_value:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  setting_id:string prop ->
  setting_value:string prop ->
  string ->
  t Tf_core.resource
