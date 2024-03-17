(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_device_fleet__output_config
type aws_sagemaker_device_fleet

val aws_sagemaker_device_fleet :
  ?description:string ->
  ?enable_iot_role_alias:bool ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  device_fleet_name:string ->
  role_arn:string ->
  output_config:aws_sagemaker_device_fleet__output_config list ->
  string ->
  unit
