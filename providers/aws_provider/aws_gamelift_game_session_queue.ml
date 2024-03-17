(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_gamelift_game_session_queue__player_latency_policy = {
  maximum_individual_player_latency_milliseconds : float;
      (** maximum_individual_player_latency_milliseconds *)
  policy_duration_seconds : float option; [@option]
      (** policy_duration_seconds *)
}
[@@deriving yojson_of]
(** aws_gamelift_game_session_queue__player_latency_policy *)

type aws_gamelift_game_session_queue = {
  custom_event_data : string option; [@option]
      (** custom_event_data *)
  destinations : string list option; [@option]  (** destinations *)
  name : string;  (** name *)
  notification_target : string option; [@option]
      (** notification_target *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeout_in_seconds : float option; [@option]
      (** timeout_in_seconds *)
  player_latency_policy :
    aws_gamelift_game_session_queue__player_latency_policy list;
}
[@@deriving yojson_of]
(** aws_gamelift_game_session_queue *)

let aws_gamelift_game_session_queue ?custom_event_data ?destinations
    ?notification_target ?tags ?timeout_in_seconds ~name
    ~player_latency_policy __resource_id =
  let __resource_type = "aws_gamelift_game_session_queue" in
  let __resource =
    {
      custom_event_data;
      destinations;
      name;
      notification_target;
      tags;
      timeout_in_seconds;
      player_latency_policy;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_gamelift_game_session_queue __resource);
  ()
