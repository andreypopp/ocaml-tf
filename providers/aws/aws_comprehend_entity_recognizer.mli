(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type input_data_config__annotations

val input_data_config__annotations :
  ?test_s3_uri:string prop ->
  s3_uri:string prop ->
  unit ->
  input_data_config__annotations

type input_data_config__augmented_manifests

val input_data_config__augmented_manifests :
  ?annotation_data_s3_uri:string prop ->
  ?document_type:string prop ->
  ?source_documents_s3_uri:string prop ->
  ?split:string prop ->
  attribute_names:string prop list ->
  s3_uri:string prop ->
  unit ->
  input_data_config__augmented_manifests

type input_data_config__documents

val input_data_config__documents :
  ?input_format:string prop ->
  ?test_s3_uri:string prop ->
  s3_uri:string prop ->
  unit ->
  input_data_config__documents

type input_data_config__entity_list

val input_data_config__entity_list :
  s3_uri:string prop -> unit -> input_data_config__entity_list

type input_data_config__entity_types

val input_data_config__entity_types :
  type_:string prop -> unit -> input_data_config__entity_types

type input_data_config

val input_data_config :
  ?data_format:string prop ->
  ?annotations:input_data_config__annotations list ->
  ?documents:input_data_config__documents list ->
  ?entity_list:input_data_config__entity_list list ->
  augmented_manifests:input_data_config__augmented_manifests list ->
  entity_types:input_data_config__entity_types list ->
  unit ->
  input_data_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type vpc_config

val vpc_config :
  security_group_ids:string prop list ->
  subnets:string prop list ->
  unit ->
  vpc_config

type aws_comprehend_entity_recognizer

val aws_comprehend_entity_recognizer :
  ?id:string prop ->
  ?model_kms_key_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?version_name:string prop ->
  ?version_name_prefix:string prop ->
  ?volume_kms_key_id:string prop ->
  ?timeouts:timeouts ->
  ?vpc_config:vpc_config list ->
  data_access_role_arn:string prop ->
  language_code:string prop ->
  name:string prop ->
  input_data_config:input_data_config list ->
  unit ->
  aws_comprehend_entity_recognizer

val yojson_of_aws_comprehend_entity_recognizer :
  aws_comprehend_entity_recognizer -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  data_access_role_arn : string prop;
  id : string prop;
  language_code : string prop;
  model_kms_key_id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version_name : string prop;
  version_name_prefix : string prop;
  volume_kms_key_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?model_kms_key_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?version_name:string prop ->
  ?version_name_prefix:string prop ->
  ?volume_kms_key_id:string prop ->
  ?timeouts:timeouts ->
  ?vpc_config:vpc_config list ->
  data_access_role_arn:string prop ->
  language_code:string prop ->
  name:string prop ->
  input_data_config:input_data_config list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?model_kms_key_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?version_name:string prop ->
  ?version_name_prefix:string prop ->
  ?volume_kms_key_id:string prop ->
  ?timeouts:timeouts ->
  ?vpc_config:vpc_config list ->
  data_access_role_arn:string prop ->
  language_code:string prop ->
  name:string prop ->
  input_data_config:input_data_config list ->
  string ->
  t Tf_core.resource
