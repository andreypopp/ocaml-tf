(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type advanced_security_options__master_user_options = {
  master_user_arn : string prop option; [@option]
      (** master_user_arn *)
  master_user_name : string prop option; [@option]
      (** master_user_name *)
  master_user_password : string prop option; [@option]
      (** master_user_password *)
}
[@@deriving yojson_of]
(** advanced_security_options__master_user_options *)

type advanced_security_options = {
  anonymous_auth_enabled : bool prop option; [@option]
      (** anonymous_auth_enabled *)
  enabled : bool prop;  (** enabled *)
  internal_user_database_enabled : bool prop option; [@option]
      (** internal_user_database_enabled *)
  master_user_options :
    advanced_security_options__master_user_options list;
}
[@@deriving yojson_of]
(** advanced_security_options *)

type auto_tune_options__maintenance_schedule__duration = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** auto_tune_options__maintenance_schedule__duration *)

type auto_tune_options__maintenance_schedule = {
  cron_expression_for_recurrence : string prop;
      (** cron_expression_for_recurrence *)
  start_at : string prop;  (** start_at *)
  duration : auto_tune_options__maintenance_schedule__duration list;
}
[@@deriving yojson_of]
(** auto_tune_options__maintenance_schedule *)

type auto_tune_options = {
  desired_state : string prop;  (** desired_state *)
  rollback_on_disable : string prop option; [@option]
      (** rollback_on_disable *)
  use_off_peak_window : bool prop option; [@option]
      (** use_off_peak_window *)
  maintenance_schedule : auto_tune_options__maintenance_schedule list;
}
[@@deriving yojson_of]
(** auto_tune_options *)

type cluster_config__cold_storage_options = {
  enabled : bool prop option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** cluster_config__cold_storage_options *)

type cluster_config__zone_awareness_config = {
  availability_zone_count : float prop option; [@option]
      (** availability_zone_count *)
}
[@@deriving yojson_of]
(** cluster_config__zone_awareness_config *)

type cluster_config = {
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
  cold_storage_options : cluster_config__cold_storage_options list;
  zone_awareness_config : cluster_config__zone_awareness_config list;
}
[@@deriving yojson_of]
(** cluster_config *)

type cognito_options = {
  enabled : bool prop option; [@option]  (** enabled *)
  identity_pool_id : string prop;  (** identity_pool_id *)
  role_arn : string prop;  (** role_arn *)
  user_pool_id : string prop;  (** user_pool_id *)
}
[@@deriving yojson_of]
(** cognito_options *)

type domain_endpoint_options = {
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
(** domain_endpoint_options *)

type ebs_options = {
  ebs_enabled : bool prop;  (** ebs_enabled *)
  iops : float prop option; [@option]  (** iops *)
  throughput : float prop option; [@option]  (** throughput *)
  volume_size : float prop option; [@option]  (** volume_size *)
  volume_type : string prop option; [@option]  (** volume_type *)
}
[@@deriving yojson_of]
(** ebs_options *)

type encrypt_at_rest = {
  enabled : bool prop;  (** enabled *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
}
[@@deriving yojson_of]
(** encrypt_at_rest *)

type log_publishing_options = {
  cloudwatch_log_group_arn : string prop;
      (** cloudwatch_log_group_arn *)
  enabled : bool prop option; [@option]  (** enabled *)
  log_type : string prop;  (** log_type *)
}
[@@deriving yojson_of]
(** log_publishing_options *)

type node_to_node_encryption = {
  enabled : bool prop;  (** enabled *)
}
[@@deriving yojson_of]
(** node_to_node_encryption *)

type off_peak_window_options__off_peak_window__window_start_time = {
  hours : float prop option; [@option]  (** hours *)
  minutes : float prop option; [@option]  (** minutes *)
}
[@@deriving yojson_of]
(** off_peak_window_options__off_peak_window__window_start_time *)

type off_peak_window_options__off_peak_window = {
  window_start_time :
    off_peak_window_options__off_peak_window__window_start_time list;
}
[@@deriving yojson_of]
(** off_peak_window_options__off_peak_window *)

type off_peak_window_options = {
  enabled : bool prop option; [@option]  (** enabled *)
  off_peak_window : off_peak_window_options__off_peak_window list;
}
[@@deriving yojson_of]
(** off_peak_window_options *)

type snapshot_options = {
  automated_snapshot_start_hour : float prop;
      (** automated_snapshot_start_hour *)
}
[@@deriving yojson_of]
(** snapshot_options *)

type software_update_options = {
  auto_software_update_enabled : bool prop option; [@option]
      (** auto_software_update_enabled *)
}
[@@deriving yojson_of]
(** software_update_options *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type vpc_options = {
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  subnet_ids : string prop list option; [@option]  (** subnet_ids *)
}
[@@deriving yojson_of]
(** vpc_options *)

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
  advanced_security_options : advanced_security_options list;
  auto_tune_options : auto_tune_options list;
  cluster_config : cluster_config list;
  cognito_options : cognito_options list;
  domain_endpoint_options : domain_endpoint_options list;
  ebs_options : ebs_options list;
  encrypt_at_rest : encrypt_at_rest list;
  log_publishing_options : log_publishing_options list;
  node_to_node_encryption : node_to_node_encryption list;
  off_peak_window_options : off_peak_window_options list;
  snapshot_options : snapshot_options list;
  software_update_options : software_update_options list;
  timeouts : timeouts option;
  vpc_options : vpc_options list;
}
[@@deriving yojson_of]
(** aws_opensearch_domain *)

let advanced_security_options__master_user_options ?master_user_arn
    ?master_user_name ?master_user_password () :
    advanced_security_options__master_user_options =
  { master_user_arn; master_user_name; master_user_password }

let advanced_security_options ?anonymous_auth_enabled
    ?internal_user_database_enabled ~enabled ~master_user_options ()
    : advanced_security_options =
  {
    anonymous_auth_enabled;
    enabled;
    internal_user_database_enabled;
    master_user_options;
  }

let auto_tune_options__maintenance_schedule__duration ~unit ~value ()
    : auto_tune_options__maintenance_schedule__duration =
  { unit; value }

let auto_tune_options__maintenance_schedule
    ~cron_expression_for_recurrence ~start_at ~duration () :
    auto_tune_options__maintenance_schedule =
  { cron_expression_for_recurrence; start_at; duration }

let auto_tune_options ?rollback_on_disable ?use_off_peak_window
    ~desired_state ~maintenance_schedule () : auto_tune_options =
  {
    desired_state;
    rollback_on_disable;
    use_off_peak_window;
    maintenance_schedule;
  }

let cluster_config__cold_storage_options ?enabled () :
    cluster_config__cold_storage_options =
  { enabled }

let cluster_config__zone_awareness_config ?availability_zone_count ()
    : cluster_config__zone_awareness_config =
  { availability_zone_count }

let cluster_config ?dedicated_master_count ?dedicated_master_enabled
    ?dedicated_master_type ?instance_count ?instance_type
    ?multi_az_with_standby_enabled ?warm_count ?warm_enabled
    ?warm_type ?zone_awareness_enabled ~cold_storage_options
    ~zone_awareness_config () : cluster_config =
  {
    dedicated_master_count;
    dedicated_master_enabled;
    dedicated_master_type;
    instance_count;
    instance_type;
    multi_az_with_standby_enabled;
    warm_count;
    warm_enabled;
    warm_type;
    zone_awareness_enabled;
    cold_storage_options;
    zone_awareness_config;
  }

let cognito_options ?enabled ~identity_pool_id ~role_arn
    ~user_pool_id () : cognito_options =
  { enabled; identity_pool_id; role_arn; user_pool_id }

let domain_endpoint_options ?custom_endpoint
    ?custom_endpoint_certificate_arn ?custom_endpoint_enabled
    ?enforce_https ?tls_security_policy () : domain_endpoint_options
    =
  {
    custom_endpoint;
    custom_endpoint_certificate_arn;
    custom_endpoint_enabled;
    enforce_https;
    tls_security_policy;
  }

let ebs_options ?iops ?throughput ?volume_size ?volume_type
    ~ebs_enabled () : ebs_options =
  { ebs_enabled; iops; throughput; volume_size; volume_type }

let encrypt_at_rest ?kms_key_id ~enabled () : encrypt_at_rest =
  { enabled; kms_key_id }

let log_publishing_options ?enabled ~cloudwatch_log_group_arn
    ~log_type () : log_publishing_options =
  { cloudwatch_log_group_arn; enabled; log_type }

let node_to_node_encryption ~enabled () : node_to_node_encryption =
  { enabled }

let off_peak_window_options__off_peak_window__window_start_time
    ?hours ?minutes () :
    off_peak_window_options__off_peak_window__window_start_time =
  { hours; minutes }

let off_peak_window_options__off_peak_window ~window_start_time () :
    off_peak_window_options__off_peak_window =
  { window_start_time }

let off_peak_window_options ?enabled ~off_peak_window () :
    off_peak_window_options =
  { enabled; off_peak_window }

let snapshot_options ~automated_snapshot_start_hour () :
    snapshot_options =
  { automated_snapshot_start_hour }

let software_update_options ?auto_software_update_enabled () :
    software_update_options =
  { auto_software_update_enabled }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let vpc_options ?security_group_ids ?subnet_ids () : vpc_options =
  { security_group_ids; subnet_ids }

let aws_opensearch_domain ?access_policies ?advanced_options
    ?engine_version ?id ?tags ?tags_all ?timeouts ~domain_name
    ~advanced_security_options ~auto_tune_options ~cluster_config
    ~cognito_options ~domain_endpoint_options ~ebs_options
    ~encrypt_at_rest ~log_publishing_options ~node_to_node_encryption
    ~off_peak_window_options ~snapshot_options
    ~software_update_options ~vpc_options () : aws_opensearch_domain
    =
  {
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

let register ?tf_module ?access_policies ?advanced_options
    ?engine_version ?id ?tags ?tags_all ?timeouts ~domain_name
    ~advanced_security_options ~auto_tune_options ~cluster_config
    ~cognito_options ~domain_endpoint_options ~ebs_options
    ~encrypt_at_rest ~log_publishing_options ~node_to_node_encryption
    ~off_peak_window_options ~snapshot_options
    ~software_update_options ~vpc_options __resource_id =
  let __resource_type = "aws_opensearch_domain" in
  let __resource =
    aws_opensearch_domain ?access_policies ?advanced_options
      ?engine_version ?id ?tags ?tags_all ?timeouts ~domain_name
      ~advanced_security_options ~auto_tune_options ~cluster_config
      ~cognito_options ~domain_endpoint_options ~ebs_options
      ~encrypt_at_rest ~log_publishing_options
      ~node_to_node_encryption ~off_peak_window_options
      ~snapshot_options ~software_update_options ~vpc_options ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
