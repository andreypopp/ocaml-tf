(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type execution = {
  ended_time : string prop;  (** ended_time *)
  started_time : string prop;  (** started_time *)
}

type groups

val groups :
  ?description:string prop ->
  feature:string prop ->
  name:string prop ->
  variation:string prop ->
  unit ->
  groups

type metric_monitors__metric_definition

val metric_monitors__metric_definition :
  ?event_pattern:string prop ->
  ?unit_label:string prop ->
  entity_id_key:string prop ->
  name:string prop ->
  value_key:string prop ->
  unit ->
  metric_monitors__metric_definition

type metric_monitors

val metric_monitors :
  metric_definition:metric_monitors__metric_definition list ->
  unit ->
  metric_monitors

type scheduled_splits_config__steps__segment_overrides

val scheduled_splits_config__steps__segment_overrides :
  evaluation_order:float prop ->
  segment:string prop ->
  weights:(string * float prop) list ->
  unit ->
  scheduled_splits_config__steps__segment_overrides

type scheduled_splits_config__steps

val scheduled_splits_config__steps :
  ?segment_overrides:
    scheduled_splits_config__steps__segment_overrides list ->
  group_weights:(string * float prop) list ->
  start_time:string prop ->
  unit ->
  scheduled_splits_config__steps

type scheduled_splits_config

val scheduled_splits_config :
  steps:scheduled_splits_config__steps list ->
  unit ->
  scheduled_splits_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_evidently_launch

val aws_evidently_launch :
  ?description:string prop ->
  ?id:string prop ->
  ?randomization_salt:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?metric_monitors:metric_monitors list ->
  ?scheduled_splits_config:scheduled_splits_config list ->
  ?timeouts:timeouts ->
  name:string prop ->
  project:string prop ->
  groups:groups list ->
  unit ->
  aws_evidently_launch

val yojson_of_aws_evidently_launch : aws_evidently_launch -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  created_time : string prop;
  description : string prop;
  execution : execution list prop;
  id : string prop;
  last_updated_time : string prop;
  name : string prop;
  project : string prop;
  randomization_salt : string prop;
  status : string prop;
  status_reason : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?randomization_salt:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?metric_monitors:metric_monitors list ->
  ?scheduled_splits_config:scheduled_splits_config list ->
  ?timeouts:timeouts ->
  name:string prop ->
  project:string prop ->
  groups:groups list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?randomization_salt:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?metric_monitors:metric_monitors list ->
  ?scheduled_splits_config:scheduled_splits_config list ->
  ?timeouts:timeouts ->
  name:string prop ->
  project:string prop ->
  groups:groups list ->
  string ->
  t Tf_core.resource
