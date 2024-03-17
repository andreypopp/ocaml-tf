(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_job__command
type aws_glue_job__execution_property
type aws_glue_job__notification_property
type aws_glue_job

val aws_glue_job :
  ?connections:string prop list ->
  ?default_arguments:(string * string prop) list ->
  ?description:string prop ->
  ?execution_class:string prop ->
  ?glue_version:string prop ->
  ?id:string prop ->
  ?max_capacity:float prop ->
  ?max_retries:float prop ->
  ?non_overridable_arguments:(string * string prop) list ->
  ?number_of_workers:float prop ->
  ?security_configuration:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeout:float prop ->
  ?worker_type:string prop ->
  name:string prop ->
  role_arn:string prop ->
  command:aws_glue_job__command list ->
  execution_property:aws_glue_job__execution_property list ->
  notification_property:aws_glue_job__notification_property list ->
  string ->
  unit
