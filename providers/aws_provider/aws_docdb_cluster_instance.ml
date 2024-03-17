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
  availability_zone : string option; [@option]
      (** availability_zone *)
  ca_cert_identifier : string option; [@option]
      (** ca_cert_identifier *)
  cluster_identifier : string;  (** cluster_identifier *)
  copy_tags_to_snapshot : bool option; [@option]
      (** copy_tags_to_snapshot *)
  enable_performance_insights : bool option; [@option]
      (** enable_performance_insights *)
  engine : string option; [@option]  (** engine *)
  id : string option; [@option]  (** id *)
  identifier : string option; [@option]  (** identifier *)
  identifier_prefix : string option; [@option]
      (** identifier_prefix *)
  instance_class : string;  (** instance_class *)
  performance_insights_kms_key_id : string option; [@option]
      (** performance_insights_kms_key_id *)
  preferred_maintenance_window : string option; [@option]
      (** preferred_maintenance_window *)
  promotion_tier : float option; [@option]  (** promotion_tier *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  timeouts : aws_docdb_cluster_instance__timeouts option;
}
[@@deriving yojson_of]
(** aws_docdb_cluster_instance *)

let aws_docdb_cluster_instance ?apply_immediately
    ?auto_minor_version_upgrade ?availability_zone
    ?ca_cert_identifier ?copy_tags_to_snapshot
    ?enable_performance_insights ?engine ?id ?identifier
    ?identifier_prefix ?performance_insights_kms_key_id
    ?preferred_maintenance_window ?promotion_tier ?tags ?tags_all
    ?timeouts ~cluster_identifier ~instance_class __resource_id =
  let __resource_type = "aws_docdb_cluster_instance" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_docdb_cluster_instance __resource);
  ()
