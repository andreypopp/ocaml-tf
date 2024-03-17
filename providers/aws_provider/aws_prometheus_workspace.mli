(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_prometheus_workspace__logging_configuration
type aws_prometheus_workspace

val aws_prometheus_workspace :
  ?alias:string ->
  ?id:string ->
  ?kms_key_arn:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  logging_configuration:
    aws_prometheus_workspace__logging_configuration list ->
  string ->
  unit
