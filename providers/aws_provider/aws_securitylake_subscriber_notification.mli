(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_securitylake_subscriber_notification__configuration__https_notification_configuration

type aws_securitylake_subscriber_notification__configuration__sqs_notification_configuration

type aws_securitylake_subscriber_notification__configuration
type aws_securitylake_subscriber_notification

type t = private {
  endpoint_id : string prop;
  id : string prop;
  subscriber_id : string prop;
}

val aws_securitylake_subscriber_notification :
  subscriber_id:string prop ->
  configuration:
    aws_securitylake_subscriber_notification__configuration list ->
  string ->
  t
