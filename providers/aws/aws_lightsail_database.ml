(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_database = {
  apply_immediately : bool prop option; [@option]
      (** apply_immediately *)
  availability_zone : string prop option; [@option]
      (** availability_zone *)
  backup_retention_enabled : bool prop option; [@option]
      (** backup_retention_enabled *)
  blueprint_id : string prop;  (** blueprint_id *)
  bundle_id : string prop;  (** bundle_id *)
  final_snapshot_name : string prop option; [@option]
      (** final_snapshot_name *)
  id : string prop option; [@option]  (** id *)
  master_database_name : string prop;  (** master_database_name *)
  master_password : string prop;  (** master_password *)
  master_username : string prop;  (** master_username *)
  preferred_backup_window : string prop option; [@option]
      (** preferred_backup_window *)
  preferred_maintenance_window : string prop option; [@option]
      (** preferred_maintenance_window *)
  publicly_accessible : bool prop option; [@option]
      (** publicly_accessible *)
  relational_database_name : string prop;
      (** relational_database_name *)
  skip_final_snapshot : bool prop option; [@option]
      (** skip_final_snapshot *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_lightsail_database *)

type t = {
  apply_immediately : bool prop;
  arn : string prop;
  availability_zone : string prop;
  backup_retention_enabled : bool prop;
  blueprint_id : string prop;
  bundle_id : string prop;
  ca_certificate_identifier : string prop;
  cpu_count : float prop;
  created_at : string prop;
  disk_size : float prop;
  engine : string prop;
  engine_version : string prop;
  final_snapshot_name : string prop;
  id : string prop;
  master_database_name : string prop;
  master_endpoint_address : string prop;
  master_endpoint_port : float prop;
  master_password : string prop;
  master_username : string prop;
  preferred_backup_window : string prop;
  preferred_maintenance_window : string prop;
  publicly_accessible : bool prop;
  ram_size : float prop;
  relational_database_name : string prop;
  secondary_availability_zone : string prop;
  skip_final_snapshot : bool prop;
  support_code : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_lightsail_database ?apply_immediately ?availability_zone
    ?backup_retention_enabled ?final_snapshot_name ?id
    ?preferred_backup_window ?preferred_maintenance_window
    ?publicly_accessible ?skip_final_snapshot ?tags ?tags_all
    ~blueprint_id ~bundle_id ~master_database_name ~master_password
    ~master_username ~relational_database_name __resource_id =
  let __resource_type = "aws_lightsail_database" in
  let __resource =
    ({
       apply_immediately;
       availability_zone;
       backup_retention_enabled;
       blueprint_id;
       bundle_id;
       final_snapshot_name;
       id;
       master_database_name;
       master_password;
       master_username;
       preferred_backup_window;
       preferred_maintenance_window;
       publicly_accessible;
       relational_database_name;
       skip_final_snapshot;
       tags;
       tags_all;
     }
      : aws_lightsail_database)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_database __resource);
  let __resource_attributes =
    ({
       apply_immediately =
         Prop.computed __resource_type __resource_id
           "apply_immediately";
       arn = Prop.computed __resource_type __resource_id "arn";
       availability_zone =
         Prop.computed __resource_type __resource_id
           "availability_zone";
       backup_retention_enabled =
         Prop.computed __resource_type __resource_id
           "backup_retention_enabled";
       blueprint_id =
         Prop.computed __resource_type __resource_id "blueprint_id";
       bundle_id =
         Prop.computed __resource_type __resource_id "bundle_id";
       ca_certificate_identifier =
         Prop.computed __resource_type __resource_id
           "ca_certificate_identifier";
       cpu_count =
         Prop.computed __resource_type __resource_id "cpu_count";
       created_at =
         Prop.computed __resource_type __resource_id "created_at";
       disk_size =
         Prop.computed __resource_type __resource_id "disk_size";
       engine = Prop.computed __resource_type __resource_id "engine";
       engine_version =
         Prop.computed __resource_type __resource_id "engine_version";
       final_snapshot_name =
         Prop.computed __resource_type __resource_id
           "final_snapshot_name";
       id = Prop.computed __resource_type __resource_id "id";
       master_database_name =
         Prop.computed __resource_type __resource_id
           "master_database_name";
       master_endpoint_address =
         Prop.computed __resource_type __resource_id
           "master_endpoint_address";
       master_endpoint_port =
         Prop.computed __resource_type __resource_id
           "master_endpoint_port";
       master_password =
         Prop.computed __resource_type __resource_id
           "master_password";
       master_username =
         Prop.computed __resource_type __resource_id
           "master_username";
       preferred_backup_window =
         Prop.computed __resource_type __resource_id
           "preferred_backup_window";
       preferred_maintenance_window =
         Prop.computed __resource_type __resource_id
           "preferred_maintenance_window";
       publicly_accessible =
         Prop.computed __resource_type __resource_id
           "publicly_accessible";
       ram_size =
         Prop.computed __resource_type __resource_id "ram_size";
       relational_database_name =
         Prop.computed __resource_type __resource_id
           "relational_database_name";
       secondary_availability_zone =
         Prop.computed __resource_type __resource_id
           "secondary_availability_zone";
       skip_final_snapshot =
         Prop.computed __resource_type __resource_id
           "skip_final_snapshot";
       support_code =
         Prop.computed __resource_type __resource_id "support_code";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
