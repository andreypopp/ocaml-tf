(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lexv2models_slot_type__composite_slot_type_setting__subslots
type aws_lexv2models_slot_type__composite_slot_type_setting

type aws_lexv2models_slot_type__external_source_setting__grammar_slot_type_setting__source

type aws_lexv2models_slot_type__external_source_setting__grammar_slot_type_setting

type aws_lexv2models_slot_type__external_source_setting
type aws_lexv2models_slot_type__slot_type_values__slot_type_value
type aws_lexv2models_slot_type__slot_type_values__synonyms
type aws_lexv2models_slot_type__slot_type_values
type aws_lexv2models_slot_type__timeouts

type aws_lexv2models_slot_type__value_selection_setting__advanced_recognition_setting

type aws_lexv2models_slot_type__value_selection_setting__regex_filter
type aws_lexv2models_slot_type__value_selection_setting
type aws_lexv2models_slot_type

val aws_lexv2models_slot_type :
  ?description:string prop ->
  ?parent_slot_type_signature:string prop ->
  ?timeouts:aws_lexv2models_slot_type__timeouts ->
  bot_id:string prop ->
  bot_version:string prop ->
  locale_id:string prop ->
  name:string prop ->
  composite_slot_type_setting:
    aws_lexv2models_slot_type__composite_slot_type_setting list ->
  external_source_setting:
    aws_lexv2models_slot_type__external_source_setting list ->
  slot_type_values:aws_lexv2models_slot_type__slot_type_values list ->
  value_selection_setting:
    aws_lexv2models_slot_type__value_selection_setting list ->
  string ->
  unit
