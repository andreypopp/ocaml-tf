(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_glue_workflow

val aws_glue_workflow :
  ?default_run_properties:string prop Tf_core.assoc ->
  ?description:string prop ->
  ?id:string prop ->
  ?max_concurrent_runs:float prop ->
  ?name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  unit ->
  aws_glue_workflow

val yojson_of_aws_glue_workflow : aws_glue_workflow -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  default_run_properties : string Tf_core.assoc prop;
  description : string prop;
  id : string prop;
  max_concurrent_runs : float prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_run_properties:string prop Tf_core.assoc ->
  ?description:string prop ->
  ?id:string prop ->
  ?max_concurrent_runs:float prop ->
  ?name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  string ->
  t

val make :
  ?default_run_properties:string prop Tf_core.assoc ->
  ?description:string prop ->
  ?id:string prop ->
  ?max_concurrent_runs:float prop ->
  ?name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  string ->
  t Tf_core.resource
