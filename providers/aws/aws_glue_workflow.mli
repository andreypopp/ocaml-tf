(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_workflow

type t = private {
  arn : string prop;
  default_run_properties : (string * string) list prop;
  description : string prop;
  id : string prop;
  max_concurrent_runs : float prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_glue_workflow :
  ?default_run_properties:(string * string prop) list ->
  ?description:string prop ->
  ?id:string prop ->
  ?max_concurrent_runs:float prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  string ->
  t
