(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_vpc_endpoint_connection_notification

val aws_vpc_endpoint_connection_notification :
  ?id:string prop ->
  ?vpc_endpoint_id:string prop ->
  ?vpc_endpoint_service_id:string prop ->
  connection_events:string prop list ->
  connection_notification_arn:string prop ->
  unit ->
  aws_vpc_endpoint_connection_notification

val yojson_of_aws_vpc_endpoint_connection_notification :
  aws_vpc_endpoint_connection_notification -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  connection_events : string list prop;
  connection_notification_arn : string prop;
  id : string prop;
  notification_type : string prop;
  state : string prop;
  vpc_endpoint_id : string prop;
  vpc_endpoint_service_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?vpc_endpoint_id:string prop ->
  ?vpc_endpoint_service_id:string prop ->
  connection_events:string prop list ->
  connection_notification_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?vpc_endpoint_id:string prop ->
  ?vpc_endpoint_service_id:string prop ->
  connection_events:string prop list ->
  connection_notification_arn:string prop ->
  string ->
  t Tf_core.resource
