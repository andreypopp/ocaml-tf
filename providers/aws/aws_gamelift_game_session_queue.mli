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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeout_in_seconds:float prop ->
  name:string prop ->
  player_latency_policy:player_latency_policy list ->
  unit ->
  aws_gamelift_game_session_queue

val yojson_of_aws_gamelift_game_session_queue :
  aws_gamelift_game_session_queue -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  custom_event_data : string prop;
  destinations : string list prop;
  id : string prop;
  name : string prop;
  notification_target : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  timeout_in_seconds : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?custom_event_data:string prop ->
  ?destinations:string prop list ->
  ?id:string prop ->
  ?notification_target:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeout_in_seconds:float prop ->
  name:string prop ->
  player_latency_policy:player_latency_policy list ->
  string ->
  t

val make :
  ?custom_event_data:string prop ->
  ?destinations:string prop list ->
  ?id:string prop ->
  ?notification_target:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeout_in_seconds:float prop ->
  name:string prop ->
  player_latency_policy:player_latency_policy list ->
  string ->
  t Tf_core.resource
