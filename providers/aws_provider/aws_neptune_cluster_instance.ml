(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_neptune_cluster_instance__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_neptune_cluster_instance__timeouts *)

type aws_neptune_cluster_instance = {
  apply_immediately : bool prop option; [@option]
      (** apply_immediately *)
  auto_minor_version_upgrade : bool prop option; [@option]
      (** auto_minor_version_upgrade *)
  availability_zone : string prop option; [@option]
      (** availability_zone *)
  cluster_identifier : string prop;  (** cluster_identifier *)
  engine : string prop option; [@option]  (** engine *)
  engine_version : string prop option; [@option]
      (** engine_version *)
  id : string prop option; [@option]  (** id *)
  identifier : string prop option; [@option]  (** identifier *)
  identifier_prefix : string prop option; [@option]
      (** identifier_prefix *)
  instance_class : string prop;  (** instance_class *)
  neptune_parameter_group_name : string prop option; [@option]
      (** neptune_parameter_group_name *)
  neptune_subnet_group_name : string prop option; [@option]
      (** neptune_subnet_group_name *)
  port : float prop option; [@option]  (** port *)
  preferred_backup_window : string prop option; [@option]
      (** preferred_backup_window *)
  preferred_maintenance_window : string prop option; [@option]
      (** preferred_maintenance_window *)
  promotion_tier : float prop option; [@option]
      (** promotion_tier *)
  publicly_accessible : bool prop option; [@option]
      (** publicly_accessible *)
  skip_final_snapshot : bool prop option; [@option]
      (** skip_final_snapshot *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : aws_neptune_cluster_instance__timeouts option;
}
[@@deriving yojson_of]
(** aws_neptune_cluster_instance *)

type t = {
  address : string prop;
  apply_immediately : bool prop;
  arn : string prop;
  auto_minor_version_upgrade : bool prop;
  availability_zone : string prop;
  cluster_identifier : string prop;
  dbi_resource_id : string prop;
  endpoint : string prop;
  engine : string prop;
  engine_version : string prop;
  id : string prop;
  identifier : string prop;
  identifier_prefix : string prop;
  instance_class : string prop;
  kms_key_arn : string prop;
  neptune_parameter_group_name : string prop;
  neptune_subnet_group_name : string prop;
  port : float prop;
  preferred_backup_window : string prop;
  preferred_maintenance_window : string prop;
  promotion_tier : float prop;
  publicly_accessible : bool prop;
  skip_final_snapshot : bool prop;
  storage_encrypted : bool prop;
  storage_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  writer : bool prop;
}

let aws_neptune_cluster_instance ?apply_immediately
    ?auto_minor_version_upgrade ?availability_zone ?engine
    ?engine_version ?id ?identifier ?identifier_prefix
    ?neptune_parameter_group_name ?neptune_subnet_group_name ?port
    ?preferred_backup_window ?preferred_maintenance_window
    ?promotion_tier ?publicly_accessible ?skip_final_snapshot ?tags
    ?tags_all ?timeouts ~cluster_identifier ~instance_class
    __resource_id =
  let __resource_type = "aws_neptune_cluster_instance" in
  let __resource =
    ({
       apply_immediately;
       auto_minor_version_upgrade;
       availability_zone;
       cluster_identifier;
       engine;
       engine_version;
       id;
       identifier;
       identifier_prefix;
       instance_class;
       neptune_parameter_group_name;
       neptune_subnet_group_name;
       port;
       preferred_backup_window;
       preferred_maintenance_window;
       promotion_tier;
       publicly_accessible;
       skip_final_snapshot;
       tags;
       tags_all;
       timeouts;
     }
      : aws_neptune_cluster_instance)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_neptune_cluster_instance __resource);
  let __resource_attributes =
    ({
       address =
         Prop.computed __resource_type __resource_id "address";
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
       cluster_identifier =
         Prop.computed __resource_type __resource_id
           "cluster_identifier";
       dbi_resource_id =
         Prop.computed __resource_type __resource_id
           "dbi_resource_id";
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
       kms_key_arn =
         Prop.computed __resource_type __resource_id "kms_key_arn";
       neptune_parameter_group_name =
         Prop.computed __resource_type __resource_id
           "neptune_parameter_group_name";
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
       promotion_tier =
         Prop.computed __resource_type __resource_id "promotion_tier";
       publicly_accessible =
         Prop.computed __resource_type __resource_id
           "publicly_accessible";
       skip_final_snapshot =
         Prop.computed __resource_type __resource_id
           "skip_final_snapshot";
       storage_encrypted =
         Prop.computed __resource_type __resource_id
           "storage_encrypted";
       storage_type =
         Prop.computed __resource_type __resource_id "storage_type";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       writer = Prop.computed __resource_type __resource_id "writer";
     }
      : t)
  in
  __resource_attributes
