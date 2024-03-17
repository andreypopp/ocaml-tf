(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_rds_cluster_instance__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_rds_cluster_instance__timeouts *)

type aws_rds_cluster_instance = {
  auto_minor_version_upgrade : bool option; [@option]
      (** auto_minor_version_upgrade *)
  cluster_identifier : string;  (** cluster_identifier *)
  copy_tags_to_snapshot : bool option; [@option]
      (** copy_tags_to_snapshot *)
  custom_iam_instance_profile : string option; [@option]
      (** custom_iam_instance_profile *)
  engine : string;  (** engine *)
  instance_class : string;  (** instance_class *)
  monitoring_interval : float option; [@option]
      (** monitoring_interval *)
  promotion_tier : float option; [@option]  (** promotion_tier *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_rds_cluster_instance__timeouts option;
}
[@@deriving yojson_of]
(** aws_rds_cluster_instance *)

let aws_rds_cluster_instance ?auto_minor_version_upgrade
    ?copy_tags_to_snapshot ?custom_iam_instance_profile
    ?monitoring_interval ?promotion_tier ?tags ?timeouts
    ~cluster_identifier ~engine ~instance_class __resource_id =
  let __resource_type = "aws_rds_cluster_instance" in
  let __resource =
    {
      auto_minor_version_upgrade;
      cluster_identifier;
      copy_tags_to_snapshot;
      custom_iam_instance_profile;
      engine;
      instance_class;
      monitoring_interval;
      promotion_tier;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_rds_cluster_instance __resource);
  ()
