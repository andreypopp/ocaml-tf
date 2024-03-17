(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_flow_log__destination_options
type aws_flow_log

val aws_flow_log :
  ?deliver_cross_account_role:string ->
  ?eni_id:string ->
  ?iam_role_arn:string ->
  ?id:string ->
  ?log_destination:string ->
  ?log_destination_type:string ->
  ?log_format:string ->
  ?log_group_name:string ->
  ?max_aggregation_interval:float ->
  ?subnet_id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?traffic_type:string ->
  ?transit_gateway_attachment_id:string ->
  ?transit_gateway_id:string ->
  ?vpc_id:string ->
  destination_options:aws_flow_log__destination_options list ->
  string ->
  unit
