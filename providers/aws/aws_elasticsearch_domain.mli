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
  ?internal_user_database_enabled:bool prop ->
  enabled:bool prop ->
  master_user_options:
    advanced_security_options__master_user_options list ->
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
  ?warm_count:float prop ->
  ?warm_enabled:bool prop ->
  ?warm_type:string prop ->
  ?zone_awareness_enabled:bool prop ->
  cold_storage_options:cluster_config__cold_storage_options list ->
  zone_awareness_config:cluster_config__zone_awareness_config list ->
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

type snapshot_options

val snapshot_options :
  automated_snapshot_start_hour:float prop ->
  unit ->
  snapshot_options

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

type aws_elasticsearch_domain

val aws_elasticsearch_domain :
  ?access_policies:string prop ->
  ?advanced_options:(string * string prop) list ->
  ?elasticsearch_version:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  advanced_security_options:advanced_security_options list ->
  auto_tune_options:auto_tune_options list ->
  cluster_config:cluster_config list ->
  cognito_options:cognito_options list ->
  domain_endpoint_options:domain_endpoint_options list ->
  ebs_options:ebs_options list ->
  encrypt_at_rest:encrypt_at_rest list ->
  log_publishing_options:log_publishing_options list ->
  node_to_node_encryption:node_to_node_encryption list ->
  snapshot_options:snapshot_options list ->
  vpc_options:vpc_options list ->
  unit ->
  aws_elasticsearch_domain

val yojson_of_aws_elasticsearch_domain :
  aws_elasticsearch_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  access_policies : string prop;
  advanced_options : (string * string) list prop;
  arn : string prop;
  domain_id : string prop;
  domain_name : string prop;
  elasticsearch_version : string prop;
  endpoint : string prop;
  id : string prop;
  kibana_endpoint : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?access_policies:string prop ->
  ?advanced_options:(string * string prop) list ->
  ?elasticsearch_version:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  advanced_security_options:advanced_security_options list ->
  auto_tune_options:auto_tune_options list ->
  cluster_config:cluster_config list ->
  cognito_options:cognito_options list ->
  domain_endpoint_options:domain_endpoint_options list ->
  ebs_options:ebs_options list ->
  encrypt_at_rest:encrypt_at_rest list ->
  log_publishing_options:log_publishing_options list ->
  node_to_node_encryption:node_to_node_encryption list ->
  snapshot_options:snapshot_options list ->
  vpc_options:vpc_options list ->
  string ->
  t

val make :
  ?access_policies:string prop ->
  ?advanced_options:(string * string prop) list ->
  ?elasticsearch_version:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  advanced_security_options:advanced_security_options list ->
  auto_tune_options:auto_tune_options list ->
  cluster_config:cluster_config list ->
  cognito_options:cognito_options list ->
  domain_endpoint_options:domain_endpoint_options list ->
  ebs_options:ebs_options list ->
  encrypt_at_rest:encrypt_at_rest list ->
  log_publishing_options:log_publishing_options list ->
  node_to_node_encryption:node_to_node_encryption list ->
  snapshot_options:snapshot_options list ->
  vpc_options:vpc_options list ->
  string ->
  t Tf_core.resource
