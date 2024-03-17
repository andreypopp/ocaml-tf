(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_workflow

val aws_glue_workflow :
  ?default_run_properties:(string * string) list ->
  ?description:string ->
  ?max_concurrent_runs:float ->
  ?name:string ->
  ?tags:(string * string) list ->
  string ->
  unit
