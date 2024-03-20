(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type composite_slot_type_setting__subslots

val composite_slot_type_setting__subslots :
  name:string prop ->
  slot_type_id:string prop ->
  unit ->
  composite_slot_type_setting__subslots

type composite_slot_type_setting

val composite_slot_type_setting :
  subslots:composite_slot_type_setting__subslots list ->
  unit ->
  composite_slot_type_setting

type external_source_setting__grammar_slot_type_setting__source

val external_source_setting__grammar_slot_type_setting__source :
  kms_key_arn:string prop ->
  s3_bucket_name:string prop ->
  s3_object_key:string prop ->
  unit ->
  external_source_setting__grammar_slot_type_setting__source

type external_source_setting__grammar_slot_type_setting

val external_source_setting__grammar_slot_type_setting :
  source:
    external_source_setting__grammar_slot_type_setting__source list ->
  unit ->
  external_source_setting__grammar_slot_type_setting

type external_source_setting

val external_source_setting :
  grammar_slot_type_setting:
    external_source_setting__grammar_slot_type_setting list ->
  unit ->
  external_source_setting

type slot_type_values__slot_type_value

val slot_type_values__slot_type_value :
  value:string prop -> unit -> slot_type_values__slot_type_value

type slot_type_values__synonyms

val slot_type_values__synonyms :
  value:string prop -> unit -> slot_type_values__synonyms

type slot_type_values

val slot_type_values :
  slot_type_value:slot_type_values__slot_type_value list ->
  synonyms:slot_type_values__synonyms list ->
  unit ->
  slot_type_values

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type value_selection_setting__advanced_recognition_setting

val value_selection_setting__advanced_recognition_setting :
  ?audio_recognition_setting:string prop ->
  unit ->
  value_selection_setting__advanced_recognition_setting

type value_selection_setting__regex_filter

val value_selection_setting__regex_filter :
  pattern:string prop ->
  unit ->
  value_selection_setting__regex_filter

type value_selection_setting

val value_selection_setting :
  resolution_strategy:string prop ->
  advanced_recognition_setting:
    value_selection_setting__advanced_recognition_setting list ->
  regex_filter:value_selection_setting__regex_filter list ->
  unit ->
  value_selection_setting

type aws_lexv2models_slot_type

val aws_lexv2models_slot_type :
  ?description:string prop ->
  ?parent_slot_type_signature:string prop ->
  ?timeouts:timeouts ->
  bot_id:string prop ->
  bot_version:string prop ->
  locale_id:string prop ->
  name:string prop ->
  composite_slot_type_setting:composite_slot_type_setting list ->
  external_source_setting:external_source_setting list ->
  slot_type_values:slot_type_values list ->
  value_selection_setting:value_selection_setting list ->
  unit ->
  aws_lexv2models_slot_type

val yojson_of_aws_lexv2models_slot_type :
  aws_lexv2models_slot_type -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bot_id : string prop;
  bot_version : string prop;
  description : string prop;
  id : string prop;
  locale_id : string prop;
  name : string prop;
  parent_slot_type_signature : string prop;
  slot_type_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?parent_slot_type_signature:string prop ->
  ?timeouts:timeouts ->
  bot_id:string prop ->
  bot_version:string prop ->
  locale_id:string prop ->
  name:string prop ->
  composite_slot_type_setting:composite_slot_type_setting list ->
  external_source_setting:external_source_setting list ->
  slot_type_values:slot_type_values list ->
  value_selection_setting:value_selection_setting list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?parent_slot_type_signature:string prop ->
  ?timeouts:timeouts ->
  bot_id:string prop ->
  bot_version:string prop ->
  locale_id:string prop ->
  name:string prop ->
  composite_slot_type_setting:composite_slot_type_setting list ->
  external_source_setting:external_source_setting list ->
  slot_type_values:slot_type_values list ->
  value_selection_setting:value_selection_setting list ->
  string ->
  t Tf_core.resource
