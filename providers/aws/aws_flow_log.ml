(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_flow_log__destination_options = {
  file_format : string prop option; [@option]  (** file_format *)
  hive_compatible_partitions : bool prop option; [@option]
      (** hive_compatible_partitions *)
  per_hour_partition : bool prop option; [@option]
      (** per_hour_partition *)
}
[@@deriving yojson_of]
(** aws_flow_log__destination_options *)

type aws_flow_log = {
  deliver_cross_account_role : string prop option; [@option]
      (** deliver_cross_account_role *)
  eni_id : string prop option; [@option]  (** eni_id *)
  iam_role_arn : string prop option; [@option]  (** iam_role_arn *)
  id : string prop option; [@option]  (** id *)
  log_destination : string prop option; [@option]
      (** log_destination *)
  log_destination_type : string prop option; [@option]
      (** log_destination_type *)
  log_format : string prop option; [@option]  (** log_format *)
  log_group_name : string prop option; [@option]
      (** log_group_name *)
  max_aggregation_interval : float prop option; [@option]
      (** max_aggregation_interval *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  traffic_type : string prop option; [@option]  (** traffic_type *)
  transit_gateway_attachment_id : string prop option; [@option]
      (** transit_gateway_attachment_id *)
  transit_gateway_id : string prop option; [@option]
      (** transit_gateway_id *)
  vpc_id : string prop option; [@option]  (** vpc_id *)
  destination_options : aws_flow_log__destination_options list;
}
[@@deriving yojson_of]
(** aws_flow_log *)

type t = {
  arn : string prop;
  deliver_cross_account_role : string prop;
  eni_id : string prop;
  iam_role_arn : string prop;
  id : string prop;
  log_destination : string prop;
  log_destination_type : string prop;
  log_format : string prop;
  log_group_name : string prop;
  max_aggregation_interval : float prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  traffic_type : string prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_id : string prop;
  vpc_id : string prop;
}

let aws_flow_log ?deliver_cross_account_role ?eni_id ?iam_role_arn
    ?id ?log_destination ?log_destination_type ?log_format
    ?log_group_name ?max_aggregation_interval ?subnet_id ?tags
    ?tags_all ?traffic_type ?transit_gateway_attachment_id
    ?transit_gateway_id ?vpc_id ~destination_options __resource_id =
  let __resource_type = "aws_flow_log" in
  let __resource =
    ({
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
      : aws_flow_log)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_flow_log __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       deliver_cross_account_role =
         Prop.computed __resource_type __resource_id
           "deliver_cross_account_role";
       eni_id = Prop.computed __resource_type __resource_id "eni_id";
       iam_role_arn =
         Prop.computed __resource_type __resource_id "iam_role_arn";
       id = Prop.computed __resource_type __resource_id "id";
       log_destination =
         Prop.computed __resource_type __resource_id
           "log_destination";
       log_destination_type =
         Prop.computed __resource_type __resource_id
           "log_destination_type";
       log_format =
         Prop.computed __resource_type __resource_id "log_format";
       log_group_name =
         Prop.computed __resource_type __resource_id "log_group_name";
       max_aggregation_interval =
         Prop.computed __resource_type __resource_id
           "max_aggregation_interval";
       subnet_id =
         Prop.computed __resource_type __resource_id "subnet_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       traffic_type =
         Prop.computed __resource_type __resource_id "traffic_type";
       transit_gateway_attachment_id =
         Prop.computed __resource_type __resource_id
           "transit_gateway_attachment_id";
       transit_gateway_id =
         Prop.computed __resource_type __resource_id
           "transit_gateway_id";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
     }
      : t)
  in
  __resource_attributes
