(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type control_mapping_sources__source_keyword

val control_mapping_sources__source_keyword :
  unit -> control_mapping_sources__source_keyword

type control_mapping_sources

val control_mapping_sources :
  ?source_keyword:control_mapping_sources__source_keyword list ->
  unit ->
  control_mapping_sources

type aws_auditmanager_control

val aws_auditmanager_control :
  name:string prop ->
  type_:string prop ->
  control_mapping_sources:control_mapping_sources list ->
  unit ->
  aws_auditmanager_control

val yojson_of_aws_auditmanager_control :
  aws_auditmanager_control -> json

(** RESOURCE REGISTRATION *)

type t = private {
  action_plan_instructions : string prop;
  action_plan_title : string prop;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  testing_information : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  name:string prop ->
  type_:string prop ->
  control_mapping_sources:control_mapping_sources list ->
  string ->
  t

val make :
  name:string prop ->
  type_:string prop ->
  control_mapping_sources:control_mapping_sources list ->
  string ->
  t Tf_core.resource
