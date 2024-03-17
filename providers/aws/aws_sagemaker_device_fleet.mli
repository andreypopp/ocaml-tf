(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_device_fleet__output_config
type aws_sagemaker_device_fleet

type t = private {
  arn : string prop;
  description : string prop;
  device_fleet_name : string prop;
  enable_iot_role_alias : bool prop;
  id : string prop;
  iot_role_alias : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_sagemaker_device_fleet :
  ?description:string prop ->
  ?enable_iot_role_alias:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  device_fleet_name:string prop ->
  role_arn:string prop ->
  output_config:aws_sagemaker_device_fleet__output_config list ->
  string ->
  t
