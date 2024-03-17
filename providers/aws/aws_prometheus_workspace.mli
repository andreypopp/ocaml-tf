(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_prometheus_workspace__logging_configuration
type aws_prometheus_workspace

type t = private {
  alias : string prop;
  arn : string prop;
  id : string prop;
  kms_key_arn : string prop;
  prometheus_endpoint : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_prometheus_workspace :
  ?alias:string prop ->
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  logging_configuration:
    aws_prometheus_workspace__logging_configuration list ->
  string ->
  t
