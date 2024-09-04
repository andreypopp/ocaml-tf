(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_prometheus_workspace

val aws_prometheus_workspace :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  workspace_id:string prop ->
  unit ->
  aws_prometheus_workspace

val yojson_of_aws_prometheus_workspace :
  aws_prometheus_workspace -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  alias : string prop;
  arn : string prop;
  created_date : string prop;
  id : string prop;
  kms_key_arn : string prop;
  prometheus_endpoint : string prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
  workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  workspace_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  workspace_id:string prop ->
  string ->
  t Tf_core.resource
