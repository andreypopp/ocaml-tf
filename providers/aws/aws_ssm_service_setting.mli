(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssm_service_setting

type t = private {
  arn : string prop;
  id : string prop;
  setting_id : string prop;
  setting_value : string prop;
  status : string prop;
}

val aws_ssm_service_setting :
  ?id:string prop ->
  setting_id:string prop ->
  setting_value:string prop ->
  string ->
  t
