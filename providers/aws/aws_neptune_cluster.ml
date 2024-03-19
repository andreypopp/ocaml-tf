(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type serverless_v2_scaling_configuration = {
  max_capacity : float prop option; [@option]  (** max_capacity *)
  min_capacity : float prop option; [@option]  (** min_capacity *)
}
[@@deriving yojson_of]
(** serverless_v2_scaling_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_neptune_cluster = {
  allow_major_version_upgrade : bool prop option; [@option]
      (** allow_major_version_upgrade *)
  apply_immediately : bool prop option; [@option]
      (** apply_immediately *)
  availability_zones : string prop list option; [@option]
      (** availability_zones *)
  backup_retention_period : float prop option; [@option]
      (** backup_retention_period *)
  cluster_identifier : string prop option; [@option]
      (** cluster_identifier *)
  cluster_identifier_prefix : string prop option; [@option]
      (** cluster_identifier_prefix *)
  copy_tags_to_snapshot : bool prop option; [@option]
      (** copy_tags_to_snapshot *)
  deletion_protection : bool prop option; [@option]
      (** deletion_protection *)
  enable_cloudwatch_logs_exports : string prop list option; [@option]
      (** enable_cloudwatch_logs_exports *)
  engine : string prop option; [@option]  (** engine *)
  engine_version : string prop option; [@option]
      (** engine_version *)
  final_snapshot_identifier : string prop option; [@option]
      (** final_snapshot_identifier *)
  global_cluster_identifier : string prop option; [@option]
      (** global_cluster_identifier *)
  iam_database_authentication_enabled : bool prop option; [@option]
      (** iam_database_authentication_enabled *)
  iam_roles : string prop list option; [@option]  (** iam_roles *)
  id : string prop option; [@option]  (** id *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  neptune_cluster_parameter_group_name : string prop option;
      [@option]
      (** neptune_cluster_parameter_group_name *)
  neptune_instance_parameter_group_name : string prop option;
      [@option]
      (** neptune_instance_parameter_group_name *)
  neptune_subnet_group_name : string prop option; [@option]
      (** neptune_subnet_group_name *)
  port : float prop option; [@option]  (** port *)
  preferred_backup_window : string prop option; [@option]
      (** preferred_backup_window *)
  preferred_maintenance_window : string prop option; [@option]
      (** preferred_maintenance_window *)
  replication_source_identifier : string prop option; [@option]
      (** replication_source_identifier *)
  skip_final_snapshot : bool prop option; [@option]
      (** skip_final_snapshot *)
  snapshot_identifier : string prop option; [@option]
      (** snapshot_identifier *)
  storage_encrypted : bool prop option; [@option]
      (** storage_encrypted *)
  storage_type : string prop option; [@option]  (** storage_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_security_group_ids : string prop list option; [@option]
      (** vpc_security_group_ids *)
  serverless_v2_scaling_configuration :
    serverless_v2_scaling_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_neptune_cluster *)

let serverless_v2_scaling_configuration ?max_capacity ?min_capacity
    () : serverless_v2_scaling_configuration =
  { max_capacity; min_capacity }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_neptune_cluster ?allow_major_version_upgrade
    ?apply_immediately ?availability_zones ?backup_retention_period
    ?cluster_identifier ?cluster_identifier_prefix
    ?copy_tags_to_snapshot ?deletion_protection
    ?enable_cloudwatch_logs_exports ?engine ?engine_version
    ?final_snapshot_identifier ?global_cluster_identifier
    ?iam_database_authentication_enabled ?iam_roles ?id ?kms_key_arn
    ?neptune_cluster_parameter_group_name
    ?neptune_instance_parameter_group_name ?neptune_subnet_group_name
    ?port ?preferred_backup_window ?preferred_maintenance_window
    ?replication_source_identifier ?skip_final_snapshot
    ?snapshot_identifier ?storage_encrypted ?storage_type ?tags
    ?tags_all ?vpc_security_group_ids ?timeouts
    ~serverless_v2_scaling_configuration () : aws_neptune_cluster =
  {
    allow_major_version_upgrade;
    apply_immediately;
    availability_zones;
    backup_retention_period;
    cluster_identifier;
    cluster_identifier_prefix;
    copy_tags_to_snapshot;
    deletion_protection;
    enable_cloudwatch_logs_exports;
    engine;
    engine_version;
    final_snapshot_identifier;
    global_cluster_identifier;
    iam_database_authentication_enabled;
    iam_roles;
    id;
    kms_key_arn;
    neptune_cluster_parameter_group_name;
    neptune_instance_parameter_group_name;
    neptune_subnet_group_name;
    port;
    preferred_backup_window;
    preferred_maintenance_window;
    replication_source_identifier;
    skip_final_snapshot;
    snapshot_identifier;
    storage_encrypted;
    storage_type;
    tags;
    tags_all;
    vpc_security_group_ids;
    serverless_v2_scaling_configuration;
    timeouts;
  }

type t = {
  allow_major_version_upgrade : bool prop;
  apply_immediately : bool prop;
  arn : string prop;
  availability_zones : string list prop;
  backup_retention_period : float prop;
  cluster_identifier : string prop;
  cluster_identifier_prefix : string prop;
  cluster_members : string list prop;
  cluster_resource_id : string prop;
  copy_tags_to_snapshot : bool prop;
  deletion_protection : bool prop;
  enable_cloudwatch_logs_exports : string list prop;
  endpoint : string prop;
  engine : string prop;
  engine_version : string prop;
  final_snapshot_identifier : string prop;
  global_cluster_identifier : string prop;
  hosted_zone_id : string prop;
  iam_database_authentication_enabled : bool prop;
  iam_roles : string list prop;
  id : string prop;
  kms_key_arn : string prop;
  neptune_cluster_parameter_group_name : string prop;
  neptune_instance_parameter_group_name : string prop;
  neptune_subnet_group_name : string prop;
  port : float prop;
  preferred_backup_window : string prop;
  preferred_maintenance_window : string prop;
  reader_endpoint : string prop;
  replication_source_identifier : string prop;
  skip_final_snapshot : bool prop;
  snapshot_identifier : string prop;
  storage_encrypted : bool prop;
  storage_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_security_group_ids : string list prop;
}

let register ?tf_module ?allow_major_version_upgrade
    ?apply_immediately ?availability_zones ?backup_retention_period
    ?cluster_identifier ?cluster_identifier_prefix
    ?copy_tags_to_snapshot ?deletion_protection
    ?enable_cloudwatch_logs_exports ?engine ?engine_version
    ?final_snapshot_identifier ?global_cluster_identifier
    ?iam_database_authentication_enabled ?iam_roles ?id ?kms_key_arn
    ?neptune_cluster_parameter_group_name
    ?neptune_instance_parameter_group_name ?neptune_subnet_group_name
    ?port ?preferred_backup_window ?preferred_maintenance_window
    ?replication_source_identifier ?skip_final_snapshot
    ?snapshot_identifier ?storage_encrypted ?storage_type ?tags
    ?tags_all ?vpc_security_group_ids ?timeouts
    ~serverless_v2_scaling_configuration __resource_id =
  let __resource_type = "aws_neptune_cluster" in
  let __resource =
    aws_neptune_cluster ?allow_major_version_upgrade
      ?apply_immediately ?availability_zones ?backup_retention_period
      ?cluster_identifier ?cluster_identifier_prefix
      ?copy_tags_to_snapshot ?deletion_protection
      ?enable_cloudwatch_logs_exports ?engine ?engine_version
      ?final_snapshot_identifier ?global_cluster_identifier
      ?iam_database_authentication_enabled ?iam_roles ?id
      ?kms_key_arn ?neptune_cluster_parameter_group_name
      ?neptune_instance_parameter_group_name
      ?neptune_subnet_group_name ?port ?preferred_backup_window
      ?preferred_maintenance_window ?replication_source_identifier
      ?skip_final_snapshot ?snapshot_identifier ?storage_encrypted
      ?storage_type ?tags ?tags_all ?vpc_security_group_ids ?timeouts
      ~serverless_v2_scaling_configuration ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_neptune_cluster __resource);
  let __resource_attributes =
    ({
       allow_major_version_upgrade =
         Prop.computed __resource_type __resource_id
           "allow_major_version_upgrade";
       apply_immediately =
         Prop.computed __resource_type __resource_id
           "apply_immediately";
       arn = Prop.computed __resource_type __resource_id "arn";
       availability_zones =
         Prop.computed __resource_type __resource_id
           "availability_zones";
       backup_retention_period =
         Prop.computed __resource_type __resource_id
           "backup_retention_period";
       cluster_identifier =
         Prop.computed __resource_type __resource_id
           "cluster_identifier";
       cluster_identifier_prefix =
         Prop.computed __resource_type __resource_id
           "cluster_identifier_prefix";
       cluster_members =
         Prop.computed __resource_type __resource_id
           "cluster_members";
       cluster_resource_id =
         Prop.computed __resource_type __resource_id
           "cluster_resource_id";
       copy_tags_to_snapshot =
         Prop.computed __resource_type __resource_id
           "copy_tags_to_snapshot";
       deletion_protection =
         Prop.computed __resource_type __resource_id
           "deletion_protection";
       enable_cloudwatch_logs_exports =
         Prop.computed __resource_type __resource_id
           "enable_cloudwatch_logs_exports";
       endpoint =
         Prop.computed __resource_type __resource_id "endpoint";
       engine = Prop.computed __resource_type __resource_id "engine";
       engine_version =
         Prop.computed __resource_type __resource_id "engine_version";
       final_snapshot_identifier =
         Prop.computed __resource_type __resource_id
           "final_snapshot_identifier";
       global_cluster_identifier =
         Prop.computed __resource_type __resource_id
           "global_cluster_identifier";
       hosted_zone_id =
         Prop.computed __resource_type __resource_id "hosted_zone_id";
       iam_database_authentication_enabled =
         Prop.computed __resource_type __resource_id
           "iam_database_authentication_enabled";
       iam_roles =
         Prop.computed __resource_type __resource_id "iam_roles";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_arn =
         Prop.computed __resource_type __resource_id "kms_key_arn";
       neptune_cluster_parameter_group_name =
         Prop.computed __resource_type __resource_id
           "neptune_cluster_parameter_group_name";
       neptune_instance_parameter_group_name =
         Prop.computed __resource_type __resource_id
           "neptune_instance_parameter_group_name";
       neptune_subnet_group_name =
         Prop.computed __resource_type __resource_id
           "neptune_subnet_group_name";
       port = Prop.computed __resource_type __resource_id "port";
       preferred_backup_window =
         Prop.computed __resource_type __resource_id
           "preferred_backup_window";
       preferred_maintenance_window =
         Prop.computed __resource_type __resource_id
           "preferred_maintenance_window";
       reader_endpoint =
         Prop.computed __resource_type __resource_id
           "reader_endpoint";
       replication_source_identifier =
         Prop.computed __resource_type __resource_id
           "replication_source_identifier";
       skip_final_snapshot =
         Prop.computed __resource_type __resource_id
           "skip_final_snapshot";
       snapshot_identifier =
         Prop.computed __resource_type __resource_id
           "snapshot_identifier";
       storage_encrypted =
         Prop.computed __resource_type __resource_id
           "storage_encrypted";
       storage_type =
         Prop.computed __resource_type __resource_id "storage_type";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       vpc_security_group_ids =
         Prop.computed __resource_type __resource_id
           "vpc_security_group_ids";
     }
      : t)
  in
  __resource_attributes
