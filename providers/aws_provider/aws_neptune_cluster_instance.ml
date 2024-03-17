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
