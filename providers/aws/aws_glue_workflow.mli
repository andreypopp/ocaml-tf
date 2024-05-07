(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_glue_workflow

val aws_glue_workflow :
  ?default_run_properties:(string * string prop) list ->
  ?description:string prop ->
  ?id:string prop ->
  ?max_concurrent_runs:float prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  unit ->
  aws_glue_workflow

val yojson_of_aws_glue_workflow : aws_glue_workflow -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  default_run_properties : (string * string) list prop;
  description : string prop;
  id : string prop;
  max_concurrent_runs : float prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_run_properties:(string * string prop) list ->
  ?description:string prop ->
  ?id:string prop ->
  ?max_concurrent_runs:float prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  string ->
  t

val make :
  ?default_run_properties:(string * string prop) list ->
  ?description:string prop ->
  ?id:string prop ->
  ?max_concurrent_runs:float prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  string ->
  t Tf_core.resource
