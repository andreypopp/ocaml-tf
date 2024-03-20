(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type blue_green_update = {
  enabled : bool prop option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** blue_green_update *)

type restore_to_point_in_time = {
  restore_time : string prop option; [@option]  (** restore_time *)
  source_db_instance_automated_backups_arn : string prop option;
      [@option]
      (** source_db_instance_automated_backups_arn *)
  source_db_instance_identifier : string prop option; [@option]
      (** source_db_instance_identifier *)
  source_dbi_resource_id : string prop option; [@option]
      (** source_dbi_resource_id *)
  use_latest_restorable_time : bool prop option; [@option]
      (** use_latest_restorable_time *)
}
[@@deriving yojson_of]
(** restore_to_point_in_time *)

type s3_import = {
  bucket_name : string prop;  (** bucket_name *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  ingestion_role : string prop;  (** ingestion_role *)
  source_engine : string prop;  (** source_engine *)
  source_engine_version : string prop;  (** source_engine_version *)
}
[@@deriving yojson_of]
(** s3_import *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type listener_endpoint = {
  address : string prop;  (** address *)
  hosted_zone_id : string prop;  (** hosted_zone_id *)
  port : float prop;  (** port *)
}
[@@deriving yojson_of]

type master_user_secret = {
  kms_key_id : string prop;  (** kms_key_id *)
  secret_arn : string prop;  (** secret_arn *)
  secret_status : string prop;  (** secret_status *)
}
[@@deriving yojson_of]

type aws_db_instance = {
  allocated_storage : float prop option; [@option]
      (** allocated_storage *)
  allow_major_version_upgrade : bool prop option; [@option]
      (** allow_major_version_upgrade *)
  apply_immediately : bool prop option; [@option]
      (** apply_immediately *)
  auto_minor_version_upgrade : bool prop option; [@option]
      (** auto_minor_version_upgrade *)
  availability_zone : string prop option; [@option]
      (** availability_zone *)
  backup_retention_period : float prop option; [@option]
      (** backup_retention_period *)
  backup_target : string prop option; [@option]  (** backup_target *)
  backup_window : string prop option; [@option]  (** backup_window *)
  ca_cert_identifier : string prop option; [@option]
      (** ca_cert_identifier *)
  character_set_name : string prop option; [@option]
      (** character_set_name *)
  copy_tags_to_snapshot : bool prop option; [@option]
      (** copy_tags_to_snapshot *)
  custom_iam_instance_profile : string prop option; [@option]
      (** custom_iam_instance_profile *)
  customer_owned_ip_enabled : bool prop option; [@option]
      (** customer_owned_ip_enabled *)
  db_name : string prop option; [@option]  (** db_name *)
  db_subnet_group_name : string prop option; [@option]
      (** db_subnet_group_name *)
  delete_automated_backups : bool prop option; [@option]
      (** delete_automated_backups *)
  deletion_protection : bool prop option; [@option]
      (** deletion_protection *)
  domain : string prop option; [@option]  (** domain *)
  domain_auth_secret_arn : string prop option; [@option]
      (** domain_auth_secret_arn *)
  domain_dns_ips : string prop list option; [@option]
      (** domain_dns_ips *)
  domain_fqdn : string prop option; [@option]  (** domain_fqdn *)
  domain_iam_role_name : string prop option; [@option]
      (** domain_iam_role_name *)
  domain_ou : string prop option; [@option]  (** domain_ou *)
  enabled_cloudwatch_logs_exports : string prop list option;
      [@option]
      (** enabled_cloudwatch_logs_exports *)
  engine : string prop option; [@option]  (** engine *)
  engine_version : string prop option; [@option]
      (** engine_version *)
  final_snapshot_identifier : string prop option; [@option]
      (** final_snapshot_identifier *)
  iam_database_authentication_enabled : bool prop option; [@option]
      (** iam_database_authentication_enabled *)
  id : string prop option; [@option]  (** id *)
  identifier : string prop option; [@option]  (** identifier *)
  identifier_prefix : string prop option; [@option]
      (** identifier_prefix *)
  instance_class : string prop;  (** instance_class *)
  iops : float prop option; [@option]  (** iops *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  license_model : string prop option; [@option]  (** license_model *)
  maintenance_window : string prop option; [@option]
      (** maintenance_window *)
  manage_master_user_password : bool prop option; [@option]
      (** manage_master_user_password *)
  master_user_secret_kms_key_id : string prop option; [@option]
      (** master_user_secret_kms_key_id *)
  max_allocated_storage : float prop option; [@option]
      (** max_allocated_storage *)
  monitoring_interval : float prop option; [@option]
      (** monitoring_interval *)
  monitoring_role_arn : string prop option; [@option]
      (** monitoring_role_arn *)
  multi_az : bool prop option; [@option]  (** multi_az *)
  nchar_character_set_name : string prop option; [@option]
      (** nchar_character_set_name *)
  network_type : string prop option; [@option]  (** network_type *)
  option_group_name : string prop option; [@option]
      (** option_group_name *)
  parameter_group_name : string prop option; [@option]
      (** parameter_group_name *)
  password : string prop option; [@option]  (** password *)
  performance_insights_enabled : bool prop option; [@option]
      (** performance_insights_enabled *)
  performance_insights_kms_key_id : string prop option; [@option]
      (** performance_insights_kms_key_id *)
  performance_insights_retention_period : float prop option;
      [@option]
      (** performance_insights_retention_period *)
  port : float prop option; [@option]  (** port *)
  publicly_accessible : bool prop option; [@option]
      (** publicly_accessible *)
  replica_mode : string prop option; [@option]  (** replica_mode *)
  replicate_source_db : string prop option; [@option]
      (** replicate_source_db *)
  skip_final_snapshot : bool prop option; [@option]
      (** skip_final_snapshot *)
  snapshot_identifier : string prop option; [@option]
      (** snapshot_identifier *)
  storage_encrypted : bool prop option; [@option]
      (** storage_encrypted *)
  storage_throughput : float prop option; [@option]
      (** storage_throughput *)
  storage_type : string prop option; [@option]  (** storage_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timezone : string prop option; [@option]  (** timezone *)
  username : string prop option; [@option]  (** username *)
  vpc_security_group_ids : string prop list option; [@option]
      (** vpc_security_group_ids *)
  blue_green_update : blue_green_update list;
  restore_to_point_in_time : restore_to_point_in_time list;
  s3_import : s3_import list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_db_instance *)

let blue_green_update ?enabled () : blue_green_update = { enabled }

let restore_to_point_in_time ?restore_time
    ?source_db_instance_automated_backups_arn
    ?source_db_instance_identifier ?source_dbi_resource_id
    ?use_latest_restorable_time () : restore_to_point_in_time =
  {
    restore_time;
    source_db_instance_automated_backups_arn;
    source_db_instance_identifier;
    source_dbi_resource_id;
    use_latest_restorable_time;
  }

let s3_import ?bucket_prefix ~bucket_name ~ingestion_role
    ~source_engine ~source_engine_version () : s3_import =
  {
    bucket_name;
    bucket_prefix;
    ingestion_role;
    source_engine;
    source_engine_version;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_db_instance ?allocated_storage ?allow_major_version_upgrade
    ?apply_immediately ?auto_minor_version_upgrade ?availability_zone
    ?backup_retention_period ?backup_target ?backup_window
    ?ca_cert_identifier ?character_set_name ?copy_tags_to_snapshot
    ?custom_iam_instance_profile ?customer_owned_ip_enabled ?db_name
    ?db_subnet_group_name ?delete_automated_backups
    ?deletion_protection ?domain ?domain_auth_secret_arn
    ?domain_dns_ips ?domain_fqdn ?domain_iam_role_name ?domain_ou
    ?enabled_cloudwatch_logs_exports ?engine ?engine_version
    ?final_snapshot_identifier ?iam_database_authentication_enabled
    ?id ?identifier ?identifier_prefix ?iops ?kms_key_id
    ?license_model ?maintenance_window ?manage_master_user_password
    ?master_user_secret_kms_key_id ?max_allocated_storage
    ?monitoring_interval ?monitoring_role_arn ?multi_az
    ?nchar_character_set_name ?network_type ?option_group_name
    ?parameter_group_name ?password ?performance_insights_enabled
    ?performance_insights_kms_key_id
    ?performance_insights_retention_period ?port ?publicly_accessible
    ?replica_mode ?replicate_source_db ?skip_final_snapshot
    ?snapshot_identifier ?storage_encrypted ?storage_throughput
    ?storage_type ?tags ?tags_all ?timezone ?username
    ?vpc_security_group_ids ?timeouts ~instance_class
    ~blue_green_update ~restore_to_point_in_time ~s3_import () :
    aws_db_instance =
  {
    allocated_storage;
    allow_major_version_upgrade;
    apply_immediately;
    auto_minor_version_upgrade;
    availability_zone;
    backup_retention_period;
    backup_target;
    backup_window;
    ca_cert_identifier;
    character_set_name;
    copy_tags_to_snapshot;
    custom_iam_instance_profile;
    customer_owned_ip_enabled;
    db_name;
    db_subnet_group_name;
    delete_automated_backups;
    deletion_protection;
    domain;
    domain_auth_secret_arn;
    domain_dns_ips;
    domain_fqdn;
    domain_iam_role_name;
    domain_ou;
    enabled_cloudwatch_logs_exports;
    engine;
    engine_version;
    final_snapshot_identifier;
    iam_database_authentication_enabled;
    id;
    identifier;
    identifier_prefix;
    instance_class;
    iops;
    kms_key_id;
    license_model;
    maintenance_window;
    manage_master_user_password;
    master_user_secret_kms_key_id;
    max_allocated_storage;
    monitoring_interval;
    monitoring_role_arn;
    multi_az;
    nchar_character_set_name;
    network_type;
    option_group_name;
    parameter_group_name;
    password;
    performance_insights_enabled;
    performance_insights_kms_key_id;
    performance_insights_retention_period;
    port;
    publicly_accessible;
    replica_mode;
    replicate_source_db;
    skip_final_snapshot;
    snapshot_identifier;
    storage_encrypted;
    storage_throughput;
    storage_type;
    tags;
    tags_all;
    timezone;
    username;
    vpc_security_group_ids;
    blue_green_update;
    restore_to_point_in_time;
    s3_import;
    timeouts;
  }

type t = {
  address : string prop;
  allocated_storage : float prop;
  allow_major_version_upgrade : bool prop;
  apply_immediately : bool prop;
  arn : string prop;
  auto_minor_version_upgrade : bool prop;
  availability_zone : string prop;
  backup_retention_period : float prop;
  backup_target : string prop;
  backup_window : string prop;
  ca_cert_identifier : string prop;
  character_set_name : string prop;
  copy_tags_to_snapshot : bool prop;
  custom_iam_instance_profile : string prop;
  customer_owned_ip_enabled : bool prop;
  db_name : string prop;
  db_subnet_group_name : string prop;
  delete_automated_backups : bool prop;
  deletion_protection : bool prop;
  domain : string prop;
  domain_auth_secret_arn : string prop;
  domain_dns_ips : string list prop;
  domain_fqdn : string prop;
  domain_iam_role_name : string prop;
  domain_ou : string prop;
  enabled_cloudwatch_logs_exports : string list prop;
  endpoint : string prop;
  engine : string prop;
  engine_version : string prop;
  engine_version_actual : string prop;
  final_snapshot_identifier : string prop;
  hosted_zone_id : string prop;
  iam_database_authentication_enabled : bool prop;
  id : string prop;
  identifier : string prop;
  identifier_prefix : string prop;
  instance_class : string prop;
  iops : float prop;
  kms_key_id : string prop;
  latest_restorable_time : string prop;
  license_model : string prop;
  listener_endpoint : listener_endpoint list prop;
  maintenance_window : string prop;
  manage_master_user_password : bool prop;
  master_user_secret : master_user_secret list prop;
  master_user_secret_kms_key_id : string prop;
  max_allocated_storage : float prop;
  monitoring_interval : float prop;
  monitoring_role_arn : string prop;
  multi_az : bool prop;
  nchar_character_set_name : string prop;
  network_type : string prop;
  option_group_name : string prop;
  parameter_group_name : string prop;
  password : string prop;
  performance_insights_enabled : bool prop;
  performance_insights_kms_key_id : string prop;
  performance_insights_retention_period : float prop;
  port : float prop;
  publicly_accessible : bool prop;
  replica_mode : string prop;
  replicas : string list prop;
  replicate_source_db : string prop;
  resource_id : string prop;
  skip_final_snapshot : bool prop;
  snapshot_identifier : string prop;
  status : string prop;
  storage_encrypted : bool prop;
  storage_throughput : float prop;
  storage_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  timezone : string prop;
  username : string prop;
  vpc_security_group_ids : string list prop;
}

let make ?allocated_storage ?allow_major_version_upgrade
    ?apply_immediately ?auto_minor_version_upgrade ?availability_zone
    ?backup_retention_period ?backup_target ?backup_window
    ?ca_cert_identifier ?character_set_name ?copy_tags_to_snapshot
    ?custom_iam_instance_profile ?customer_owned_ip_enabled ?db_name
    ?db_subnet_group_name ?delete_automated_backups
    ?deletion_protection ?domain ?domain_auth_secret_arn
    ?domain_dns_ips ?domain_fqdn ?domain_iam_role_name ?domain_ou
    ?enabled_cloudwatch_logs_exports ?engine ?engine_version
    ?final_snapshot_identifier ?iam_database_authentication_enabled
    ?id ?identifier ?identifier_prefix ?iops ?kms_key_id
    ?license_model ?maintenance_window ?manage_master_user_password
    ?master_user_secret_kms_key_id ?max_allocated_storage
    ?monitoring_interval ?monitoring_role_arn ?multi_az
    ?nchar_character_set_name ?network_type ?option_group_name
    ?parameter_group_name ?password ?performance_insights_enabled
    ?performance_insights_kms_key_id
    ?performance_insights_retention_period ?port ?publicly_accessible
    ?replica_mode ?replicate_source_db ?skip_final_snapshot
    ?snapshot_identifier ?storage_encrypted ?storage_throughput
    ?storage_type ?tags ?tags_all ?timezone ?username
    ?vpc_security_group_ids ?timeouts ~instance_class
    ~blue_green_update ~restore_to_point_in_time ~s3_import __id =
  let __type = "aws_db_instance" in
  let __attrs =
    ({
       address = Prop.computed __type __id "address";
       allocated_storage =
         Prop.computed __type __id "allocated_storage";
       allow_major_version_upgrade =
         Prop.computed __type __id "allow_major_version_upgrade";
       apply_immediately =
         Prop.computed __type __id "apply_immediately";
       arn = Prop.computed __type __id "arn";
       auto_minor_version_upgrade =
         Prop.computed __type __id "auto_minor_version_upgrade";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       backup_retention_period =
         Prop.computed __type __id "backup_retention_period";
       backup_target = Prop.computed __type __id "backup_target";
       backup_window = Prop.computed __type __id "backup_window";
       ca_cert_identifier =
         Prop.computed __type __id "ca_cert_identifier";
       character_set_name =
         Prop.computed __type __id "character_set_name";
       copy_tags_to_snapshot =
         Prop.computed __type __id "copy_tags_to_snapshot";
       custom_iam_instance_profile =
         Prop.computed __type __id "custom_iam_instance_profile";
       customer_owned_ip_enabled =
         Prop.computed __type __id "customer_owned_ip_enabled";
       db_name = Prop.computed __type __id "db_name";
       db_subnet_group_name =
         Prop.computed __type __id "db_subnet_group_name";
       delete_automated_backups =
         Prop.computed __type __id "delete_automated_backups";
       deletion_protection =
         Prop.computed __type __id "deletion_protection";
       domain = Prop.computed __type __id "domain";
       domain_auth_secret_arn =
         Prop.computed __type __id "domain_auth_secret_arn";
       domain_dns_ips = Prop.computed __type __id "domain_dns_ips";
       domain_fqdn = Prop.computed __type __id "domain_fqdn";
       domain_iam_role_name =
         Prop.computed __type __id "domain_iam_role_name";
       domain_ou = Prop.computed __type __id "domain_ou";
       enabled_cloudwatch_logs_exports =
         Prop.computed __type __id "enabled_cloudwatch_logs_exports";
       endpoint = Prop.computed __type __id "endpoint";
       engine = Prop.computed __type __id "engine";
       engine_version = Prop.computed __type __id "engine_version";
       engine_version_actual =
         Prop.computed __type __id "engine_version_actual";
       final_snapshot_identifier =
         Prop.computed __type __id "final_snapshot_identifier";
       hosted_zone_id = Prop.computed __type __id "hosted_zone_id";
       iam_database_authentication_enabled =
         Prop.computed __type __id
           "iam_database_authentication_enabled";
       id = Prop.computed __type __id "id";
       identifier = Prop.computed __type __id "identifier";
       identifier_prefix =
         Prop.computed __type __id "identifier_prefix";
       instance_class = Prop.computed __type __id "instance_class";
       iops = Prop.computed __type __id "iops";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       latest_restorable_time =
         Prop.computed __type __id "latest_restorable_time";
       license_model = Prop.computed __type __id "license_model";
       listener_endpoint =
         Prop.computed __type __id "listener_endpoint";
       maintenance_window =
         Prop.computed __type __id "maintenance_window";
       manage_master_user_password =
         Prop.computed __type __id "manage_master_user_password";
       master_user_secret =
         Prop.computed __type __id "master_user_secret";
       master_user_secret_kms_key_id =
         Prop.computed __type __id "master_user_secret_kms_key_id";
       max_allocated_storage =
         Prop.computed __type __id "max_allocated_storage";
       monitoring_interval =
         Prop.computed __type __id "monitoring_interval";
       monitoring_role_arn =
         Prop.computed __type __id "monitoring_role_arn";
       multi_az = Prop.computed __type __id "multi_az";
       nchar_character_set_name =
         Prop.computed __type __id "nchar_character_set_name";
       network_type = Prop.computed __type __id "network_type";
       option_group_name =
         Prop.computed __type __id "option_group_name";
       parameter_group_name =
         Prop.computed __type __id "parameter_group_name";
       password = Prop.computed __type __id "password";
       performance_insights_enabled =
         Prop.computed __type __id "performance_insights_enabled";
       performance_insights_kms_key_id =
         Prop.computed __type __id "performance_insights_kms_key_id";
       performance_insights_retention_period =
         Prop.computed __type __id
           "performance_insights_retention_period";
       port = Prop.computed __type __id "port";
       publicly_accessible =
         Prop.computed __type __id "publicly_accessible";
       replica_mode = Prop.computed __type __id "replica_mode";
       replicas = Prop.computed __type __id "replicas";
       replicate_source_db =
         Prop.computed __type __id "replicate_source_db";
       resource_id = Prop.computed __type __id "resource_id";
       skip_final_snapshot =
         Prop.computed __type __id "skip_final_snapshot";
       snapshot_identifier =
         Prop.computed __type __id "snapshot_identifier";
       status = Prop.computed __type __id "status";
       storage_encrypted =
         Prop.computed __type __id "storage_encrypted";
       storage_throughput =
         Prop.computed __type __id "storage_throughput";
       storage_type = Prop.computed __type __id "storage_type";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       timezone = Prop.computed __type __id "timezone";
       username = Prop.computed __type __id "username";
       vpc_security_group_ids =
         Prop.computed __type __id "vpc_security_group_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_db_instance
        (aws_db_instance ?allocated_storage
           ?allow_major_version_upgrade ?apply_immediately
           ?auto_minor_version_upgrade ?availability_zone
           ?backup_retention_period ?backup_target ?backup_window
           ?ca_cert_identifier ?character_set_name
           ?copy_tags_to_snapshot ?custom_iam_instance_profile
           ?customer_owned_ip_enabled ?db_name ?db_subnet_group_name
           ?delete_automated_backups ?deletion_protection ?domain
           ?domain_auth_secret_arn ?domain_dns_ips ?domain_fqdn
           ?domain_iam_role_name ?domain_ou
           ?enabled_cloudwatch_logs_exports ?engine ?engine_version
           ?final_snapshot_identifier
           ?iam_database_authentication_enabled ?id ?identifier
           ?identifier_prefix ?iops ?kms_key_id ?license_model
           ?maintenance_window ?manage_master_user_password
           ?master_user_secret_kms_key_id ?max_allocated_storage
           ?monitoring_interval ?monitoring_role_arn ?multi_az
           ?nchar_character_set_name ?network_type ?option_group_name
           ?parameter_group_name ?password
           ?performance_insights_enabled
           ?performance_insights_kms_key_id
           ?performance_insights_retention_period ?port
           ?publicly_accessible ?replica_mode ?replicate_source_db
           ?skip_final_snapshot ?snapshot_identifier
           ?storage_encrypted ?storage_throughput ?storage_type ?tags
           ?tags_all ?timezone ?username ?vpc_security_group_ids
           ?timeouts ~instance_class ~blue_green_update
           ~restore_to_point_in_time ~s3_import ());
    attrs = __attrs;
  }

let register ?tf_module ?allocated_storage
    ?allow_major_version_upgrade ?apply_immediately
    ?auto_minor_version_upgrade ?availability_zone
    ?backup_retention_period ?backup_target ?backup_window
    ?ca_cert_identifier ?character_set_name ?copy_tags_to_snapshot
    ?custom_iam_instance_profile ?customer_owned_ip_enabled ?db_name
    ?db_subnet_group_name ?delete_automated_backups
    ?deletion_protection ?domain ?domain_auth_secret_arn
    ?domain_dns_ips ?domain_fqdn ?domain_iam_role_name ?domain_ou
    ?enabled_cloudwatch_logs_exports ?engine ?engine_version
    ?final_snapshot_identifier ?iam_database_authentication_enabled
    ?id ?identifier ?identifier_prefix ?iops ?kms_key_id
    ?license_model ?maintenance_window ?manage_master_user_password
    ?master_user_secret_kms_key_id ?max_allocated_storage
    ?monitoring_interval ?monitoring_role_arn ?multi_az
    ?nchar_character_set_name ?network_type ?option_group_name
    ?parameter_group_name ?password ?performance_insights_enabled
    ?performance_insights_kms_key_id
    ?performance_insights_retention_period ?port ?publicly_accessible
    ?replica_mode ?replicate_source_db ?skip_final_snapshot
    ?snapshot_identifier ?storage_encrypted ?storage_throughput
    ?storage_type ?tags ?tags_all ?timezone ?username
    ?vpc_security_group_ids ?timeouts ~instance_class
    ~blue_green_update ~restore_to_point_in_time ~s3_import __id =
  let (r : _ Tf_core.resource) =
    make ?allocated_storage ?allow_major_version_upgrade
      ?apply_immediately ?auto_minor_version_upgrade
      ?availability_zone ?backup_retention_period ?backup_target
      ?backup_window ?ca_cert_identifier ?character_set_name
      ?copy_tags_to_snapshot ?custom_iam_instance_profile
      ?customer_owned_ip_enabled ?db_name ?db_subnet_group_name
      ?delete_automated_backups ?deletion_protection ?domain
      ?domain_auth_secret_arn ?domain_dns_ips ?domain_fqdn
      ?domain_iam_role_name ?domain_ou
      ?enabled_cloudwatch_logs_exports ?engine ?engine_version
      ?final_snapshot_identifier ?iam_database_authentication_enabled
      ?id ?identifier ?identifier_prefix ?iops ?kms_key_id
      ?license_model ?maintenance_window ?manage_master_user_password
      ?master_user_secret_kms_key_id ?max_allocated_storage
      ?monitoring_interval ?monitoring_role_arn ?multi_az
      ?nchar_character_set_name ?network_type ?option_group_name
      ?parameter_group_name ?password ?performance_insights_enabled
      ?performance_insights_kms_key_id
      ?performance_insights_retention_period ?port
      ?publicly_accessible ?replica_mode ?replicate_source_db
      ?skip_final_snapshot ?snapshot_identifier ?storage_encrypted
      ?storage_throughput ?storage_type ?tags ?tags_all ?timezone
      ?username ?vpc_security_group_ids ?timeouts ~instance_class
      ~blue_green_update ~restore_to_point_in_time ~s3_import __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
