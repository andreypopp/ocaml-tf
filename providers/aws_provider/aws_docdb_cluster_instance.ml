(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_docdb_cluster_instance__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_docdb_cluster_instance__timeouts *)

type aws_docdb_cluster_instance = {
  apply_immediately : bool prop option; [@option]
      (** apply_immediately *)
  auto_minor_version_upgrade : bool prop option; [@option]
      (** auto_minor_version_upgrade *)
  availability_zone : string prop option; [@option]
      (** availability_zone *)
  ca_cert_identifier : string prop option; [@option]
      (** ca_cert_identifier *)
  cluster_identifier : string prop;  (** cluster_identifier *)
  copy_tags_to_snapshot : bool prop option; [@option]
      (** copy_tags_to_snapshot *)
  enable_performance_insights : bool prop option; [@option]
      (** enable_performance_insights *)
  engine : string prop option; [@option]  (** engine *)
  id : string prop option; [@option]  (** id *)
  identifier : string prop option; [@option]  (** identifier *)
  identifier_prefix : string prop option; [@option]
      (** identifier_prefix *)
  instance_class : string prop;  (** instance_class *)
  performance_insights_kms_key_id : string prop option; [@option]
      (** performance_insights_kms_key_id *)
  preferred_maintenance_window : string prop option; [@option]
      (** preferred_maintenance_window *)
  promotion_tier : float prop option; [@option]
      (** promotion_tier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
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
