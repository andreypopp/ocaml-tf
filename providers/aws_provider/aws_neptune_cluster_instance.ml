(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_neptune_cluster_instance__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_neptune_cluster_instance__timeouts *)

type aws_neptune_cluster_instance = {
  apply_immediately : bool option; [@option]
      (** apply_immediately *)
  auto_minor_version_upgrade : bool option; [@option]
      (** auto_minor_version_upgrade *)
  availability_zone : string option; [@option]
      (** availability_zone *)
  cluster_identifier : string;  (** cluster_identifier *)
  engine : string option; [@option]  (** engine *)
  engine_version : string option; [@option]  (** engine_version *)
  id : string option; [@option]  (** id *)
  identifier : string option; [@option]  (** identifier *)
  identifier_prefix : string option; [@option]
      (** identifier_prefix *)
  instance_class : string;  (** instance_class *)
  neptune_parameter_group_name : string option; [@option]
      (** neptune_parameter_group_name *)
  neptune_subnet_group_name : string option; [@option]
      (** neptune_subnet_group_name *)
  port : float option; [@option]  (** port *)
  preferred_backup_window : string option; [@option]
      (** preferred_backup_window *)
  preferred_maintenance_window : string option; [@option]
      (** preferred_maintenance_window *)
  promotion_tier : float option; [@option]  (** promotion_tier *)
  publicly_accessible : bool option; [@option]
      (** publicly_accessible *)
  skip_final_snapshot : bool option; [@option]
      (** skip_final_snapshot *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  timeouts : aws_neptune_cluster_instance__timeouts option;
}
[@@deriving yojson_of]
(** aws_neptune_cluster_instance *)

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
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_neptune_cluster_instance __resource);
  ()
