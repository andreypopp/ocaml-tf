(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_emrcontainers_job_template__job_template_data__configuration_overrides__application_configuration__configurations = {
  classification : string option; [@option]  (** classification *)
  properties : (string * string) list option; [@option]
      (** properties *)
}
[@@deriving yojson_of]
(** aws_emrcontainers_job_template__job_template_data__configuration_overrides__application_configuration__configurations *)

type aws_emrcontainers_job_template__job_template_data__configuration_overrides__application_configuration = {
  classification : string;  (** classification *)
  properties : (string * string) list option; [@option]
      (** properties *)
  configurations :
    aws_emrcontainers_job_template__job_template_data__configuration_overrides__application_configuration__configurations
    list;
}
[@@deriving yojson_of]
(** aws_emrcontainers_job_template__job_template_data__configuration_overrides__application_configuration *)

type aws_emrcontainers_job_template__job_template_data__configuration_overrides__monitoring_configuration__cloud_watch_monitoring_configuration = {
  log_group_name : string;  (** log_group_name *)
  log_stream_name_prefix : string option; [@option]
      (** log_stream_name_prefix *)
}
[@@deriving yojson_of]
(** aws_emrcontainers_job_template__job_template_data__configuration_overrides__monitoring_configuration__cloud_watch_monitoring_configuration *)

type aws_emrcontainers_job_template__job_template_data__configuration_overrides__monitoring_configuration__s3_monitoring_configuration = {
  log_uri : string;  (** log_uri *)
}
[@@deriving yojson_of]
(** aws_emrcontainers_job_template__job_template_data__configuration_overrides__monitoring_configuration__s3_monitoring_configuration *)

type aws_emrcontainers_job_template__job_template_data__configuration_overrides__monitoring_configuration = {
  persistent_app_ui : string option; [@option]
      (** persistent_app_ui *)
  cloud_watch_monitoring_configuration :
    aws_emrcontainers_job_template__job_template_data__configuration_overrides__monitoring_configuration__cloud_watch_monitoring_configuration
    list;
  s3_monitoring_configuration :
    aws_emrcontainers_job_template__job_template_data__configuration_overrides__monitoring_configuration__s3_monitoring_configuration
    list;
}
[@@deriving yojson_of]
(** aws_emrcontainers_job_template__job_template_data__configuration_overrides__monitoring_configuration *)

type aws_emrcontainers_job_template__job_template_data__configuration_overrides = {
  application_configuration :
    aws_emrcontainers_job_template__job_template_data__configuration_overrides__application_configuration
    list;
  monitoring_configuration :
    aws_emrcontainers_job_template__job_template_data__configuration_overrides__monitoring_configuration
    list;
}
[@@deriving yojson_of]
(** aws_emrcontainers_job_template__job_template_data__configuration_overrides *)

type aws_emrcontainers_job_template__job_template_data__job_driver__spark_sql_job_driver = {
  entry_point : string option; [@option]  (** entry_point *)
  spark_sql_parameters : string option; [@option]
      (** spark_sql_parameters *)
}
[@@deriving yojson_of]
(** aws_emrcontainers_job_template__job_template_data__job_driver__spark_sql_job_driver *)

type aws_emrcontainers_job_template__job_template_data__job_driver__spark_submit_job_driver = {
  entry_point : string;  (** entry_point *)
  entry_point_arguments : string list option; [@option]
      (** entry_point_arguments *)
  spark_submit_parameters : string option; [@option]
      (** spark_submit_parameters *)
}
[@@deriving yojson_of]
(** aws_emrcontainers_job_template__job_template_data__job_driver__spark_submit_job_driver *)

type aws_emrcontainers_job_template__job_template_data__job_driver = {
  spark_sql_job_driver :
    aws_emrcontainers_job_template__job_template_data__job_driver__spark_sql_job_driver
    list;
  spark_submit_job_driver :
    aws_emrcontainers_job_template__job_template_data__job_driver__spark_submit_job_driver
    list;
}
[@@deriving yojson_of]
(** aws_emrcontainers_job_template__job_template_data__job_driver *)

type aws_emrcontainers_job_template__job_template_data = {
  execution_role_arn : string;  (** execution_role_arn *)
  job_tags : (string * string) list option; [@option]
      (** job_tags *)
  release_label : string;  (** release_label *)
  configuration_overrides :
    aws_emrcontainers_job_template__job_template_data__configuration_overrides
    list;
  job_driver :
    aws_emrcontainers_job_template__job_template_data__job_driver
    list;
}
[@@deriving yojson_of]
(** aws_emrcontainers_job_template__job_template_data *)

type aws_emrcontainers_job_template__timeouts = {
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_emrcontainers_job_template__timeouts *)

type aws_emrcontainers_job_template = {
  kms_key_arn : string option; [@option]  (** kms_key_arn *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  job_template_data :
    aws_emrcontainers_job_template__job_template_data list;
  timeouts : aws_emrcontainers_job_template__timeouts option;
}
[@@deriving yojson_of]
(** aws_emrcontainers_job_template *)

let aws_emrcontainers_job_template ?kms_key_arn ?tags ?timeouts ~name
    ~job_template_data __resource_id =
  let __resource_type = "aws_emrcontainers_job_template" in
  let __resource =
    { kms_key_arn; name; tags; job_template_data; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_emrcontainers_job_template __resource);
  ()
