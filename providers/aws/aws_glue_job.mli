(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type command

val command :
  ?name:string prop ->
  ?python_version:string prop ->
  ?runtime:string prop ->
  script_location:string prop ->
  unit ->
  command

type execution_property

val execution_property :
  ?max_concurrent_runs:float prop -> unit -> execution_property

type notification_property

val notification_property :
  ?notify_delay_after:float prop -> unit -> notification_property

type aws_glue_job

val aws_glue_job :
  ?connections:string prop list ->
  ?default_arguments:string prop Tf_core.assoc ->
  ?description:string prop ->
  ?execution_class:string prop ->
  ?glue_version:string prop ->
  ?id:string prop ->
  ?maintenance_window:string prop ->
  ?max_capacity:float prop ->
  ?max_retries:float prop ->
  ?non_overridable_arguments:string prop Tf_core.assoc ->
  ?number_of_workers:float prop ->
  ?security_configuration:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeout:float prop ->
  ?worker_type:string prop ->
  ?execution_property:execution_property list ->
  ?notification_property:notification_property list ->
  name:string prop ->
  role_arn:string prop ->
  command:command list ->
  unit ->
  aws_glue_job

val yojson_of_aws_glue_job : aws_glue_job -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  connections : string list prop;
  default_arguments : string Tf_core.assoc prop;
  description : string prop;
  execution_class : string prop;
  glue_version : string prop;
  id : string prop;
  maintenance_window : string prop;
  max_capacity : float prop;
  max_retries : float prop;
  name : string prop;
  non_overridable_arguments : string Tf_core.assoc prop;
  number_of_workers : float prop;
  role_arn : string prop;
  security_configuration : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  timeout : float prop;
  worker_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?connections:string prop list ->
  ?default_arguments:string prop Tf_core.assoc ->
  ?description:string prop ->
  ?execution_class:string prop ->
  ?glue_version:string prop ->
  ?id:string prop ->
  ?maintenance_window:string prop ->
  ?max_capacity:float prop ->
  ?max_retries:float prop ->
  ?non_overridable_arguments:string prop Tf_core.assoc ->
  ?number_of_workers:float prop ->
  ?security_configuration:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeout:float prop ->
  ?worker_type:string prop ->
  ?execution_property:execution_property list ->
  ?notification_property:notification_property list ->
  name:string prop ->
  role_arn:string prop ->
  command:command list ->
  string ->
  t

val make :
  ?connections:string prop list ->
  ?default_arguments:string prop Tf_core.assoc ->
  ?description:string prop ->
  ?execution_class:string prop ->
  ?glue_version:string prop ->
  ?id:string prop ->
  ?maintenance_window:string prop ->
  ?max_capacity:float prop ->
  ?max_retries:float prop ->
  ?non_overridable_arguments:string prop Tf_core.assoc ->
  ?number_of_workers:float prop ->
  ?security_configuration:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeout:float prop ->
  ?worker_type:string prop ->
  ?execution_property:execution_property list ->
  ?notification_property:notification_property list ->
  name:string prop ->
  role_arn:string prop ->
  command:command list ->
  string ->
  t Tf_core.resource
