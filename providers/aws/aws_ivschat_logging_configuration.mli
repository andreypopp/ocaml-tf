(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ivschat_logging_configuration__destination_configuration__cloudwatch_logs

type aws_ivschat_logging_configuration__destination_configuration__firehose

type aws_ivschat_logging_configuration__destination_configuration__s3
type aws_ivschat_logging_configuration__destination_configuration
type aws_ivschat_logging_configuration__timeouts
type aws_ivschat_logging_configuration

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_ivschat_logging_configuration :
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_ivschat_logging_configuration__timeouts ->
  destination_configuration:
    aws_ivschat_logging_configuration__destination_configuration list ->
  string ->
  t
