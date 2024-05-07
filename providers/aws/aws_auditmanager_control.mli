(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type control_mapping_sources__source_keyword

val control_mapping_sources__source_keyword :
  keyword_input_type:string prop ->
  keyword_value:string prop ->
  unit ->
  control_mapping_sources__source_keyword

type control_mapping_sources

val control_mapping_sources :
  ?source_description:string prop ->
  ?source_frequency:string prop ->
  ?troubleshooting_text:string prop ->
  ?source_keyword:control_mapping_sources__source_keyword list ->
  source_name:string prop ->
  source_set_up_option:string prop ->
  source_type:string prop ->
  unit ->
  control_mapping_sources

type aws_auditmanager_control

val aws_auditmanager_control :
  ?action_plan_instructions:string prop ->
  ?action_plan_title:string prop ->
  ?description:string prop ->
  ?tags:(string * string prop) list ->
  ?testing_information:string prop ->
  name:string prop ->
  control_mapping_sources:control_mapping_sources list ->
  unit ->
  aws_auditmanager_control

val yojson_of_aws_auditmanager_control :
  aws_auditmanager_control -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  action_plan_instructions : string prop;
  action_plan_title : string prop;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  testing_information : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?action_plan_instructions:string prop ->
  ?action_plan_title:string prop ->
  ?description:string prop ->
  ?tags:(string * string prop) list ->
  ?testing_information:string prop ->
  name:string prop ->
  control_mapping_sources:control_mapping_sources list ->
  string ->
  t

val make :
  ?action_plan_instructions:string prop ->
  ?action_plan_title:string prop ->
  ?description:string prop ->
  ?tags:(string * string prop) list ->
  ?testing_information:string prop ->
  name:string prop ->
  control_mapping_sources:control_mapping_sources list ->
  string ->
  t Tf_core.resource
