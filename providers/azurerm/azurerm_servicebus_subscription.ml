(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type client_scoped_subscription = {
  client_id : string prop option; [@option]  (** client_id *)
  is_client_scoped_subscription_shareable : bool prop option;
      [@option]
      (** is_client_scoped_subscription_shareable *)
}
[@@deriving yojson_of]
(** client_scoped_subscription *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_servicebus_subscription = {
  auto_delete_on_idle : string prop option; [@option]
      (** auto_delete_on_idle *)
  client_scoped_subscription_enabled : bool prop option; [@option]
      (** client_scoped_subscription_enabled *)
  dead_lettering_on_filter_evaluation_error : bool prop option;
      [@option]
      (** dead_lettering_on_filter_evaluation_error *)
  dead_lettering_on_message_expiration : bool prop option; [@option]
      (** dead_lettering_on_message_expiration *)
  default_message_ttl : string prop option; [@option]
      (** default_message_ttl *)
  enable_batched_operations : bool prop option; [@option]
      (** enable_batched_operations *)
  forward_dead_lettered_messages_to : string prop option; [@option]
      (** forward_dead_lettered_messages_to *)
  forward_to : string prop option; [@option]  (** forward_to *)
  id : string prop option; [@option]  (** id *)
  lock_duration : string prop option; [@option]  (** lock_duration *)
  max_delivery_count : float prop;  (** max_delivery_count *)
  name : string prop;  (** name *)
  requires_session : bool prop option; [@option]
      (** requires_session *)
  status : string prop option; [@option]  (** status *)
  topic_id : string prop;  (** topic_id *)
  client_scoped_subscription : client_scoped_subscription list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_servicebus_subscription *)

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
    ?timeouts ~max_delivery_count ~name ~topic_id
    ~client_scoped_subscription () : azurerm_servicebus_subscription
    =
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
    ?timeouts ~max_delivery_count ~name ~topic_id
    ~client_scoped_subscription __id =
  let __type = "azurerm_servicebus_subscription" in
  let __attrs =
    ({
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
           ?lock_duration ?requires_session ?status ?timeouts
           ~max_delivery_count ~name ~topic_id
           ~client_scoped_subscription ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_delete_on_idle
    ?client_scoped_subscription_enabled
    ?dead_lettering_on_filter_evaluation_error
    ?dead_lettering_on_message_expiration ?default_message_ttl
    ?enable_batched_operations ?forward_dead_lettered_messages_to
    ?forward_to ?id ?lock_duration ?requires_session ?status
    ?timeouts ~max_delivery_count ~name ~topic_id
    ~client_scoped_subscription __id =
  let (r : _ Tf_core.resource) =
    make ?auto_delete_on_idle ?client_scoped_subscription_enabled
      ?dead_lettering_on_filter_evaluation_error
      ?dead_lettering_on_message_expiration ?default_message_ttl
      ?enable_batched_operations ?forward_dead_lettered_messages_to
      ?forward_to ?id ?lock_duration ?requires_session ?status
      ?timeouts ~max_delivery_count ~name ~topic_id
      ~client_scoped_subscription __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
