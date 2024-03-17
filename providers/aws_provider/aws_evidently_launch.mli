(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_evidently_launch__groups
type aws_evidently_launch__metric_monitors__metric_definition
type aws_evidently_launch__metric_monitors

type aws_evidently_launch__scheduled_splits_config__steps__segment_overrides

type aws_evidently_launch__scheduled_splits_config__steps
type aws_evidently_launch__scheduled_splits_config
type aws_evidently_launch__timeouts

type aws_evidently_launch__execution = {
  ended_time : string prop;  (** ended_time *)
  started_time : string prop;  (** started_time *)
}

type aws_evidently_launch

type t = private {
  arn : string prop;
  created_time : string prop;
  description : string prop;
  execution : aws_evidently_launch__execution list prop;
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

val aws_evidently_launch :
  ?description:string prop ->
  ?id:string prop ->
  ?randomization_salt:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_evidently_launch__timeouts ->
  name:string prop ->
  project:string prop ->
  groups:aws_evidently_launch__groups list ->
  metric_monitors:aws_evidently_launch__metric_monitors list ->
  scheduled_splits_config:
    aws_evidently_launch__scheduled_splits_config list ->
  string ->
  t
