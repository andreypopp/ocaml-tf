(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_opensearch_domain__advanced_security_options__master_user_options = {
  master_user_arn : string prop option; [@option]
      (** master_user_arn *)
  master_user_name : string prop option; [@option]
      (** master_user_name *)
  master_user_password : string prop option; [@option]
      (** master_user_password *)
}
[@@deriving yojson_of]
(** aws_opensearch_domain__advanced_security_options__master_user_options *)

type aws_opensearch_domain__advanced_security_options = {
  anonymous_auth_enabled : bool prop option; [@option]
      (** anonymous_auth_enabled *)
  enabled : bool prop;  (** enabled *)
  internal_user_database_enabled : bool prop option; [@option]
      (** internal_user_database_enabled *)
  master_user_options :
    aws_opensearch_domain__advanced_security_options__master_user_options
    list;
}
[@@deriving yojson_of]
(** aws_opensearch_domain__advanced_security_options *)

type aws_opensearch_domain__auto_tune_options__maintenance_schedule__duration = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_opensearch_domain__auto_tune_options__maintenance_schedule__duration *)

type aws_opensearch_domain__auto_tune_options__maintenance_schedule = {
  cron_expression_for_recurrence : string prop;
      (** cron_expression_for_recurrence *)
  start_at : string prop;  (** start_at *)
  duration :
    aws_opensearch_domain__auto_tune_options__maintenance_schedule__duration
    list;
}
[@@deriving yojson_of]
(** aws_opensearch_domain__auto_tune_options__maintenance_schedule *)

type aws_opensearch_domain__auto_tune_options = {
  desired_state : string prop;  (** desired_state *)
  rollback_on_disable : string prop option; [@option]
      (** rollback_on_disable *)
  use_off_peak_window : bool prop option; [@option]
      (** use_off_peak_window *)
  maintenance_schedule :
    aws_opensearch_domain__auto_tune_options__maintenance_schedule
    list;
}
[@@deriving yojson_of]
(** aws_opensearch_domain__auto_tune_options *)

type aws_opensearch_domain__cluster_config__cold_storage_options = {
  enabled : bool prop option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_opensearch_domain__cluster_config__cold_storage_options *)

type aws_opensearch_domain__cluster_config__zone_awareness_config = {
  availability_zone_count : float prop option; [@option]
      (** availability_zone_count *)
}
[@@deriving yojson_of]
(** aws_opensearch_domain__cluster_config__zone_awareness_config *)

type aws_opensearch_domain__cluster_config = {
  dedicated_master_count : float prop option; [@option]
      (** dedicated_master_count *)
  dedicated_master_enabled : bool prop option; [@option]
      (** dedicated_master_enabled *)
  dedicated_master_type : string prop option; [@option]
      (** dedicated_master_type *)
  instance_count : float prop option; [@option]
      (** instance_count *)
  instance_type : string prop option; [@option]  (** instance_type *)
  multi_az_with_standby_enabled : bool prop option; [@option]
      (** multi_az_with_standby_enabled *)
  warm_count : float prop option; [@option]  (** warm_count *)
  warm_enabled : bool prop option; [@option]  (** warm_enabled *)
  warm_type : string prop option; [@option]  (** warm_type *)
  zone_awareness_enabled : bool prop option; [@option]
      (** zone_awareness_enabled *)
  cold_storage_options :
    aws_opensearch_domain__cluster_config__cold_storage_options list;
  zone_awareness_config :
    aws_opensearch_domain__cluster_config__zone_awareness_config list;
}
[@@deriving yojson_of]
(** aws_opensearch_domain__cluster_config *)

type aws_opensearch_domain__cognito_options = {
  enabled : bool prop option; [@option]  (** enabled *)
  identity_pool_id : string prop;  (** identity_pool_id *)
  role_arn : string prop;  (** role_arn *)
  user_pool_id : string prop;  (** user_pool_id *)
}
[@@deriving yojson_of]
(** aws_opensearch_domain__cognito_options *)

type aws_opensearch_domain__domain_endpoint_options = {
  custom_endpoint : string prop option; [@option]
      (** custom_endpoint *)
  custom_endpoint_certificate_arn : string prop option; [@option]
      (** custom_endpoint_certificate_arn *)
  custom_endpoint_enabled : bool prop option; [@option]
      (** custom_endpoint_enabled *)
  enforce_https : bool prop option; [@option]  (** enforce_https *)
  tls_security_policy : string prop option; [@option]
      (** tls_security_policy *)
}
[@@deriving yojson_of]
(** aws_opensearch_domain__domain_endpoint_options *)

type aws_opensearch_domain__ebs_options = {
  ebs_enabled : bool prop;  (** ebs_enabled *)
  iops : float prop option; [@option]  (** iops *)
  throughput : float prop option; [@option]  (** throughput *)
  volume_size : float prop option; [@option]  (** volume_size *)
  volume_type : string prop option; [@option]  (** volume_type *)
}
[@@deriving yojson_of]
(** aws_opensearch_domain__ebs_options *)

type aws_opensearch_domain__encrypt_at_rest = {
  enabled : bool prop;  (** enabled *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
}
[@@deriving yojson_of]
(** aws_opensearch_domain__encrypt_at_rest *)

type aws_opensearch_domain__log_publishing_options = {
  cloudwatch_log_group_arn : string prop;
      (** cloudwatch_log_group_arn *)
  enabled : bool prop option; [@option]  (** enabled *)
  log_type : string prop;  (** log_type *)
}
[@@deriving yojson_of]
(** aws_opensearch_domain__log_publishing_options *)

type aws_opensearch_domain__node_to_node_encryption = {
  enabled : bool prop;  (** enabled *)
}
[@@deriving yojson_of]
(** aws_opensearch_domain__node_to_node_encryption *)

type aws_opensearch_domain__off_peak_window_options__off_peak_window__window_start_time = {
  hours : float prop option; [@option]  (** hours *)
  minutes : float prop option; [@option]  (** minutes *)
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
  enabled : bool prop option; [@option]  (** enabled *)
  off_peak_window :
    aws_opensearch_domain__off_peak_window_options__off_peak_window
    list;
}
[@@deriving yojson_of]
(** aws_opensearch_domain__off_peak_window_options *)

type aws_opensearch_domain__snapshot_options = {
  automated_snapshot_start_hour : float prop;
      (** automated_snapshot_start_hour *)
}
[@@deriving yojson_of]
(** aws_opensearch_domain__snapshot_options *)

type aws_opensearch_domain__software_update_options = {
  auto_software_update_enabled : bool prop option; [@option]
      (** auto_software_update_enabled *)
}
[@@deriving yojson_of]
(** aws_opensearch_domain__software_update_options *)

type aws_opensearch_domain__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_opensearch_domain__timeouts *)

type aws_opensearch_domain__vpc_options = {
  availability_zones : string prop list;  (** availability_zones *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  subnet_ids : string prop list option; [@option]  (** subnet_ids *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_opensearch_domain__vpc_options *)

type aws_opensearch_domain = {
  access_policies : string prop option; [@option]
      (** access_policies *)
  advanced_options : (string * string prop) list option; [@option]
      (** advanced_options *)
  domain_name : string prop;  (** domain_name *)
  engine_version : string prop option; [@option]
      (** engine_version *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
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

type t = {
  access_policies : string prop;
  advanced_options : (string * string) list prop;
  arn : string prop;
  dashboard_endpoint : string prop;
  domain_id : string prop;
  domain_name : string prop;
  endpoint : string prop;
  engine_version : string prop;
  id : string prop;
  kibana_endpoint : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_opensearch_domain ?access_policies ?advanced_options
    ?engine_version ?id ?tags ?tags_all ?timeouts ~domain_name
    ~advanced_security_options ~auto_tune_options ~cluster_config
    ~cognito_options ~domain_endpoint_options ~ebs_options
    ~encrypt_at_rest ~log_publishing_options ~node_to_node_encryption
    ~off_peak_window_options ~snapshot_options
    ~software_update_options ~vpc_options __resource_id =
  let __resource_type = "aws_opensearch_domain" in
  let __resource =
    ({
       access_policies;
       advanced_options;
       domain_name;
       engine_version;
       id;
       tags;
       tags_all;
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
      : aws_opensearch_domain)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opensearch_domain __resource);
  let __resource_attributes =
    ({
       access_policies =
         Prop.computed __resource_type __resource_id
           "access_policies";
       advanced_options =
         Prop.computed __resource_type __resource_id
           "advanced_options";
       arn = Prop.computed __resource_type __resource_id "arn";
       dashboard_endpoint =
         Prop.computed __resource_type __resource_id
           "dashboard_endpoint";
       domain_id =
         Prop.computed __resource_type __resource_id "domain_id";
       domain_name =
         Prop.computed __resource_type __resource_id "domain_name";
       endpoint =
         Prop.computed __resource_type __resource_id "endpoint";
       engine_version =
         Prop.computed __resource_type __resource_id "engine_version";
       id = Prop.computed __resource_type __resource_id "id";
       kibana_endpoint =
         Prop.computed __resource_type __resource_id
           "kibana_endpoint";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
