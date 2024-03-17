(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_flow_log__destination_options
type aws_flow_log

type t = private {
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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?traffic_type:string prop ->
  ?transit_gateway_attachment_id:string prop ->
  ?transit_gateway_id:string prop ->
  ?vpc_id:string prop ->
  destination_options:aws_flow_log__destination_options list ->
  string ->
  t
