(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type job_template_data__configuration_overrides__application_configuration__configurations

val job_template_data__configuration_overrides__application_configuration__configurations :
  ?classification:string prop ->
  ?properties:string prop Tf_core.assoc ->
  unit ->
  job_template_data__configuration_overrides__application_configuration__configurations

type job_template_data__configuration_overrides__application_configuration

val job_template_data__configuration_overrides__application_configuration :
  ?properties:string prop Tf_core.assoc ->
  ?configurations:
    job_template_data__configuration_overrides__application_configuration__configurations
    list ->
  classification:string prop ->
  unit ->
  job_template_data__configuration_overrides__application_configuration

type job_template_data__configuration_overrides__monitoring_configuration__cloud_watch_monitoring_configuration

val job_template_data__configuration_overrides__monitoring_configuration__cloud_watch_monitoring_configuration :
  ?log_stream_name_prefix:string prop ->
  log_group_name:string prop ->
  unit ->
  job_template_data__configuration_overrides__monitoring_configuration__cloud_watch_monitoring_configuration

type job_template_data__configuration_overrides__monitoring_configuration__s3_monitoring_configuration

val job_template_data__configuration_overrides__monitoring_configuration__s3_monitoring_configuration :
  log_uri:string prop ->
  unit ->
  job_template_data__configuration_overrides__monitoring_configuration__s3_monitoring_configuration

type job_template_data__configuration_overrides__monitoring_configuration

val job_template_data__configuration_overrides__monitoring_configuration :
  ?persistent_app_ui:string prop ->
  ?cloud_watch_monitoring_configuration:
    job_template_data__configuration_overrides__monitoring_configuration__cloud_watch_monitoring_configuration
    list ->
  ?s3_monitoring_configuration:
    job_template_data__configuration_overrides__monitoring_configuration__s3_monitoring_configuration
    list ->
  unit ->
  job_template_data__configuration_overrides__monitoring_configuration

type job_template_data__configuration_overrides

val job_template_data__configuration_overrides :
  ?application_configuration:
    job_template_data__configuration_overrides__application_configuration
    list ->
  ?monitoring_configuration:
    job_template_data__configuration_overrides__monitoring_configuration
    list ->
  unit ->
  job_template_data__configuration_overrides

type job_template_data__job_driver__spark_sql_job_driver

val job_template_data__job_driver__spark_sql_job_driver :
  ?entry_point:string prop ->
  ?spark_sql_parameters:string prop ->
  unit ->
  job_template_data__job_driver__spark_sql_job_driver

type job_template_data__job_driver__spark_submit_job_driver

val job_template_data__job_driver__spark_submit_job_driver :
  ?entry_point_arguments:string prop list ->
  ?spark_submit_parameters:string prop ->
  entry_point:string prop ->
  unit ->
  job_template_data__job_driver__spark_submit_job_driver

type job_template_data__job_driver

val job_template_data__job_driver :
  ?spark_sql_job_driver:
    job_template_data__job_driver__spark_sql_job_driver list ->
  ?spark_submit_job_driver:
    job_template_data__job_driver__spark_submit_job_driver list ->
  unit ->
  job_template_data__job_driver

type job_template_data

val job_template_data :
  ?job_tags:string prop Tf_core.assoc ->
  ?configuration_overrides:
    job_template_data__configuration_overrides list ->
  execution_role_arn:string prop ->
  release_label:string prop ->
  job_driver:job_template_data__job_driver list ->
  unit ->
  job_template_data

type timeouts

val timeouts : ?delete:string prop -> unit -> timeouts

type aws_emrcontainers_job_template

val aws_emrcontainers_job_template :
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  job_template_data:job_template_data list ->
  unit ->
  aws_emrcontainers_job_template

val yojson_of_aws_emrcontainers_job_template :
  aws_emrcontainers_job_template -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  kms_key_arn : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  job_template_data:job_template_data list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  job_template_data:job_template_data list ->
  string ->
  t Tf_core.resource
