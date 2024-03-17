(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_msk_replicator__kafka_cluster__amazon_msk_cluster = {
  msk_cluster_arn : string;  (** msk_cluster_arn *)
}
[@@deriving yojson_of]
(** aws_msk_replicator__kafka_cluster__amazon_msk_cluster *)

type aws_msk_replicator__kafka_cluster__vpc_config = {
  security_groups_ids : string list option; [@option]
      (** security_groups_ids *)
  subnet_ids : string list;  (** subnet_ids *)
}
[@@deriving yojson_of]
(** aws_msk_replicator__kafka_cluster__vpc_config *)

type aws_msk_replicator__kafka_cluster = {
  amazon_msk_cluster :
    aws_msk_replicator__kafka_cluster__amazon_msk_cluster list;
  vpc_config : aws_msk_replicator__kafka_cluster__vpc_config list;
}
[@@deriving yojson_of]
(** aws_msk_replicator__kafka_cluster *)

type aws_msk_replicator__replication_info_list__consumer_group_replication = {
  consumer_groups_to_exclude : string list option; [@option]
      (** consumer_groups_to_exclude *)
  consumer_groups_to_replicate : string list;
      (** consumer_groups_to_replicate *)
  detect_and_copy_new_consumer_groups : bool option; [@option]
      (** detect_and_copy_new_consumer_groups *)
  synchronise_consumer_group_offsets : bool option; [@option]
      (** synchronise_consumer_group_offsets *)
}
[@@deriving yojson_of]
(** aws_msk_replicator__replication_info_list__consumer_group_replication *)

type aws_msk_replicator__replication_info_list__topic_replication = {
  copy_access_control_lists_for_topics : bool option; [@option]
      (** copy_access_control_lists_for_topics *)
  copy_topic_configurations : bool option; [@option]
      (** copy_topic_configurations *)
  detect_and_copy_new_topics : bool option; [@option]
      (** detect_and_copy_new_topics *)
  topics_to_exclude : string list option; [@option]
      (** topics_to_exclude *)
  topics_to_replicate : string list;  (** topics_to_replicate *)
}
[@@deriving yojson_of]
(** aws_msk_replicator__replication_info_list__topic_replication *)

type aws_msk_replicator__replication_info_list = {
  source_kafka_cluster_alias : string;
      (** source_kafka_cluster_alias *)
  source_kafka_cluster_arn : string;  (** source_kafka_cluster_arn *)
  target_compression_type : string;  (** target_compression_type *)
  target_kafka_cluster_alias : string;
      (** target_kafka_cluster_alias *)
  target_kafka_cluster_arn : string;  (** target_kafka_cluster_arn *)
  consumer_group_replication :
    aws_msk_replicator__replication_info_list__consumer_group_replication
    list;
  topic_replication :
    aws_msk_replicator__replication_info_list__topic_replication list;
}
[@@deriving yojson_of]
(** aws_msk_replicator__replication_info_list *)

type aws_msk_replicator__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_msk_replicator__timeouts *)

type aws_msk_replicator = {
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  replicator_name : string;  (** replicator_name *)
  service_execution_role_arn : string;
      (** service_execution_role_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  kafka_cluster : aws_msk_replicator__kafka_cluster list;
  replication_info_list :
    aws_msk_replicator__replication_info_list list;
  timeouts : aws_msk_replicator__timeouts option;
}
[@@deriving yojson_of]
(** aws_msk_replicator *)

let aws_msk_replicator ?description ?id ?tags ?tags_all ?timeouts
    ~replicator_name ~service_execution_role_arn ~kafka_cluster
    ~replication_info_list __resource_id =
  let __resource_type = "aws_msk_replicator" in
  let __resource =
    {
      description;
      id;
      replicator_name;
      service_execution_role_arn;
      tags;
      tags_all;
      kafka_cluster;
      replication_info_list;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_msk_replicator __resource);
  ()
