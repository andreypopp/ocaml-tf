(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_serverlessapplicationrepository_cloudformation_stack__timeouts

type aws_serverlessapplicationrepository_cloudformation_stack

val aws_serverlessapplicationrepository_cloudformation_stack :
  ?tags:(string * string) list ->
  ?timeouts:
    aws_serverlessapplicationrepository_cloudformation_stack__timeouts ->
  application_id:string ->
  capabilities:string list ->
  name:string ->
  string ->
  unit
