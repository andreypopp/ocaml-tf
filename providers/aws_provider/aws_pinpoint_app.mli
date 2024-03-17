(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_pinpoint_app__campaign_hook
type aws_pinpoint_app__limits
type aws_pinpoint_app__quiet_time
type aws_pinpoint_app

val aws_pinpoint_app :
  ?id:string ->
  ?name:string ->
  ?name_prefix:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  campaign_hook:aws_pinpoint_app__campaign_hook list ->
  limits:aws_pinpoint_app__limits list ->
  quiet_time:aws_pinpoint_app__quiet_time list ->
  string ->
  unit
