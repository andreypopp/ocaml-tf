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
  auto_minor_version_upgrade : bool option; [@option]
      (** auto_minor_version_upgrade *)
  cluster_identifier : string;  (** cluster_identifier *)
  engine : string option; [@option]  (** engine *)
  instance_class : string;  (** instance_class *)
  neptune_parameter_group_name : string option; [@option]
      (** neptune_parameter_group_name *)
  port : float option; [@option]  (** port *)
  promotion_tier : float option; [@option]  (** promotion_tier *)
  publicly_accessible : bool option; [@option]
      (** publicly_accessible *)
  skip_final_snapshot : bool option; [@option]
      (** skip_final_snapshot *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_neptune_cluster_instance__timeouts option;
}
[@@deriving yojson_of]
(** aws_neptune_cluster_instance *)

let aws_neptune_cluster_instance ?auto_minor_version_upgrade ?engine
    ?neptune_parameter_group_name ?port ?promotion_tier
    ?publicly_accessible ?skip_final_snapshot ?tags ?timeouts
    ~cluster_identifier ~instance_class __resource_id =
  let __resource_type = "aws_neptune_cluster_instance" in
  let __resource =
    {
      auto_minor_version_upgrade;
      cluster_identifier;
      engine;
      instance_class;
      neptune_parameter_group_name;
      port;
      promotion_tier;
      publicly_accessible;
      skip_final_snapshot;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_neptune_cluster_instance __resource);
  ()
