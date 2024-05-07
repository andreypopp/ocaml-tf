(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type configuration__https_notification_configuration

val configuration__https_notification_configuration :
  ?authorization_api_key_name:string prop ->
  ?authorization_api_key_value:string prop ->
  ?endpoint:string prop ->
  ?http_method:string prop ->
  ?target_role_arn:string prop ->
  unit ->
  configuration__https_notification_configuration

type configuration__sqs_notification_configuration

val configuration__sqs_notification_configuration :
  unit -> configuration__sqs_notification_configuration

type configuration

val configuration :
  ?https_notification_configuration:
    configuration__https_notification_configuration list ->
  ?sqs_notification_configuration:
    configuration__sqs_notification_configuration list ->
  unit ->
  configuration

type aws_securitylake_subscriber_notification

val aws_securitylake_subscriber_notification :
  ?configuration:configuration list ->
  subscriber_id:string prop ->
  unit ->
  aws_securitylake_subscriber_notification

val yojson_of_aws_securitylake_subscriber_notification :
  aws_securitylake_subscriber_notification -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  endpoint_id : string prop;
  id : string prop;
  subscriber_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?configuration:configuration list ->
  subscriber_id:string prop ->
  string ->
  t

val make :
  ?configuration:configuration list ->
  subscriber_id:string prop ->
  string ->
  t Tf_core.resource
