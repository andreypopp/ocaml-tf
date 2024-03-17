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
  ?id:string prop ->
  ?model_kms_key_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?version_name:string prop ->
  ?version_name_prefix:string prop ->
  ?volume_kms_key_id:string prop ->
  ?timeouts:aws_comprehend_entity_recognizer__timeouts ->
  data_access_role_arn:string prop ->
  language_code:string prop ->
  name:string prop ->
  input_data_config:
    aws_comprehend_entity_recognizer__input_data_config list ->
  vpc_config:aws_comprehend_entity_recognizer__vpc_config list ->
  string ->
  unit
