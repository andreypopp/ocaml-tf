(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_devicefarm_project

val aws_devicefarm_project :
  ?default_job_timeout_minutes:float prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  aws_devicefarm_project

val yojson_of_aws_devicefarm_project : aws_devicefarm_project -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  default_job_timeout_minutes : float prop;
  id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_job_timeout_minutes:float prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  string ->
  t

val make :
  ?default_job_timeout_minutes:float prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  string ->
  t Tf_core.resource
