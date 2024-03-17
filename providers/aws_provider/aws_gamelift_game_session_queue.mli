(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_gamelift_game_session_queue__player_latency_policy
type aws_gamelift_game_session_queue

val aws_gamelift_game_session_queue :
  ?custom_event_data:string ->
  ?destinations:string list ->
  ?id:string ->
  ?notification_target:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeout_in_seconds:float ->
  name:string ->
  player_latency_policy:
    aws_gamelift_game_session_queue__player_latency_policy list ->
  string ->
  unit
