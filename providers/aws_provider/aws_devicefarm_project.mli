(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_devicefarm_project

val aws_devicefarm_project :
  ?default_job_timeout_minutes:float ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  name:string ->
  string ->
  unit
