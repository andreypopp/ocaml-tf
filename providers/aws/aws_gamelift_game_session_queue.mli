(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type player_latency_policy

val player_latency_policy :
  ?policy_duration_seconds:float prop ->
  maximum_individual_player_latency_milliseconds:float prop ->
  unit ->
  player_latency_policy

type aws_gamelift_game_session_queue

val aws_gamelift_game_session_queue :
  ?custom_event_data:string prop ->
  ?destinations:string prop list ->
  ?id:string prop ->
  ?notification_target:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeout_in_seconds:float prop ->
  ?player_latency_policy:player_latency_policy list ->
  name:string prop ->
  unit ->
  aws_gamelift_game_session_queue

val yojson_of_aws_gamelift_game_session_queue :
  aws_gamelift_game_session_queue -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  custom_event_data : string prop;
  destinations : string list prop;
  id : string prop;
  name : string prop;
  notification_target : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  timeout_in_seconds : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?custom_event_data:string prop ->
  ?destinations:string prop list ->
  ?id:string prop ->
  ?notification_target:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeout_in_seconds:float prop ->
  ?player_latency_policy:player_latency_policy list ->
  name:string prop ->
  string ->
  t

val make :
  ?custom_event_data:string prop ->
  ?destinations:string prop list ->
  ?id:string prop ->
  ?notification_target:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeout_in_seconds:float prop ->
  ?player_latency_policy:player_latency_policy list ->
  name:string prop ->
  string ->
  t Tf_core.resource
