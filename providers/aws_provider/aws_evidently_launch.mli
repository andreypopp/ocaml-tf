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
  ended_time : string;  (** ended_time *)
  started_time : string;  (** started_time *)
}
[@@deriving yojson_of]

type aws_evidently_launch

val aws_evidently_launch :
  ?description:string ->
  ?randomization_salt:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_evidently_launch__timeouts ->
  name:string ->
  project:string ->
  groups:aws_evidently_launch__groups list ->
  metric_monitors:aws_evidently_launch__metric_monitors list ->
  scheduled_splits_config:
    aws_evidently_launch__scheduled_splits_config list ->
  string ->
  unit
