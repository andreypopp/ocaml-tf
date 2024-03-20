(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudwatch_destination

val cloudwatch_destination :
  default_value:string prop ->
  dimension_name:string prop ->
  value_source:string prop ->
  unit ->
  cloudwatch_destination

type kinesis_destination

val kinesis_destination :
  role_arn:string prop ->
  stream_arn:string prop ->
  unit ->
  kinesis_destination

type sns_destination

val sns_destination :
  topic_arn:string prop -> unit -> sns_destination

type aws_ses_event_destination

val aws_ses_event_destination :
  ?enabled:bool prop ->
  ?id:string prop ->
  configuration_set_name:string prop ->
  matching_types:string prop list ->
  name:string prop ->
  cloudwatch_destination:cloudwatch_destination list ->
  kinesis_destination:kinesis_destination list ->
  sns_destination:sns_destination list ->
  unit ->
  aws_ses_event_destination

val yojson_of_aws_ses_event_destination :
  aws_ses_event_destination -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  configuration_set_name : string prop;
  enabled : bool prop;
  id : string prop;
  matching_types : string list prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?id:string prop ->
  configuration_set_name:string prop ->
  matching_types:string prop list ->
  name:string prop ->
  cloudwatch_destination:cloudwatch_destination list ->
  kinesis_destination:kinesis_destination list ->
  sns_destination:sns_destination list ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?id:string prop ->
  configuration_set_name:string prop ->
  matching_types:string prop list ->
  name:string prop ->
  cloudwatch_destination:cloudwatch_destination list ->
  kinesis_destination:kinesis_destination list ->
  sns_destination:sns_destination list ->
  string ->
  t Tf_core.resource
