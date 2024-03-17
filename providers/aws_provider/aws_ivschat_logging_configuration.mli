(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ivschat_logging_configuration__destination_configuration__cloudwatch_logs

type aws_ivschat_logging_configuration__destination_configuration__firehose

type aws_ivschat_logging_configuration__destination_configuration__s3
type aws_ivschat_logging_configuration__destination_configuration
type aws_ivschat_logging_configuration__timeouts
type aws_ivschat_logging_configuration

val aws_ivschat_logging_configuration :
  ?id:string ->
  ?name:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_ivschat_logging_configuration__timeouts ->
  destination_configuration:
    aws_ivschat_logging_configuration__destination_configuration list ->
  string ->
  unit
