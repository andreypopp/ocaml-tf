(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type event_destination__cloud_watch_destination__dimension_configuration

val event_destination__cloud_watch_destination__dimension_configuration :
  default_dimension_value:string prop ->
  dimension_name:string prop ->
  dimension_value_source:string prop ->
  unit ->
  event_destination__cloud_watch_destination__dimension_configuration

type event_destination__cloud_watch_destination

val event_destination__cloud_watch_destination :
  dimension_configuration:
    event_destination__cloud_watch_destination__dimension_configuration
    list ->
  unit ->
  event_destination__cloud_watch_destination

type event_destination__kinesis_firehose_destination

val event_destination__kinesis_firehose_destination :
  delivery_stream_arn:string prop ->
  iam_role_arn:string prop ->
  unit ->
  event_destination__kinesis_firehose_destination

type event_destination__pinpoint_destination

val event_destination__pinpoint_destination :
  application_arn:string prop ->
  unit ->
  event_destination__pinpoint_destination

type event_destination__sns_destination

val event_destination__sns_destination :
  topic_arn:string prop -> unit -> event_destination__sns_destination

type event_destination

val event_destination :
  ?enabled:bool prop ->
  matching_event_types:string prop list ->
  cloud_watch_destination:
    event_destination__cloud_watch_destination list ->
  kinesis_firehose_destination:
    event_destination__kinesis_firehose_destination list ->
  pinpoint_destination:event_destination__pinpoint_destination list ->
  sns_destination:event_destination__sns_destination list ->
  unit ->
  event_destination

type aws_sesv2_configuration_set_event_destination

val aws_sesv2_configuration_set_event_destination :
  ?id:string prop ->
  configuration_set_name:string prop ->
  event_destination_name:string prop ->
  event_destination:event_destination list ->
  unit ->
  aws_sesv2_configuration_set_event_destination

val yojson_of_aws_sesv2_configuration_set_event_destination :
  aws_sesv2_configuration_set_event_destination -> json

(** RESOURCE REGISTRATION *)

type t = private {
  configuration_set_name : string prop;
  event_destination_name : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  configuration_set_name:string prop ->
  event_destination_name:string prop ->
  event_destination:event_destination list ->
  string ->
  t

val make :
  ?id:string prop ->
  configuration_set_name:string prop ->
  event_destination_name:string prop ->
  event_destination:event_destination list ->
  string ->
  t Tf_core.resource
