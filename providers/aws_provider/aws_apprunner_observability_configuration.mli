(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apprunner_observability_configuration__trace_configuration
type aws_apprunner_observability_configuration

type t = private {
  arn : string prop;
  id : string prop;
  latest : bool prop;
  observability_configuration_name : string prop;
  observability_configuration_revision : float prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_apprunner_observability_configuration :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  observability_configuration_name:string prop ->
  trace_configuration:
    aws_apprunner_observability_configuration__trace_configuration
    list ->
  string ->
  t
