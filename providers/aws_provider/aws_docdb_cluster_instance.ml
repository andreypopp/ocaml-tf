(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_docdb_cluster_instance__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_docdb_cluster_instance__timeouts *)

type aws_docdb_cluster_instance = {
  apply_immediately : bool option; [@option]
      (** apply_immediately *)
  auto_minor_version_upgrade : bool option; [@option]
      (** auto_minor_version_upgrade *)
  cluster_identifier : string;  (** cluster_identifier *)
  copy_tags_to_snapshot : bool option; [@option]
      (** copy_tags_to_snapshot *)
  enable_performance_insights : bool option; [@option]
      (** enable_performance_insights *)
  engine : string option; [@option]  (** engine *)
  instance_class : string;  (** instance_class *)
  promotion_tier : float option; [@option]  (** promotion_tier *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_docdb_cluster_instance__timeouts option;
}
[@@deriving yojson_of]
(** aws_docdb_cluster_instance *)

let aws_docdb_cluster_instance ?apply_immediately
    ?auto_minor_version_upgrade ?copy_tags_to_snapshot
    ?enable_performance_insights ?engine ?promotion_tier ?tags
    ?timeouts ~cluster_identifier ~instance_class __resource_id =
  let __resource_type = "aws_docdb_cluster_instance" in
  let __resource =
    {
      apply_immediately;
      auto_minor_version_upgrade;
      cluster_identifier;
      copy_tags_to_snapshot;
      enable_performance_insights;
      engine;
      instance_class;
      promotion_tier;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_docdb_cluster_instance __resource);
  ()
