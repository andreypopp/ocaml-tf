(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type trace_configuration

val trace_configuration :
  ?vendor:string prop -> unit -> trace_configuration

type aws_apprunner_observability_configuration

val aws_apprunner_observability_configuration :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?trace_configuration:trace_configuration list ->
  observability_configuration_name:string prop ->
  unit ->
  aws_apprunner_observability_configuration

val yojson_of_aws_apprunner_observability_configuration :
  aws_apprunner_observability_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  latest : bool prop;
  observability_configuration_name : string prop;
  observability_configuration_revision : float prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?trace_configuration:trace_configuration list ->
  observability_configuration_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?trace_configuration:trace_configuration list ->
  observability_configuration_name:string prop ->
  string ->
  t Tf_core.resource
