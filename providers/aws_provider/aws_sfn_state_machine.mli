(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sfn_state_machine__logging_configuration
type aws_sfn_state_machine__timeouts
type aws_sfn_state_machine__tracing_configuration
type aws_sfn_state_machine

val aws_sfn_state_machine :
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?publish:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  ?timeouts:aws_sfn_state_machine__timeouts ->
  definition:string prop ->
  role_arn:string prop ->
  logging_configuration:
    aws_sfn_state_machine__logging_configuration list ->
  tracing_configuration:
    aws_sfn_state_machine__tracing_configuration list ->
  string ->
  unit
