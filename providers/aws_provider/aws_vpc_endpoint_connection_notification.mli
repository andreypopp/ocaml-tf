(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_endpoint_connection_notification

type t = private {
  connection_events : string list prop;
  connection_notification_arn : string prop;
  id : string prop;
  notification_type : string prop;
  state : string prop;
  vpc_endpoint_id : string prop;
  vpc_endpoint_service_id : string prop;
}

val aws_vpc_endpoint_connection_notification :
  ?id:string prop ->
  ?vpc_endpoint_id:string prop ->
  ?vpc_endpoint_service_id:string prop ->
  connection_events:string prop list ->
  connection_notification_arn:string prop ->
  string ->
  t
