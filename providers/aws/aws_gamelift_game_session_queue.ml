(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type player_latency_policy = {
  maximum_individual_player_latency_milliseconds : float prop;
      (** maximum_individual_player_latency_milliseconds *)
  policy_duration_seconds : float prop option; [@option]
      (** policy_duration_seconds *)
}
[@@deriving yojson_of]
(** player_latency_policy *)

type aws_gamelift_game_session_queue = {
  custom_event_data : string prop option; [@option]
      (** custom_event_data *)
  destinations : string prop list option; [@option]
      (** destinations *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  notification_target : string prop option; [@option]
      (** notification_target *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeout_in_seconds : float prop option; [@option]
      (** timeout_in_seconds *)
  player_latency_policy : player_latency_policy list;
}
[@@deriving yojson_of]
(** aws_gamelift_game_session_queue *)

let player_latency_policy ?policy_duration_seconds
    ~maximum_individual_player_latency_milliseconds () :
    player_latency_policy =
  {
    maximum_individual_player_latency_milliseconds;
    policy_duration_seconds;
  }

let aws_gamelift_game_session_queue ?custom_event_data ?destinations
    ?id ?notification_target ?tags ?tags_all ?timeout_in_seconds
    ~name ~player_latency_policy () : aws_gamelift_game_session_queue
    =
  {
    custom_event_data;
    destinations;
    id;
    name;
    notification_target;
    tags;
    tags_all;
    timeout_in_seconds;
    player_latency_policy;
  }

type t = {
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

let register ?tf_module ?custom_event_data ?destinations ?id
    ?notification_target ?tags ?tags_all ?timeout_in_seconds ~name
    ~player_latency_policy __resource_id =
  let __resource_type = "aws_gamelift_game_session_queue" in
  let __resource =
    aws_gamelift_game_session_queue ?custom_event_data ?destinations
      ?id ?notification_target ?tags ?tags_all ?timeout_in_seconds
      ~name ~player_latency_policy ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_gamelift_game_session_queue __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       custom_event_data =
         Prop.computed __resource_type __resource_id
           "custom_event_data";
       destinations =
         Prop.computed __resource_type __resource_id "destinations";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       notification_target =
         Prop.computed __resource_type __resource_id
           "notification_target";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       timeout_in_seconds =
         Prop.computed __resource_type __resource_id
           "timeout_in_seconds";
     }
      : t)
  in
  __resource_attributes
