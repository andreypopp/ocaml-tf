(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type player_latency_policy = {
  maximum_individual_player_latency_milliseconds : float prop;
  policy_duration_seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : player_latency_policy) -> ()

let yojson_of_player_latency_policy =
  (function
   | {
       maximum_individual_player_latency_milliseconds =
         v_maximum_individual_player_latency_milliseconds;
       policy_duration_seconds = v_policy_duration_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_policy_duration_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "policy_duration_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_maximum_individual_player_latency_milliseconds
         in
         ("maximum_individual_player_latency_milliseconds", arg)
         :: bnds
       in
       `Assoc bnds
    : player_latency_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_player_latency_policy

[@@@deriving.end]

type aws_gamelift_game_session_queue = {
  custom_event_data : string prop option; [@option]
  destinations : string prop list option; [@option]
  id : string prop option; [@option]
  name : string prop;
  notification_target : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  timeout_in_seconds : float prop option; [@option]
  player_latency_policy : player_latency_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_gamelift_game_session_queue) -> ()

let yojson_of_aws_gamelift_game_session_queue =
  (function
   | {
       custom_event_data = v_custom_event_data;
       destinations = v_destinations;
       id = v_id;
       name = v_name;
       notification_target = v_notification_target;
       tags = v_tags;
       tags_all = v_tags_all;
       timeout_in_seconds = v_timeout_in_seconds;
       player_latency_policy = v_player_latency_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_player_latency_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_player_latency_policy)
               v_player_latency_policy
           in
           let bnd = "player_latency_policy", arg in
           bnd :: bnds
       in
       let bnds =
         match v_timeout_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_notification_target with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "notification_target", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destinations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "destinations", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_event_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_event_data", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_gamelift_game_session_queue ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_gamelift_game_session_queue

[@@@deriving.end]

let player_latency_policy ?policy_duration_seconds
    ~maximum_individual_player_latency_milliseconds () :
    player_latency_policy =
  {
    maximum_individual_player_latency_milliseconds;
    policy_duration_seconds;
  }

let aws_gamelift_game_session_queue ?custom_event_data ?destinations
    ?id ?notification_target ?tags ?tags_all ?timeout_in_seconds
    ?(player_latency_policy = []) ~name () :
    aws_gamelift_game_session_queue =
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

let make ?custom_event_data ?destinations ?id ?notification_target
    ?tags ?tags_all ?timeout_in_seconds ?(player_latency_policy = [])
    ~name __id =
  let __type = "aws_gamelift_game_session_queue" in
  let __attrs =
    ({
       tf_name = __id;
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
           ?timeout_in_seconds ~player_latency_policy ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?custom_event_data ?destinations ?id
    ?notification_target ?tags ?tags_all ?timeout_in_seconds
    ?(player_latency_policy = []) ~name __id =
  let (r : _ Tf_core.resource) =
    make ?custom_event_data ?destinations ?id ?notification_target
      ?tags ?tags_all ?timeout_in_seconds ~player_latency_policy
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
