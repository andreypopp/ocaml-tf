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

let aws_lightsail_database ?apply_immediately ?availability_zone
    ?backup_retention_enabled ?final_snapshot_name ?id
    ?preferred_backup_window ?preferred_maintenance_window
    ?publicly_accessible ?skip_final_snapshot ?tags ?tags_all
    ~blueprint_id ~bundle_id ~master_database_name ~master_password
    ~master_username ~relational_database_name __resource_id =
  let __resource_type = "aws_lightsail_database" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_database __resource);
  ()
