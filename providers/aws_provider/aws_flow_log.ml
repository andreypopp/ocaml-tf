(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_flow_log__destination_options = {
  file_format : string option; [@option]  (** file_format *)
  hive_compatible_partitions : bool option; [@option]
      (** hive_compatible_partitions *)
  per_hour_partition : bool option; [@option]
      (** per_hour_partition *)
}
[@@deriving yojson_of]
(** aws_flow_log__destination_options *)

type aws_flow_log = {
  deliver_cross_account_role : string option; [@option]
      (** deliver_cross_account_role *)
  eni_id : string option; [@option]  (** eni_id *)
  iam_role_arn : string option; [@option]  (** iam_role_arn *)
  id : string option; [@option]  (** id *)
  log_destination : string option; [@option]  (** log_destination *)
  log_destination_type : string option; [@option]
      (** log_destination_type *)
  log_format : string option; [@option]  (** log_format *)
  log_group_name : string option; [@option]  (** log_group_name *)
  max_aggregation_interval : float option; [@option]
      (** max_aggregation_interval *)
  subnet_id : string option; [@option]  (** subnet_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  traffic_type : string option; [@option]  (** traffic_type *)
  transit_gateway_attachment_id : string option; [@option]
      (** transit_gateway_attachment_id *)
  transit_gateway_id : string option; [@option]
      (** transit_gateway_id *)
  vpc_id : string option; [@option]  (** vpc_id *)
  destination_options : aws_flow_log__destination_options list;
}
[@@deriving yojson_of]
(** aws_flow_log *)

let aws_flow_log ?deliver_cross_account_role ?eni_id ?iam_role_arn
    ?id ?log_destination ?log_destination_type ?log_format
    ?log_group_name ?max_aggregation_interval ?subnet_id ?tags
    ?tags_all ?traffic_type ?transit_gateway_attachment_id
    ?transit_gateway_id ?vpc_id ~destination_options __resource_id =
  let __resource_type = "aws_flow_log" in
  let __resource =
    {
      deliver_cross_account_role;
      eni_id;
      iam_role_arn;
      id;
      log_destination;
      log_destination_type;
      log_format;
      log_group_name;
      max_aggregation_interval;
      subnet_id;
      tags;
      tags_all;
      traffic_type;
      transit_gateway_attachment_id;
      transit_gateway_id;
      vpc_id;
      destination_options;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_flow_log __resource);
  ()
