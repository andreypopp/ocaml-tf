(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_auditmanager_control__control_mapping_sources__source_keyword
type aws_auditmanager_control__control_mapping_sources
type aws_auditmanager_control

type t = private {
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

val aws_auditmanager_control :
  ?action_plan_instructions:string prop ->
  ?action_plan_title:string prop ->
  ?description:string prop ->
  ?tags:(string * string prop) list ->
  ?testing_information:string prop ->
  name:string prop ->
  control_mapping_sources:
    aws_auditmanager_control__control_mapping_sources list ->
  string ->
  t
