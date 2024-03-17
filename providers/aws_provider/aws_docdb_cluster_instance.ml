(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_docdb_cluster_instance__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_docdb_cluster_instance__timeouts *)

type aws_docdb_cluster_instance = {
  apply_immediately : bool prop option; [@option]
      (** apply_immediately *)
  auto_minor_version_upgrade : bool prop option; [@option]
      (** auto_minor_version_upgrade *)
  availability_zone : string prop option; [@option]
      (** availability_zone *)
  ca_cert_identifier : string prop option; [@option]
      (** ca_cert_identifier *)
  cluster_identifier : string prop;  (** cluster_identifier *)
  copy_tags_to_snapshot : bool prop option; [@option]
      (** copy_tags_to_snapshot *)
  enable_performance_insights : bool prop option; [@option]
      (** enable_performance_insights *)
  engine : string prop option; [@option]  (** engine *)
  id : string prop option; [@option]  (** id *)
  identifier : string prop option; [@option]  (** identifier *)
  identifier_prefix : string prop option; [@option]
      (** identifier_prefix *)
  instance_class : string prop;  (** instance_class *)
  performance_insights_kms_key_id : string prop option; [@option]
      (** performance_insights_kms_key_id *)
  preferred_maintenance_window : string prop option; [@option]
      (** preferred_maintenance_window *)
  promotion_tier : float prop option; [@option]
      (** promotion_tier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : aws_docdb_cluster_instance__timeouts option;
}
[@@deriving yojson_of]
(** aws_docdb_cluster_instance *)

type t = {
  apply_immediately : bool prop;
  arn : string prop;
  auto_minor_version_upgrade : bool prop;
  availability_zone : string prop;
  ca_cert_identifier : string prop;
  cluster_identifier : string prop;
  copy_tags_to_snapshot : bool prop;
  db_subnet_group_name : string prop;
  dbi_resource_id : string prop;
  enable_performance_insights : bool prop;
  endpoint : string prop;
  engine : string prop;
  engine_version : string prop;
  id : string prop;
  identifier : string prop;
  identifier_prefix : string prop;
  instance_class : string prop;
  kms_key_id : string prop;
  performance_insights_kms_key_id : string prop;
  port : float prop;
  preferred_backup_window : string prop;
  preferred_maintenance_window : string prop;
  promotion_tier : float prop;
  publicly_accessible : bool prop;
  storage_encrypted : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  writer : bool prop;
}

let aws_docdb_cluster_instance ?apply_immediately
    ?auto_minor_version_upgrade ?availability_zone
    ?ca_cert_identifier ?copy_tags_to_snapshot
    ?enable_performance_insights ?engine ?id ?identifier
    ?identifier_prefix ?performance_insights_kms_key_id
    ?preferred_maintenance_window ?promotion_tier ?tags ?tags_all
    ?timeouts ~cluster_identifier ~instance_class __resource_id =
  let __resource_type = "aws_docdb_cluster_instance" in
  let __resource =
    ({
       apply_immediately;
       auto_minor_version_upgrade;
       availability_zone;
       ca_cert_identifier;
       cluster_identifier;
       copy_tags_to_snapshot;
       enable_performance_insights;
       engine;
       id;
       identifier;
       identifier_prefix;
       instance_class;
       performance_insights_kms_key_id;
       preferred_maintenance_window;
       promotion_tier;
       tags;
       tags_all;
       timeouts;
     }
      : aws_docdb_cluster_instance)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_docdb_cluster_instance __resource);
  let __resource_attributes =
    ({
       apply_immediately =
         Prop.computed __resource_type __resource_id
           "apply_immediately";
       arn = Prop.computed __resource_type __resource_id "arn";
       auto_minor_version_upgrade =
         Prop.computed __resource_type __resource_id
           "auto_minor_version_upgrade";
       availability_zone =
         Prop.computed __resource_type __resource_id
           "availability_zone";
       ca_cert_identifier =
         Prop.computed __resource_type __resource_id
           "ca_cert_identifier";
       cluster_identifier =
         Prop.computed __resource_type __resource_id
           "cluster_identifier";
       copy_tags_to_snapshot =
         Prop.computed __resource_type __resource_id
           "copy_tags_to_snapshot";
       db_subnet_group_name =
         Prop.computed __resource_type __resource_id
           "db_subnet_group_name";
       dbi_resource_id =
         Prop.computed __resource_type __resource_id
           "dbi_resource_id";
       enable_performance_insights =
         Prop.computed __resource_type __resource_id
           "enable_performance_insights";
       endpoint =
         Prop.computed __resource_type __resource_id "endpoint";
       engine = Prop.computed __resource_type __resource_id "engine";
       engine_version =
         Prop.computed __resource_type __resource_id "engine_version";
       id = Prop.computed __resource_type __resource_id "id";
       identifier =
         Prop.computed __resource_type __resource_id "identifier";
       identifier_prefix =
         Prop.computed __resource_type __resource_id
           "identifier_prefix";
       instance_class =
         Prop.computed __resource_type __resource_id "instance_class";
       kms_key_id =
         Prop.computed __resource_type __resource_id "kms_key_id";
       performance_insights_kms_key_id =
         Prop.computed __resource_type __resource_id
           "performance_insights_kms_key_id";
       port = Prop.computed __resource_type __resource_id "port";
       preferred_backup_window =
         Prop.computed __resource_type __resource_id
           "preferred_backup_window";
       preferred_maintenance_window =
         Prop.computed __resource_type __resource_id
           "preferred_maintenance_window";
       promotion_tier =
         Prop.computed __resource_type __resource_id "promotion_tier";
       publicly_accessible =
         Prop.computed __resource_type __resource_id
           "publicly_accessible";
       storage_encrypted =
         Prop.computed __resource_type __resource_id
           "storage_encrypted";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       writer = Prop.computed __resource_type __resource_id "writer";
     }
      : t)
  in
  __resource_attributes
