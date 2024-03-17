(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_endpoint_connection_notification

val aws_vpc_endpoint_connection_notification :
  ?id:string prop ->
  ?vpc_endpoint_id:string prop ->
  ?vpc_endpoint_service_id:string prop ->
  connection_events:string prop list ->
  connection_notification_arn:string prop ->
  string ->
  unit
