(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_opensearch_domain__advanced_security_options__master_user_options = {
  master_user_arn : string option; [@option]  (** master_user_arn *)
  master_user_name : string option; [@option]
      (** master_user_name *)
  master_user_password : string option; [@option]
      (** master_user_password *)
}
[@@deriving yojson_of]
(** aws_opensearch_domain__advanced_security_options__master_user_options *)

type aws_opensearch_domain__advanced_security_options = {
  anonymous_auth_enabled : bool option; [@option]
      (** anonymous_auth_enabled *)
  enabled : bool;  (** enabled *)
  internal_user_database_enabled : bool option; [@option]
      (** internal_user_database_enabled *)
  master_user_options :
    aws_opensearch_domain__advanced_security_options__master_user_options
    list;
}
[@@deriving yojson_of]
(** aws_opensearch_domain__advanced_security_options *)

type aws_opensearch_domain__auto_tune_options__maintenance_schedule__duration = {
  unit : string;  (** unit *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** aws_opensearch_domain__auto_tune_options__maintenance_schedule__duration *)

type aws_opensearch_domain__auto_tune_options__maintenance_schedule = {
  cron_expression_for_recurrence : string;
      (** cron_expression_for_recurrence *)
  start_at : string;  (** start_at *)
  duration :
    aws_opensearch_domain__auto_tune_options__maintenance_schedule__duration
    list;
}
[@@deriving yojson_of]
(** aws_opensearch_domain__auto_tune_options__maintenance_schedule *)

type aws_opensearch_domain__auto_tune_options = {
  desired_state : string;  (** desired_state *)
  rollback_on_disable : string option; [@option]
      (** rollback_on_disable *)
  use_off_peak_window : bool option; [@option]
      (** use_off_peak_window *)
  maintenance_schedule :
    aws_opensearch_domain__auto_tune_options__maintenance_schedule
    list;
}
[@@deriving yojson_of]
(** aws_opensearch_domain__auto_tune_options *)

type aws_opensearch_domain__cluster_config__cold_storage_options = {
  enabled : bool option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_opensearch_domain__cluster_config__cold_storage_options *)

type aws_opensearch_domain__cluster_config__zone_awareness_config = {
  availability_zone_count : float option; [@option]
      (** availability_zone_count *)
}
[@@deriving yojson_of]
(** aws_opensearch_domain__cluster_config__zone_awareness_config *)

type aws_opensearch_domain__cluster_config = {
  dedicated_master_count : float option; [@option]
      (** dedicated_master_count *)
  dedicated_master_enabled : bool option; [@option]
      (** dedicated_master_enabled *)
  dedicated_master_type : string option; [@option]
      (** dedicated_master_type *)
  instance_count : float option; [@option]  (** instance_count *)
  instance_type : string option; [@option]  (** instance_type *)
  multi_az_with_standby_enabled : bool option; [@option]
      (** multi_az_with_standby_enabled *)
  warm_count : float option; [@option]  (** warm_count *)
  warm_enabled : bool option; [@option]  (** warm_enabled *)
  warm_type : string option; [@option]  (** warm_type *)
  zone_awareness_enabled : bool option; [@option]
      (** zone_awareness_enabled *)
  cold_storage_options :
    aws_opensearch_domain__cluster_config__cold_storage_options list;
  zone_awareness_config :
    aws_opensearch_domain__cluster_config__zone_awareness_config list;
}
[@@deriving yojson_of]
(** aws_opensearch_domain__cluster_config *)

type aws_opensearch_domain__cognito_options = {
  enabled : bool option; [@option]  (** enabled *)
  identity_pool_id : string;  (** identity_pool_id *)
  role_arn : string;  (** role_arn *)
  user_pool_id : string;  (** user_pool_id *)
}
[@@deriving yojson_of]
(** aws_opensearch_domain__cognito_options *)

type aws_opensearch_domain__domain_endpoint_options = {
  custom_endpoint : string option; [@option]  (** custom_endpoint *)
  custom_endpoint_certificate_arn : string option; [@option]
      (** custom_endpoint_certificate_arn *)
  custom_endpoint_enabled : bool option; [@option]
      (** custom_endpoint_enabled *)
  enforce_https : bool option; [@option]  (** enforce_https *)
  tls_security_policy : string option; [@option]
      (** tls_security_policy *)
}
[@@deriving yojson_of]
(** aws_opensearch_domain__domain_endpoint_options *)

type aws_opensearch_domain__ebs_options = {
  ebs_enabled : bool;  (** ebs_enabled *)
  iops : float option; [@option]  (** iops *)
  throughput : float option; [@option]  (** throughput *)
  volume_size : float option; [@option]  (** volume_size *)
  volume_type : string option; [@option]  (** volume_type *)
}
[@@deriving yojson_of]
(** aws_opensearch_domain__ebs_options *)

type aws_opensearch_domain__encrypt_at_rest = {
  enabled : bool;  (** enabled *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
}
[@@deriving yojson_of]
(** aws_opensearch_domain__encrypt_at_rest *)

type aws_opensearch_domain__log_publishing_options = {
  cloudwatch_log_group_arn : string;  (** cloudwatch_log_group_arn *)
  enabled : bool option; [@option]  (** enabled *)
  log_type : string;  (** log_type *)
}
[@@deriving yojson_of]
(** aws_opensearch_domain__log_publishing_options *)

type aws_opensearch_domain__node_to_node_encryption = {
  enabled : bool;  (** enabled *)
}
[@@deriving yojson_of]
(** aws_opensearch_domain__node_to_node_encryption *)

type aws_opensearch_domain__off_peak_window_options__off_peak_window__window_start_time = {
  hours : float option; [@option]  (** hours *)
  minutes : float option; [@option]  (** minutes *)
}
[@@deriving yojson_of]
(** aws_opensearch_domain__off_peak_window_options__off_peak_window__window_start_time *)

type aws_opensearch_domain__off_peak_window_options__off_peak_window = {
  window_start_time :
    aws_opensearch_domain__off_peak_window_options__off_peak_window__window_start_time
    list;
}
[@@deriving yojson_of]
(** aws_opensearch_domain__off_peak_window_options__off_peak_window *)

type aws_opensearch_domain__off_peak_window_options = {
  enabled : bool option; [@option]  (** enabled *)
  off_peak_window :
    aws_opensearch_domain__off_peak_window_options__off_peak_window
    list;
}
[@@deriving yojson_of]
(** aws_opensearch_domain__off_peak_window_options *)

type aws_opensearch_domain__snapshot_options = {
  automated_snapshot_start_hour : float;
      (** automated_snapshot_start_hour *)
}
[@@deriving yojson_of]
(** aws_opensearch_domain__snapshot_options *)

type aws_opensearch_domain__software_update_options = {
  auto_software_update_enabled : bool option; [@option]
      (** auto_software_update_enabled *)
}
[@@deriving yojson_of]
(** aws_opensearch_domain__software_update_options *)

type aws_opensearch_domain__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_opensearch_domain__timeouts *)

type aws_opensearch_domain__vpc_options = {
  availability_zones : string list;  (** availability_zones *)
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  subnet_ids : string list option; [@option]  (** subnet_ids *)
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_opensearch_domain__vpc_options *)

type aws_opensearch_domain = {
  domain_name : string;  (** domain_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  advanced_security_options :
    aws_opensearch_domain__advanced_security_options list;
  auto_tune_options : aws_opensearch_domain__auto_tune_options list;
  cluster_config : aws_opensearch_domain__cluster_config list;
  cognito_options : aws_opensearch_domain__cognito_options list;
  domain_endpoint_options :
    aws_opensearch_domain__domain_endpoint_options list;
  ebs_options : aws_opensearch_domain__ebs_options list;
  encrypt_at_rest : aws_opensearch_domain__encrypt_at_rest list;
  log_publishing_options :
    aws_opensearch_domain__log_publishing_options list;
  node_to_node_encryption :
    aws_opensearch_domain__node_to_node_encryption list;
  off_peak_window_options :
    aws_opensearch_domain__off_peak_window_options list;
  snapshot_options : aws_opensearch_domain__snapshot_options list;
  software_update_options :
    aws_opensearch_domain__software_update_options list;
  timeouts : aws_opensearch_domain__timeouts option;
  vpc_options : aws_opensearch_domain__vpc_options list;
}
[@@deriving yojson_of]
(** aws_opensearch_domain *)

let aws_opensearch_domain ?tags ?timeouts ~domain_name
    ~advanced_security_options ~auto_tune_options ~cluster_config
    ~cognito_options ~domain_endpoint_options ~ebs_options
    ~encrypt_at_rest ~log_publishing_options ~node_to_node_encryption
    ~off_peak_window_options ~snapshot_options
    ~software_update_options ~vpc_options __resource_id =
  let __resource_type = "aws_opensearch_domain" in
  let __resource =
    {
      domain_name;
      tags;
      advanced_security_options;
      auto_tune_options;
      cluster_config;
      cognito_options;
      domain_endpoint_options;
      ebs_options;
      encrypt_at_rest;
      log_publishing_options;
      node_to_node_encryption;
      off_peak_window_options;
      snapshot_options;
      software_update_options;
      timeouts;
      vpc_options;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opensearch_domain __resource);
  ()
