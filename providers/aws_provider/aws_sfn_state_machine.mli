(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sfn_state_machine__logging_configuration
type aws_sfn_state_machine__timeouts
type aws_sfn_state_machine__tracing_configuration
type aws_sfn_state_machine

val aws_sfn_state_machine :
  ?publish:bool ->
  ?tags:(string * string) list ->
  ?type_:string ->
  ?timeouts:aws_sfn_state_machine__timeouts ->
  definition:string ->
  role_arn:string ->
  logging_configuration:
    aws_sfn_state_machine__logging_configuration list ->
  tracing_configuration:
    aws_sfn_state_machine__tracing_configuration list ->
  string ->
  unit
