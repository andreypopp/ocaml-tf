(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_workflow

val aws_glue_workflow :
  ?default_run_properties:(string * string prop) list ->
  ?description:string prop ->
  ?id:string prop ->
  ?max_concurrent_runs:float prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  string ->
  unit
