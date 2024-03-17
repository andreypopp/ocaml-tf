(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_comprehend_entity_recognizer__input_data_config__annotations

type aws_comprehend_entity_recognizer__input_data_config__augmented_manifests

type aws_comprehend_entity_recognizer__input_data_config__documents
type aws_comprehend_entity_recognizer__input_data_config__entity_list
type aws_comprehend_entity_recognizer__input_data_config__entity_types
type aws_comprehend_entity_recognizer__input_data_config
type aws_comprehend_entity_recognizer__timeouts
type aws_comprehend_entity_recognizer__vpc_config
type aws_comprehend_entity_recognizer

val aws_comprehend_entity_recognizer :
  ?id:string ->
  ?model_kms_key_id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?version_name:string ->
  ?version_name_prefix:string ->
  ?volume_kms_key_id:string ->
  ?timeouts:aws_comprehend_entity_recognizer__timeouts ->
  data_access_role_arn:string ->
  language_code:string ->
  name:string ->
  input_data_config:
    aws_comprehend_entity_recognizer__input_data_config list ->
  vpc_config:aws_comprehend_entity_recognizer__vpc_config list ->
  string ->
  unit
