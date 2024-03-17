(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_auditmanager_framework__control_sets__controls
type aws_auditmanager_framework__control_sets
type aws_auditmanager_framework

val aws_auditmanager_framework :
  ?compliance_type:string ->
  ?description:string ->
  ?tags:(string * string) list ->
  name:string ->
  control_sets:aws_auditmanager_framework__control_sets list ->
  string ->
  unit
