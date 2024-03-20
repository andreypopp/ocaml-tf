(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type device

val device :
  ?description:string prop ->
  ?iot_thing_name:string prop ->
  device_name:string prop ->
  unit ->
  device

type aws_sagemaker_device

val aws_sagemaker_device :
  ?id:string prop ->
  device_fleet_name:string prop ->
  device:device list ->
  unit ->
  aws_sagemaker_device

val yojson_of_aws_sagemaker_device : aws_sagemaker_device -> json

(** RESOURCE REGISTRATION *)

type t = private {
  agent_version : string prop;
  arn : string prop;
  device_fleet_name : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  device_fleet_name:string prop ->
  device:device list ->
  string ->
  t

val make :
  ?id:string prop ->
  device_fleet_name:string prop ->
  device:device list ->
  string ->
  t Tf_core.resource
