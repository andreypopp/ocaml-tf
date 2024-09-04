(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type destination_options

val destination_options :
  ?file_format:string prop ->
  ?hive_compatible_partitions:bool prop ->
  ?per_hour_partition:bool prop ->
  unit ->
  destination_options

type aws_flow_log

val aws_flow_log :
  ?deliver_cross_account_role:string prop ->
  ?eni_id:string prop ->
  ?iam_role_arn:string prop ->
  ?id:string prop ->
  ?log_destination:string prop ->
  ?log_destination_type:string prop ->
  ?log_format:string prop ->
  ?log_group_name:string prop ->
  ?max_aggregation_interval:float prop ->
  ?subnet_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?traffic_type:string prop ->
  ?transit_gateway_attachment_id:string prop ->
  ?transit_gateway_id:string prop ->
  ?vpc_id:string prop ->
  ?destination_options:destination_options list ->
  unit ->
  aws_flow_log

val yojson_of_aws_flow_log : aws_flow_log -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  traffic_type : string prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_id : string prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?deliver_cross_account_role:string prop ->
  ?eni_id:string prop ->
  ?iam_role_arn:string prop ->
  ?id:string prop ->
  ?log_destination:string prop ->
  ?log_destination_type:string prop ->
  ?log_format:string prop ->
  ?log_group_name:string prop ->
  ?max_aggregation_interval:float prop ->
  ?subnet_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?traffic_type:string prop ->
  ?transit_gateway_attachment_id:string prop ->
  ?transit_gateway_id:string prop ->
  ?vpc_id:string prop ->
  ?destination_options:destination_options list ->
  string ->
  t

val make :
  ?deliver_cross_account_role:string prop ->
  ?eni_id:string prop ->
  ?iam_role_arn:string prop ->
  ?id:string prop ->
  ?log_destination:string prop ->
  ?log_destination_type:string prop ->
  ?log_format:string prop ->
  ?log_group_name:string prop ->
  ?max_aggregation_interval:float prop ->
  ?subnet_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?traffic_type:string prop ->
  ?transit_gateway_attachment_id:string prop ->
  ?transit_gateway_id:string prop ->
  ?vpc_id:string prop ->
  ?destination_options:destination_options list ->
  string ->
  t Tf_core.resource
