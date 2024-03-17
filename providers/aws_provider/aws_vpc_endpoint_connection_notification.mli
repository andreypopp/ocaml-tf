(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_endpoint_connection_notification

val aws_vpc_endpoint_connection_notification :
  ?id:string ->
  ?vpc_endpoint_id:string ->
  ?vpc_endpoint_service_id:string ->
  connection_events:string list ->
  connection_notification_arn:string ->
  string ->
  unit
