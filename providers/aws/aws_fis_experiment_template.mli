(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type action__parameter

val action__parameter :
  key:string prop -> value:string prop -> unit -> action__parameter

type action__target

val action__target :
  key:string prop -> value:string prop -> unit -> action__target

type action

val action :
  ?description:string prop ->
  ?start_after:string prop list ->
  ?target:action__target list ->
  action_id:string prop ->
  name:string prop ->
  parameter:action__parameter list ->
  unit ->
  action

type experiment_options

val experiment_options :
  ?account_targeting:string prop ->
  ?empty_target_resolution_mode:string prop ->
  unit ->
  experiment_options

type log_configuration__cloudwatch_logs_configuration

val log_configuration__cloudwatch_logs_configuration :
  log_group_arn:string prop ->
  unit ->
  log_configuration__cloudwatch_logs_configuration

type log_configuration__s3_configuration

val log_configuration__s3_configuration :
  ?prefix:string prop ->
  bucket_name:string prop ->
  unit ->
  log_configuration__s3_configuration

type log_configuration

val log_configuration :
  ?cloudwatch_logs_configuration:
    log_configuration__cloudwatch_logs_configuration list ->
  ?s3_configuration:log_configuration__s3_configuration list ->
  log_schema_version:float prop ->
  unit ->
  log_configuration

type stop_condition

val stop_condition :
  ?value:string prop -> source:string prop -> unit -> stop_condition

type target__filter

val target__filter :
  path:string prop ->
  values:string prop list ->
  unit ->
  target__filter

type target__resource_tag

val target__resource_tag :
  key:string prop ->
  value:string prop ->
  unit ->
  target__resource_tag

type target

val target :
  ?parameters:string prop Tf_core.assoc ->
  ?resource_arns:string prop list ->
  ?filter:target__filter list ->
  name:string prop ->
  resource_type:string prop ->
  selection_mode:string prop ->
  resource_tag:target__resource_tag list ->
  unit ->
  target

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_fis_experiment_template

val aws_fis_experiment_template :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?experiment_options:experiment_options list ->
  ?log_configuration:log_configuration list ->
  ?timeouts:timeouts ->
  description:string prop ->
  role_arn:string prop ->
  action:action list ->
  stop_condition:stop_condition list ->
  target:target list ->
  unit ->
  aws_fis_experiment_template

val yojson_of_aws_fis_experiment_template :
  aws_fis_experiment_template -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  id : string prop;
  role_arn : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?experiment_options:experiment_options list ->
  ?log_configuration:log_configuration list ->
  ?timeouts:timeouts ->
  description:string prop ->
  role_arn:string prop ->
  action:action list ->
  stop_condition:stop_condition list ->
  target:target list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?experiment_options:experiment_options list ->
  ?log_configuration:log_configuration list ->
  ?timeouts:timeouts ->
  description:string prop ->
  role_arn:string prop ->
  action:action list ->
  stop_condition:stop_condition list ->
  target:target list ->
  string ->
  t Tf_core.resource
