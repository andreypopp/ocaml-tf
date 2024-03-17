(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_job__command
type aws_glue_job__execution_property
type aws_glue_job__notification_property
type aws_glue_job

val aws_glue_job :
  ?connections:string list ->
  ?default_arguments:(string * string) list ->
  ?description:string ->
  ?execution_class:string ->
  ?max_retries:float ->
  ?non_overridable_arguments:(string * string) list ->
  ?number_of_workers:float ->
  ?security_configuration:string ->
  ?tags:(string * string) list ->
  ?worker_type:string ->
  name:string ->
  role_arn:string ->
  command:aws_glue_job__command list ->
  execution_property:aws_glue_job__execution_property list ->
  notification_property:aws_glue_job__notification_property list ->
  string ->
  unit
