(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_device_fleet__output_config
type aws_sagemaker_device_fleet

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
  unit
