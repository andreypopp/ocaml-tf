(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_pinpoint_app__campaign_hook
type aws_pinpoint_app__limits
type aws_pinpoint_app__quiet_time
type aws_pinpoint_app

type t = private {
  application_id : string prop;
  arn : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_pinpoint_app :
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  campaign_hook:aws_pinpoint_app__campaign_hook list ->
  limits:aws_pinpoint_app__limits list ->
  quiet_time:aws_pinpoint_app__quiet_time list ->
  string ->
  t
