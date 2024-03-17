(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_device__device
type aws_sagemaker_device

type t = private {
  agent_version : string prop;
  arn : string prop;
  device_fleet_name : string prop;
  id : string prop;
}

val aws_sagemaker_device :
  ?id:string prop ->
  device_fleet_name:string prop ->
  device:aws_sagemaker_device__device list ->
  string ->
  t
