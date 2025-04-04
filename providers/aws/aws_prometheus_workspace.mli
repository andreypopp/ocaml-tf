(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type logging_configuration

val logging_configuration :
  log_group_arn:string prop -> unit -> logging_configuration

type aws_prometheus_workspace

val aws_prometheus_workspace :
  ?alias:string prop ->
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?logging_configuration:logging_configuration list ->
  unit ->
  aws_prometheus_workspace

val yojson_of_aws_prometheus_workspace :
  aws_prometheus_workspace -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  alias : string prop;
  arn : string prop;
  id : string prop;
  kms_key_arn : string prop;
  prometheus_endpoint : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?alias:string prop ->
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?logging_configuration:logging_configuration list ->
  string ->
  t

val make :
  ?alias:string prop ->
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?logging_configuration:logging_configuration list ->
  string ->
  t Tf_core.resource
