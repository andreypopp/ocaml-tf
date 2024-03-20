(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type campaign_hook

val campaign_hook :
  ?lambda_function_name:string prop ->
  ?mode:string prop ->
  ?web_url:string prop ->
  unit ->
  campaign_hook

type limits

val limits :
  ?daily:float prop ->
  ?maximum_duration:float prop ->
  ?messages_per_second:float prop ->
  ?total:float prop ->
  unit ->
  limits

type quiet_time

val quiet_time :
  ?end_:string prop -> ?start:string prop -> unit -> quiet_time

type aws_pinpoint_app

val aws_pinpoint_app :
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  campaign_hook:campaign_hook list ->
  limits:limits list ->
  quiet_time:quiet_time list ->
  unit ->
  aws_pinpoint_app

val yojson_of_aws_pinpoint_app : aws_pinpoint_app -> json

(** RESOURCE REGISTRATION *)

type t = private {
  application_id : string prop;
  arn : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  campaign_hook:campaign_hook list ->
  limits:limits list ->
  quiet_time:quiet_time list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  campaign_hook:campaign_hook list ->
  limits:limits list ->
  quiet_time:quiet_time list ->
  string ->
  t Tf_core.resource
