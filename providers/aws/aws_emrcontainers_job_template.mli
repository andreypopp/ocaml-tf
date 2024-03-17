(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_emrcontainers_job_template__job_template_data__configuration_overrides__application_configuration__configurations

type aws_emrcontainers_job_template__job_template_data__configuration_overrides__application_configuration

type aws_emrcontainers_job_template__job_template_data__configuration_overrides__monitoring_configuration__cloud_watch_monitoring_configuration

type aws_emrcontainers_job_template__job_template_data__configuration_overrides__monitoring_configuration__s3_monitoring_configuration

type aws_emrcontainers_job_template__job_template_data__configuration_overrides__monitoring_configuration

type aws_emrcontainers_job_template__job_template_data__configuration_overrides

type aws_emrcontainers_job_template__job_template_data__job_driver__spark_sql_job_driver

type aws_emrcontainers_job_template__job_template_data__job_driver__spark_submit_job_driver

type aws_emrcontainers_job_template__job_template_data__job_driver
type aws_emrcontainers_job_template__job_template_data
type aws_emrcontainers_job_template__timeouts
type aws_emrcontainers_job_template

type t = private {
  arn : string prop;
  id : string prop;
  kms_key_arn : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_emrcontainers_job_template :
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_emrcontainers_job_template__timeouts ->
  name:string prop ->
  job_template_data:
    aws_emrcontainers_job_template__job_template_data list ->
  string ->
  t
