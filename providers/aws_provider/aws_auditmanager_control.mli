(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_auditmanager_control__control_mapping_sources__source_keyword
type aws_auditmanager_control__control_mapping_sources
type aws_auditmanager_control

val aws_auditmanager_control :
  ?action_plan_instructions:string ->
  ?action_plan_title:string ->
  ?description:string ->
  ?tags:(string * string) list ->
  ?testing_information:string ->
  name:string ->
  control_mapping_sources:
    aws_auditmanager_control__control_mapping_sources list ->
  string ->
  unit
