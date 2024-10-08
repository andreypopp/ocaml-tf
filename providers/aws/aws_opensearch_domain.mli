(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type advanced_security_options__master_user_options

val advanced_security_options__master_user_options :
  ?master_user_arn:string prop ->
  ?master_user_name:string prop ->
  ?master_user_password:string prop ->
  unit ->
  advanced_security_options__master_user_options

type advanced_security_options

val advanced_security_options :
  ?anonymous_auth_enabled:bool prop ->
  ?internal_user_database_enabled:bool prop ->
  ?master_user_options:
    advanced_security_options__master_user_options list ->
  enabled:bool prop ->
  unit ->
  advanced_security_options

type auto_tune_options__maintenance_schedule__duration

val auto_tune_options__maintenance_schedule__duration :
  unit:string prop ->
  value:float prop ->
  unit ->
  auto_tune_options__maintenance_schedule__duration

type auto_tune_options__maintenance_schedule

val auto_tune_options__maintenance_schedule :
  cron_expression_for_recurrence:string prop ->
  start_at:string prop ->
  duration:auto_tune_options__maintenance_schedule__duration list ->
  unit ->
  auto_tune_options__maintenance_schedule

type auto_tune_options

val auto_tune_options :
  ?rollback_on_disable:string prop ->
  ?use_off_peak_window:bool prop ->
  desired_state:string prop ->
  maintenance_schedule:auto_tune_options__maintenance_schedule list ->
  unit ->
  auto_tune_options

type cluster_config__cold_storage_options

val cluster_config__cold_storage_options :
  ?enabled:bool prop -> unit -> cluster_config__cold_storage_options

type cluster_config__zone_awareness_config

val cluster_config__zone_awareness_config :
  ?availability_zone_count:float prop ->
  unit ->
  cluster_config__zone_awareness_config

type cluster_config

val cluster_config :
  ?dedicated_master_count:float prop ->
  ?dedicated_master_enabled:bool prop ->
  ?dedicated_master_type:string prop ->
  ?instance_count:float prop ->
  ?instance_type:string prop ->
  ?multi_az_with_standby_enabled:bool prop ->
  ?warm_count:float prop ->
  ?warm_enabled:bool prop ->
  ?warm_type:string prop ->
  ?zone_awareness_enabled:bool prop ->
  ?cold_storage_options:cluster_config__cold_storage_options list ->
  ?zone_awareness_config:cluster_config__zone_awareness_config list ->
  unit ->
  cluster_config

type cognito_options

val cognito_options :
  ?enabled:bool prop ->
  identity_pool_id:string prop ->
  role_arn:string prop ->
  user_pool_id:string prop ->
  unit ->
  cognito_options

type domain_endpoint_options

val domain_endpoint_options :
  ?custom_endpoint:string prop ->
  ?custom_endpoint_certificate_arn:string prop ->
  ?custom_endpoint_enabled:bool prop ->
  ?enforce_https:bool prop ->
  ?tls_security_policy:string prop ->
  unit ->
  domain_endpoint_options

type ebs_options

val ebs_options :
  ?iops:float prop ->
  ?throughput:float prop ->
  ?volume_size:float prop ->
  ?volume_type:string prop ->
  ebs_enabled:bool prop ->
  unit ->
  ebs_options

type encrypt_at_rest

val encrypt_at_rest :
  ?kms_key_id:string prop ->
  enabled:bool prop ->
  unit ->
  encrypt_at_rest

type log_publishing_options

val log_publishing_options :
  ?enabled:bool prop ->
  cloudwatch_log_group_arn:string prop ->
  log_type:string prop ->
  unit ->
  log_publishing_options

type node_to_node_encryption

val node_to_node_encryption :
  enabled:bool prop -> unit -> node_to_node_encryption

type off_peak_window_options__off_peak_window__window_start_time

val off_peak_window_options__off_peak_window__window_start_time :
  ?hours:float prop ->
  ?minutes:float prop ->
  unit ->
  off_peak_window_options__off_peak_window__window_start_time

type off_peak_window_options__off_peak_window

val off_peak_window_options__off_peak_window :
  ?window_start_time:
    off_peak_window_options__off_peak_window__window_start_time list ->
  unit ->
  off_peak_window_options__off_peak_window

type off_peak_window_options

val off_peak_window_options :
  ?enabled:bool prop ->
  ?off_peak_window:off_peak_window_options__off_peak_window list ->
  unit ->
  off_peak_window_options

type snapshot_options

val snapshot_options :
  automated_snapshot_start_hour:float prop ->
  unit ->
  snapshot_options

type software_update_options

val software_update_options :
  ?auto_software_update_enabled:bool prop ->
  unit ->
  software_update_options

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type vpc_options

val vpc_options :
  ?security_group_ids:string prop list ->
  ?subnet_ids:string prop list ->
  unit ->
  vpc_options

type aws_opensearch_domain

val aws_opensearch_domain :
  ?access_policies:string prop ->
  ?advanced_options:string prop Tf_core.assoc ->
  ?engine_version:string prop ->
  ?id:string prop ->
  ?ip_address_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?advanced_security_options:advanced_security_options list ->
  ?auto_tune_options:auto_tune_options list ->
  ?cluster_config:cluster_config list ->
  ?cognito_options:cognito_options list ->
  ?domain_endpoint_options:domain_endpoint_options list ->
  ?ebs_options:ebs_options list ->
  ?encrypt_at_rest:encrypt_at_rest list ->
  ?node_to_node_encryption:node_to_node_encryption list ->
  ?off_peak_window_options:off_peak_window_options list ->
  ?snapshot_options:snapshot_options list ->
  ?software_update_options:software_update_options list ->
  ?timeouts:timeouts ->
  ?vpc_options:vpc_options list ->
  domain_name:string prop ->
  log_publishing_options:log_publishing_options list ->
  unit ->
  aws_opensearch_domain

val yojson_of_aws_opensearch_domain : aws_opensearch_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_policies : string prop;
  advanced_options : string Tf_core.assoc prop;
  arn : string prop;
  dashboard_endpoint : string prop;
  domain_id : string prop;
  domain_name : string prop;
  endpoint : string prop;
  engine_version : string prop;
  id : string prop;
  ip_address_type : string prop;
  kibana_endpoint : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?access_policies:string prop ->
  ?advanced_options:string prop Tf_core.assoc ->
  ?engine_version:string prop ->
  ?id:string prop ->
  ?ip_address_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?advanced_security_options:advanced_security_options list ->
  ?auto_tune_options:auto_tune_options list ->
  ?cluster_config:cluster_config list ->
  ?cognito_options:cognito_options list ->
  ?domain_endpoint_options:domain_endpoint_options list ->
  ?ebs_options:ebs_options list ->
  ?encrypt_at_rest:encrypt_at_rest list ->
  ?node_to_node_encryption:node_to_node_encryption list ->
  ?off_peak_window_options:off_peak_window_options list ->
  ?snapshot_options:snapshot_options list ->
  ?software_update_options:software_update_options list ->
  ?timeouts:timeouts ->
  ?vpc_options:vpc_options list ->
  domain_name:string prop ->
  log_publishing_options:log_publishing_options list ->
  string ->
  t

val make :
  ?access_policies:string prop ->
  ?advanced_options:string prop Tf_core.assoc ->
  ?engine_version:string prop ->
  ?id:string prop ->
  ?ip_address_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?advanced_security_options:advanced_security_options list ->
  ?auto_tune_options:auto_tune_options list ->
  ?cluster_config:cluster_config list ->
  ?cognito_options:cognito_options list ->
  ?domain_endpoint_options:domain_endpoint_options list ->
  ?ebs_options:ebs_options list ->
  ?encrypt_at_rest:encrypt_at_rest list ->
  ?node_to_node_encryption:node_to_node_encryption list ->
  ?off_peak_window_options:off_peak_window_options list ->
  ?snapshot_options:snapshot_options list ->
  ?software_update_options:software_update_options list ->
  ?timeouts:timeouts ->
  ?vpc_options:vpc_options list ->
  domain_name:string prop ->
  log_publishing_options:log_publishing_options list ->
  string ->
  t Tf_core.resource
