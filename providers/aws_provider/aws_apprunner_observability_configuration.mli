(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apprunner_observability_configuration__trace_configuration
type aws_apprunner_observability_configuration

val aws_apprunner_observability_configuration :
  ?tags:(string * string) list ->
  observability_configuration_name:string ->
  trace_configuration:
    aws_apprunner_observability_configuration__trace_configuration
    list ->
  string ->
  unit
