(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type client_scoped_subscription = {
  client_id : string prop option; [@option]
  is_client_scoped_subscription_shareable : bool prop option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : client_scoped_subscription) -> ()

let yojson_of_client_scoped_subscription =
  (function
   | {
       client_id = v_client_id;
       is_client_scoped_subscription_shareable =
         v_is_client_scoped_subscription_shareable;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_is_client_scoped_subscription_shareable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "is_client_scoped_subscription_shareable", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : client_scoped_subscription -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_client_scoped_subscription

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_servicebus_subscription = {
  auto_delete_on_idle : string prop option; [@option]
  client_scoped_subscription_enabled : bool prop option; [@option]
  dead_lettering_on_filter_evaluation_error : bool prop option;
      [@option]
  dead_lettering_on_message_expiration : bool prop option; [@option]
  default_message_ttl : string prop option; [@option]
  enable_batched_operations : bool prop option; [@option]
  forward_dead_lettered_messages_to : string prop option; [@option]
  forward_to : string prop option; [@option]
  id : string prop option; [@option]
  lock_duration : string prop option; [@option]
  max_delivery_count : float prop;
  name : string prop;
  requires_session : bool prop option; [@option]
  status : string prop option; [@option]
  topic_id : string prop;
  client_scoped_subscription : client_scoped_subscription list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_servicebus_subscription) -> ()

let yojson_of_azurerm_servicebus_subscription =
  (function
   | {
       auto_delete_on_idle = v_auto_delete_on_idle;
       client_scoped_subscription_enabled =
         v_client_scoped_subscription_enabled;
       dead_lettering_on_filter_evaluation_error =
         v_dead_lettering_on_filter_evaluation_error;
       dead_lettering_on_message_expiration =
         v_dead_lettering_on_message_expiration;
       default_message_ttl = v_default_message_ttl;
       enable_batched_operations = v_enable_batched_operations;
       forward_dead_lettered_messages_to =
         v_forward_dead_lettered_messages_to;
       forward_to = v_forward_to;
       id = v_id;
       lock_duration = v_lock_duration;
       max_delivery_count = v_max_delivery_count;
       name = v_name;
       requires_session = v_requires_session;
       status = v_status;
       topic_id = v_topic_id;
       client_scoped_subscription = v_client_scoped_subscription;
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
         if Stdlib.( = ) [] v_client_scoped_subscription then bnds
         else
           let arg =
             (yojson_of_list yojson_of_client_scoped_subscription)
               v_client_scoped_subscription
           in
           let bnd = "client_scoped_subscription", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topic_id in
         ("topic_id", arg) :: bnds
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_requires_session with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "requires_session", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_delivery_count
         in
         ("max_delivery_count", arg) :: bnds
       in
       let bnds =
         match v_lock_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lock_duration", arg in
             bnd :: bnds
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
         match v_forward_to with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "forward_to", arg in
             bnd :: bnds
       in
       let bnds =
         match v_forward_dead_lettered_messages_to with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "forward_dead_lettered_messages_to", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_batched_operations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_batched_operations", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_message_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_message_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dead_lettering_on_message_expiration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "dead_lettering_on_message_expiration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dead_lettering_on_filter_evaluation_error with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "dead_lettering_on_filter_evaluation_error", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_client_scoped_subscription_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "client_scoped_subscription_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_delete_on_idle with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auto_delete_on_idle", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_servicebus_subscription ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_servicebus_subscription

[@@@deriving.end]

let client_scoped_subscription ?client_id
    ?is_client_scoped_subscription_shareable () :
    client_scoped_subscription =
  { client_id; is_client_scoped_subscription_shareable }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_servicebus_subscription ?auto_delete_on_idle
    ?client_scoped_subscription_enabled
    ?dead_lettering_on_filter_evaluation_error
    ?dead_lettering_on_message_expiration ?default_message_ttl
    ?enable_batched_operations ?forward_dead_lettered_messages_to
    ?forward_to ?id ?lock_duration ?requires_session ?status
    ?(client_scoped_subscription = []) ?timeouts ~max_delivery_count
    ~name ~topic_id () : azurerm_servicebus_subscription =
  {
    auto_delete_on_idle;
    client_scoped_subscription_enabled;
    dead_lettering_on_filter_evaluation_error;
    dead_lettering_on_message_expiration;
    default_message_ttl;
    enable_batched_operations;
    forward_dead_lettered_messages_to;
    forward_to;
    id;
    lock_duration;
    max_delivery_count;
    name;
    requires_session;
    status;
    topic_id;
    client_scoped_subscription;
    timeouts;
  }

type t = {
  tf_name : string;
  auto_delete_on_idle : string prop;
  client_scoped_subscription_enabled : bool prop;
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
  requires_session : bool prop;
  status : string prop;
  topic_id : string prop;
}

let make ?auto_delete_on_idle ?client_scoped_subscription_enabled
    ?dead_lettering_on_filter_evaluation_error
    ?dead_lettering_on_message_expiration ?default_message_ttl
    ?enable_batched_operations ?forward_dead_lettered_messages_to
    ?forward_to ?id ?lock_duration ?requires_session ?status
    ?(client_scoped_subscription = []) ?timeouts ~max_delivery_count
    ~name ~topic_id __id =
  let __type = "azurerm_servicebus_subscription" in
  let __attrs =
    ({
       tf_name = __id;
       auto_delete_on_idle =
         Prop.computed __type __id "auto_delete_on_idle";
       client_scoped_subscription_enabled =
         Prop.computed __type __id
           "client_scoped_subscription_enabled";
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
       requires_session =
         Prop.computed __type __id "requires_session";
       status = Prop.computed __type __id "status";
       topic_id = Prop.computed __type __id "topic_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_servicebus_subscription
        (azurerm_servicebus_subscription ?auto_delete_on_idle
           ?client_scoped_subscription_enabled
           ?dead_lettering_on_filter_evaluation_error
           ?dead_lettering_on_message_expiration ?default_message_ttl
           ?enable_batched_operations
           ?forward_dead_lettered_messages_to ?forward_to ?id
           ?lock_duration ?requires_session ?status
           ~client_scoped_subscription ?timeouts ~max_delivery_count
           ~name ~topic_id ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_delete_on_idle
    ?client_scoped_subscription_enabled
    ?dead_lettering_on_filter_evaluation_error
    ?dead_lettering_on_message_expiration ?default_message_ttl
    ?enable_batched_operations ?forward_dead_lettered_messages_to
    ?forward_to ?id ?lock_duration ?requires_session ?status
    ?(client_scoped_subscription = []) ?timeouts ~max_delivery_count
    ~name ~topic_id __id =
  let (r : _ Tf_core.resource) =
    make ?auto_delete_on_idle ?client_scoped_subscription_enabled
      ?dead_lettering_on_filter_evaluation_error
      ?dead_lettering_on_message_expiration ?default_message_ttl
      ?enable_batched_operations ?forward_dead_lettered_messages_to
      ?forward_to ?id ?lock_duration ?requires_session ?status
      ~client_scoped_subscription ?timeouts ~max_delivery_count ~name
      ~topic_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
