(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_auditmanager_assessment_delegation

val aws_auditmanager_assessment_delegation :
  ?comment:string prop ->
  assessment_id:string prop ->
  control_set_id:string prop ->
  role_arn:string prop ->
  role_type:string prop ->
  string ->
  unit
