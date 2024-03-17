(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_gamelift_game_session_queue__player_latency_policy
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
  player_latency_policy:
    aws_gamelift_game_session_queue__player_latency_policy list ->
  string ->
  unit
