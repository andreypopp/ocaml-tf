(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type advanced_security_options = {
  anonymous_auth_enabled : bool prop;  (** anonymous_auth_enabled *)
  enabled : bool prop;  (** enabled *)
  internal_user_database_enabled : bool prop;
      (** internal_user_database_enabled *)
}

type auto_tune_options__maintenance_schedule__duration = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}

type auto_tune_options__maintenance_schedule = {
  cron_expression_for_recurrence : string prop;
      (** cron_expression_for_recurrence *)
  duration : auto_tune_options__maintenance_schedule__duration list;
      (** duration *)
  start_at : string prop;  (** start_at *)
}

type auto_tune_options = {
  desired_state : string prop;  (** desired_state *)
  maintenance_schedule :
    auto_tune_options__maintenance_schedule list;
      (** maintenance_schedule *)
  rollback_on_disable : string prop;  (** rollback_on_disable *)
  use_off_peak_window : bool prop;  (** use_off_peak_window *)
}

type cluster_config__zone_awareness_config = {
  availability_zone_count : float prop;
      (** availability_zone_count *)
}

type cluster_config__cold_storage_options = {
  enabled : bool prop;  (** enabled *)
}

type cluster_config = {
  cold_storage_options : cluster_config__cold_storage_options list;
      (** cold_storage_options *)
  dedicated_master_count : float prop;  (** dedicated_master_count *)
  dedicated_master_enabled : bool prop;
      (** dedicated_master_enabled *)
  dedicated_master_type : string prop;  (** dedicated_master_type *)
  instance_count : float prop;  (** instance_count *)
  instance_type : string prop;  (** instance_type *)
  multi_az_with_standby_enabled : bool prop;
      (** multi_az_with_standby_enabled *)
  warm_count : float prop;  (** warm_count *)
  warm_enabled : bool prop;  (** warm_enabled *)
  warm_type : string prop;  (** warm_type *)
  zone_awareness_config : cluster_config__zone_awareness_config list;
      (** zone_awareness_config *)
  zone_awareness_enabled : bool prop;  (** zone_awareness_enabled *)
}

type cognito_options = {
  enabled : bool prop;  (** enabled *)
  identity_pool_id : string prop;  (** identity_pool_id *)
  role_arn : string prop;  (** role_arn *)
  user_pool_id : string prop;  (** user_pool_id *)
}

type ebs_options = {
  ebs_enabled : bool prop;  (** ebs_enabled *)
  iops : float prop;  (** iops *)
  throughput : float prop;  (** throughput *)
  volume_size : float prop;  (** volume_size *)
  volume_type : string prop;  (** volume_type *)
}

type encryption_at_rest = {
  enabled : bool prop;  (** enabled *)
  kms_key_id : string prop;  (** kms_key_id *)
}

type log_publishing_options = {
  cloudwatch_log_group_arn : string prop;
      (** cloudwatch_log_group_arn *)
  enabled : bool prop;  (** enabled *)
  log_type : string prop;  (** log_type *)
}

type node_to_node_encryption = {
  enabled : bool prop;  (** enabled *)
}

type snapshot_options = {
  automated_snapshot_start_hour : float prop;
      (** automated_snapshot_start_hour *)
}

type software_update_options = {
  auto_software_update_enabled : bool prop;
      (** auto_software_update_enabled *)
}

type vpc_options = {
  availability_zones : string prop list;  (** availability_zones *)
  security_group_ids : string prop list;  (** security_group_ids *)
  subnet_ids : string prop list;  (** subnet_ids *)
  vpc_id : string prop;  (** vpc_id *)
}

type off_peak_window_options__off_peak_window__window_start_time = {
  hours : float prop;  (** hours *)
  minutes : float prop;  (** minutes *)
}

type off_peak_window_options__off_peak_window = {
  window_start_time :
    off_peak_window_options__off_peak_window__window_start_time list;
      (** window_start_time *)
}

type off_peak_window_options

val off_peak_window_options : unit -> off_peak_window_options

type aws_opensearch_domain

val aws_opensearch_domain :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  domain_name:string prop ->
  off_peak_window_options:off_peak_window_options list ->
  unit ->
  aws_opensearch_domain

val yojson_of_aws_opensearch_domain : aws_opensearch_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  access_policies : string prop;
  advanced_options : (string * string) list prop;
  advanced_security_options : advanced_security_options list prop;
  arn : string prop;
  auto_tune_options : auto_tune_options list prop;
  cluster_config : cluster_config list prop;
  cognito_options : cognito_options list prop;
  created : bool prop;
  dashboard_endpoint : string prop;
  deleted : bool prop;
  domain_id : string prop;
  domain_name : string prop;
  ebs_options : ebs_options list prop;
  encryption_at_rest : encryption_at_rest list prop;
  endpoint : string prop;
  engine_version : string prop;
  id : string prop;
  kibana_endpoint : string prop;
  log_publishing_options : log_publishing_options list prop;
  node_to_node_encryption : node_to_node_encryption list prop;
  processing : bool prop;
  snapshot_options : snapshot_options list prop;
  software_update_options : software_update_options list prop;
  tags : (string * string) list prop;
  vpc_options : vpc_options list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  domain_name:string prop ->
  off_peak_window_options:off_peak_window_options list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  domain_name:string prop ->
  off_peak_window_options:off_peak_window_options list ->
  string ->
  t Tf_core.resource
