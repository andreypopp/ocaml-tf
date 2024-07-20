(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type data_sharing_preference

val data_sharing_preference :
  opt_in:bool prop -> unit -> data_sharing_preference

type input__kinesis_video_stream

val input__kinesis_video_stream :
  arn:string prop -> unit -> input__kinesis_video_stream

type input

val input :
  ?kinesis_video_stream:input__kinesis_video_stream list ->
  unit ->
  input

type notification_channel

val notification_channel :
  ?sns_topic_arn:string prop -> unit -> notification_channel

type output__kinesis_data_stream

val output__kinesis_data_stream :
  ?arn:string prop -> unit -> output__kinesis_data_stream

type output__s3_destination

val output__s3_destination :
  ?bucket:string prop ->
  ?key_prefix:string prop ->
  unit ->
  output__s3_destination

type output

val output :
  ?kinesis_data_stream:output__kinesis_data_stream list ->
  ?s3_destination:output__s3_destination list ->
  unit ->
  output

type regions_of_interest__bounding_box

val regions_of_interest__bounding_box :
  ?height:float prop ->
  ?left:float prop ->
  ?top:float prop ->
  ?width:float prop ->
  unit ->
  regions_of_interest__bounding_box

type regions_of_interest__polygon

val regions_of_interest__polygon :
  ?x:float prop ->
  ?y:float prop ->
  unit ->
  regions_of_interest__polygon

type regions_of_interest

val regions_of_interest :
  ?polygon:regions_of_interest__polygon list ->
  bounding_box:regions_of_interest__bounding_box ->
  unit ->
  regions_of_interest

type settings__connected_home

val settings__connected_home :
  ?labels:string prop list ->
  ?min_confidence:float prop ->
  unit ->
  settings__connected_home

type settings__face_search

val settings__face_search :
  ?face_match_threshold:float prop ->
  collection_id:string prop ->
  unit ->
  settings__face_search

type settings

val settings :
  ?connected_home:settings__connected_home list ->
  ?face_search:settings__face_search list ->
  unit ->
  settings

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_rekognition_stream_processor

val aws_rekognition_stream_processor :
  ?kms_key_id:string prop ->
  ?tags:(string * string prop) list ->
  ?data_sharing_preference:data_sharing_preference list ->
  ?input:input list ->
  ?notification_channel:notification_channel list ->
  ?output:output list ->
  ?regions_of_interest:regions_of_interest list ->
  ?settings:settings list ->
  ?timeouts:timeouts ->
  name:string prop ->
  role_arn:string prop ->
  unit ->
  aws_rekognition_stream_processor

val yojson_of_aws_rekognition_stream_processor :
  aws_rekognition_stream_processor -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  kms_key_id : string prop;
  name : string prop;
  role_arn : string prop;
  stream_processor_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?kms_key_id:string prop ->
  ?tags:(string * string prop) list ->
  ?data_sharing_preference:data_sharing_preference list ->
  ?input:input list ->
  ?notification_channel:notification_channel list ->
  ?output:output list ->
  ?regions_of_interest:regions_of_interest list ->
  ?settings:settings list ->
  ?timeouts:timeouts ->
  name:string prop ->
  role_arn:string prop ->
  string ->
  t

val make :
  ?kms_key_id:string prop ->
  ?tags:(string * string prop) list ->
  ?data_sharing_preference:data_sharing_preference list ->
  ?input:input list ->
  ?notification_channel:notification_channel list ->
  ?output:output list ->
  ?regions_of_interest:regions_of_interest list ->
  ?settings:settings list ->
  ?timeouts:timeouts ->
  name:string prop ->
  role_arn:string prop ->
  string ->
  t Tf_core.resource
