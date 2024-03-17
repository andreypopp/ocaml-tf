(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elasticsearch_domain__advanced_security_options__master_user_options

type aws_elasticsearch_domain__advanced_security_options

type aws_elasticsearch_domain__auto_tune_options__maintenance_schedule__duration

type aws_elasticsearch_domain__auto_tune_options__maintenance_schedule
type aws_elasticsearch_domain__auto_tune_options
type aws_elasticsearch_domain__cluster_config__cold_storage_options
type aws_elasticsearch_domain__cluster_config__zone_awareness_config
type aws_elasticsearch_domain__cluster_config
type aws_elasticsearch_domain__cognito_options
type aws_elasticsearch_domain__domain_endpoint_options
type aws_elasticsearch_domain__ebs_options
type aws_elasticsearch_domain__encrypt_at_rest
type aws_elasticsearch_domain__log_publishing_options
type aws_elasticsearch_domain__node_to_node_encryption
type aws_elasticsearch_domain__snapshot_options
type aws_elasticsearch_domain__timeouts
type aws_elasticsearch_domain__vpc_options
type aws_elasticsearch_domain

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

val aws_elasticsearch_domain :
  ?access_policies:string prop ->
  ?advanced_options:(string * string prop) list ->
  ?elasticsearch_version:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_elasticsearch_domain__timeouts ->
  domain_name:string prop ->
  advanced_security_options:
    aws_elasticsearch_domain__advanced_security_options list ->
  auto_tune_options:aws_elasticsearch_domain__auto_tune_options list ->
  cluster_config:aws_elasticsearch_domain__cluster_config list ->
  cognito_options:aws_elasticsearch_domain__cognito_options list ->
  domain_endpoint_options:
    aws_elasticsearch_domain__domain_endpoint_options list ->
  ebs_options:aws_elasticsearch_domain__ebs_options list ->
  encrypt_at_rest:aws_elasticsearch_domain__encrypt_at_rest list ->
  log_publishing_options:
    aws_elasticsearch_domain__log_publishing_options list ->
  node_to_node_encryption:
    aws_elasticsearch_domain__node_to_node_encryption list ->
  snapshot_options:aws_elasticsearch_domain__snapshot_options list ->
  vpc_options:aws_elasticsearch_domain__vpc_options list ->
  string ->
  t
