(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_database = {
  backup_retention_enabled : bool option; [@option]
      (** backup_retention_enabled *)
  blueprint_id : string;  (** blueprint_id *)
  bundle_id : string;  (** bundle_id *)
  final_snapshot_name : string option; [@option]
      (** final_snapshot_name *)
  master_database_name : string;  (** master_database_name *)
  master_password : string;  (** master_password *)
  master_username : string;  (** master_username *)
  publicly_accessible : bool option; [@option]
      (** publicly_accessible *)
  relational_database_name : string;  (** relational_database_name *)
  skip_final_snapshot : bool option; [@option]
      (** skip_final_snapshot *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_lightsail_database *)

let aws_lightsail_database ?backup_retention_enabled
    ?final_snapshot_name ?publicly_accessible ?skip_final_snapshot
    ?tags ~blueprint_id ~bundle_id ~master_database_name
    ~master_password ~master_username ~relational_database_name
    __resource_id =
  let __resource_type = "aws_lightsail_database" in
  let __resource =
    {
      backup_retention_enabled;
      blueprint_id;
      bundle_id;
      final_snapshot_name;
      master_database_name;
      master_password;
      master_username;
      publicly_accessible;
      relational_database_name;
      skip_final_snapshot;
      tags;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_database __resource);
  ()
