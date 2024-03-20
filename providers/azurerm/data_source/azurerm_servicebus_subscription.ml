(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_servicebus_subscription = {
  id : string prop option; [@option]
  name : string prop;
  namespace_name : string prop option; [@option]
  resource_group_name : string prop option; [@option]
  topic_id : string prop option; [@option]
  topic_name : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_servicebus_subscription) -> ()

let yojson_of_azurerm_servicebus_subscription =
  (function
   | {
       id = v_id;
       name = v_name;
       namespace_name = v_namespace_name;
       resource_group_name = v_resource_group_name;
       topic_id = v_topic_id;
       topic_name = v_topic_name;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_topic_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "topic_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_topic_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "topic_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_namespace_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace_name", arg in
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
       `Assoc bnds
    : azurerm_servicebus_subscription ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_servicebus_subscription

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_servicebus_subscription ?id ?namespace_name
    ?resource_group_name ?topic_id ?topic_name ?timeouts ~name () :
    azurerm_servicebus_subscription =
  {
    id;
    name;
    namespace_name;
    resource_group_name;
    topic_id;
    topic_name;
    timeouts;
  }

type t = {
  auto_delete_on_idle : string prop;
  dead_lettering_on_filter_evaluation_error : bool prop;
  dead_lettering_on_message_expiration : bool prop;
  default_message_ttl : string prop;
  enable_batched_operations : bool prop;
  forward_dead_lettered_messages_to : string prop;
  forward_to : string prop;
  id : string prop;
  lock_duration : string prop;
  max_delivery_count : float prop;
  name : string prop;
  namespace_name : string prop;
  requires_session : bool prop;
  resource_group_name : string prop;
  topic_id : string prop;
  topic_name : string prop;
}

let make ?id ?namespace_name ?resource_group_name ?topic_id
    ?topic_name ?timeouts ~name __id =
  let __type = "azurerm_servicebus_subscription" in
  let __attrs =
    ({
       auto_delete_on_idle =
         Prop.computed __type __id "auto_delete_on_idle";
       dead_lettering_on_filter_evaluation_error =
         Prop.computed __type __id
           "dead_lettering_on_filter_evaluation_error";
       dead_lettering_on_message_expiration =
         Prop.computed __type __id
           "dead_lettering_on_message_expiration";
       default_message_ttl =
         Prop.computed __type __id "default_message_ttl";
       enable_batched_operations =
         Prop.computed __type __id "enable_batched_operations";
       forward_dead_lettered_messages_to =
         Prop.computed __type __id
           "forward_dead_lettered_messages_to";
       forward_to = Prop.computed __type __id "forward_to";
       id = Prop.computed __type __id "id";
       lock_duration = Prop.computed __type __id "lock_duration";
       max_delivery_count =
         Prop.computed __type __id "max_delivery_count";
       name = Prop.computed __type __id "name";
       namespace_name = Prop.computed __type __id "namespace_name";
       requires_session =
         Prop.computed __type __id "requires_session";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       topic_id = Prop.computed __type __id "topic_id";
       topic_name = Prop.computed __type __id "topic_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_servicebus_subscription
        (azurerm_servicebus_subscription ?id ?namespace_name
           ?resource_group_name ?topic_id ?topic_name ?timeouts ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace_name ?resource_group_name
    ?topic_id ?topic_name ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?namespace_name ?resource_group_name ?topic_id
      ?topic_name ?timeouts ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
