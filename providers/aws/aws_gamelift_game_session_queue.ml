(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?custom_event_data ?destinations ?id ?notification_target
    ?tags ?tags_all ?timeout_in_seconds ~name ~player_latency_policy
    __id =
  let __type = "aws_gamelift_game_session_queue" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       custom_event_data =
         Prop.computed __type __id "custom_event_data";
       destinations = Prop.computed __type __id "destinations";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       notification_target =
         Prop.computed __type __id "notification_target";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       timeout_in_seconds =
         Prop.computed __type __id "timeout_in_seconds";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_gamelift_game_session_queue
        (aws_gamelift_game_session_queue ?custom_event_data
           ?destinations ?id ?notification_target ?tags ?tags_all
           ?timeout_in_seconds ~name ~player_latency_policy ());
    attrs = __attrs;
  }

let register ?tf_module ?custom_event_data ?destinations ?id
    ?notification_target ?tags ?tags_all ?timeout_in_seconds ~name
    ~player_latency_policy __id =
  let (r : _ Tf_core.resource) =
    make ?custom_event_data ?destinations ?id ?notification_target
      ?tags ?tags_all ?timeout_in_seconds ~name
      ~player_latency_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
