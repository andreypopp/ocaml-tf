(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sns_topic_subscription = {
  confirmation_timeout_in_minutes : float prop option; [@option]
  delivery_policy : string prop option; [@option]
  endpoint : string prop;
  endpoint_auto_confirms : bool prop option; [@option]
  filter_policy : string prop option; [@option]
  filter_policy_scope : string prop option; [@option]
  id : string prop option; [@option]
  protocol : string prop;
  raw_message_delivery : bool prop option; [@option]
  redrive_policy : string prop option; [@option]
  replay_policy : string prop option; [@option]
  subscription_role_arn : string prop option; [@option]
  topic_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sns_topic_subscription) -> ()

let yojson_of_aws_sns_topic_subscription =
  (function
   | {
       confirmation_timeout_in_minutes =
         v_confirmation_timeout_in_minutes;
       delivery_policy = v_delivery_policy;
       endpoint = v_endpoint;
       endpoint_auto_confirms = v_endpoint_auto_confirms;
       filter_policy = v_filter_policy;
       filter_policy_scope = v_filter_policy_scope;
       id = v_id;
       protocol = v_protocol;
       raw_message_delivery = v_raw_message_delivery;
       redrive_policy = v_redrive_policy;
       replay_policy = v_replay_policy;
       subscription_role_arn = v_subscription_role_arn;
       topic_arn = v_topic_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topic_arn in
         ("topic_arn", arg) :: bnds
       in
       let bnds =
         match v_subscription_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subscription_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_replay_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "replay_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_redrive_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redrive_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_raw_message_delivery with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "raw_message_delivery", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
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
         match v_filter_policy_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter_policy_scope", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filter_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_endpoint_auto_confirms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "endpoint_auto_confirms", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint in
         ("endpoint", arg) :: bnds
       in
       let bnds =
         match v_delivery_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delivery_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_confirmation_timeout_in_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "confirmation_timeout_in_minutes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_sns_topic_subscription -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sns_topic_subscription

[@@@deriving.end]

let aws_sns_topic_subscription ?confirmation_timeout_in_minutes
    ?delivery_policy ?endpoint_auto_confirms ?filter_policy
    ?filter_policy_scope ?id ?raw_message_delivery ?redrive_policy
    ?replay_policy ?subscription_role_arn ~endpoint ~protocol
    ~topic_arn () : aws_sns_topic_subscription =
  {
    confirmation_timeout_in_minutes;
    delivery_policy;
    endpoint;
    endpoint_auto_confirms;
    filter_policy;
    filter_policy_scope;
    id;
    protocol;
    raw_message_delivery;
    redrive_policy;
    replay_policy;
    subscription_role_arn;
    topic_arn;
  }

type t = {
  arn : string prop;
  confirmation_timeout_in_minutes : float prop;
  confirmation_was_authenticated : bool prop;
  delivery_policy : string prop;
  endpoint : string prop;
  endpoint_auto_confirms : bool prop;
  filter_policy : string prop;
  filter_policy_scope : string prop;
  id : string prop;
  owner_id : string prop;
  pending_confirmation : bool prop;
  protocol : string prop;
  raw_message_delivery : bool prop;
  redrive_policy : string prop;
  replay_policy : string prop;
  subscription_role_arn : string prop;
  topic_arn : string prop;
}

let make ?confirmation_timeout_in_minutes ?delivery_policy
    ?endpoint_auto_confirms ?filter_policy ?filter_policy_scope ?id
    ?raw_message_delivery ?redrive_policy ?replay_policy
    ?subscription_role_arn ~endpoint ~protocol ~topic_arn __id =
  let __type = "aws_sns_topic_subscription" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       confirmation_timeout_in_minutes =
         Prop.computed __type __id "confirmation_timeout_in_minutes";
       confirmation_was_authenticated =
         Prop.computed __type __id "confirmation_was_authenticated";
       delivery_policy = Prop.computed __type __id "delivery_policy";
       endpoint = Prop.computed __type __id "endpoint";
       endpoint_auto_confirms =
         Prop.computed __type __id "endpoint_auto_confirms";
       filter_policy = Prop.computed __type __id "filter_policy";
       filter_policy_scope =
         Prop.computed __type __id "filter_policy_scope";
       id = Prop.computed __type __id "id";
       owner_id = Prop.computed __type __id "owner_id";
       pending_confirmation =
         Prop.computed __type __id "pending_confirmation";
       protocol = Prop.computed __type __id "protocol";
       raw_message_delivery =
         Prop.computed __type __id "raw_message_delivery";
       redrive_policy = Prop.computed __type __id "redrive_policy";
       replay_policy = Prop.computed __type __id "replay_policy";
       subscription_role_arn =
         Prop.computed __type __id "subscription_role_arn";
       topic_arn = Prop.computed __type __id "topic_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sns_topic_subscription
        (aws_sns_topic_subscription ?confirmation_timeout_in_minutes
           ?delivery_policy ?endpoint_auto_confirms ?filter_policy
           ?filter_policy_scope ?id ?raw_message_delivery
           ?redrive_policy ?replay_policy ?subscription_role_arn
           ~endpoint ~protocol ~topic_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?confirmation_timeout_in_minutes
    ?delivery_policy ?endpoint_auto_confirms ?filter_policy
    ?filter_policy_scope ?id ?raw_message_delivery ?redrive_policy
    ?replay_policy ?subscription_role_arn ~endpoint ~protocol
    ~topic_arn __id =
  let (r : _ Tf_core.resource) =
    make ?confirmation_timeout_in_minutes ?delivery_policy
      ?endpoint_auto_confirms ?filter_policy ?filter_policy_scope ?id
      ?raw_message_delivery ?redrive_policy ?replay_policy
      ?subscription_role_arn ~endpoint ~protocol ~topic_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
