(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type output_config

val output_config :
  ?kms_key_id:string prop ->
  s3_output_location:string prop ->
  unit ->
  output_config

type aws_sagemaker_device_fleet

val aws_sagemaker_device_fleet :
  ?description:string prop ->
  ?enable_iot_role_alias:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  device_fleet_name:string prop ->
  role_arn:string prop ->
  output_config:output_config list ->
  unit ->
  aws_sagemaker_device_fleet

val yojson_of_aws_sagemaker_device_fleet :
  aws_sagemaker_device_fleet -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?enable_iot_role_alias:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  device_fleet_name:string prop ->
  role_arn:string prop ->
  output_config:output_config list ->
  string ->
  t
