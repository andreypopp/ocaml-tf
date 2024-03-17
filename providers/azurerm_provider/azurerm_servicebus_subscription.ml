(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_servicebus_subscription__client_scoped_subscription = {
  client_id : string prop option; [@option]  (** client_id *)
  is_client_scoped_subscription_durable : bool prop;
      (** is_client_scoped_subscription_durable *)
  is_client_scoped_subscription_shareable : bool prop option;
      [@option]
      (** is_client_scoped_subscription_shareable *)
}
[@@deriving yojson_of]
(** azurerm_servicebus_subscription__client_scoped_subscription *)

type azurerm_servicebus_subscription__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_servicebus_subscription__timeouts *)

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
  client_scoped_subscription :
    azurerm_servicebus_subscription__client_scoped_subscription list;
  timeouts : azurerm_servicebus_subscription__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_servicebus_subscription *)

let azurerm_servicebus_subscription ?auto_delete_on_idle
    ?client_scoped_subscription_enabled
    ?dead_lettering_on_filter_evaluation_error
    ?dead_lettering_on_message_expiration ?default_message_ttl
    ?enable_batched_operations ?forward_dead_lettered_messages_to
    ?forward_to ?id ?lock_duration ?requires_session ?status
    ?timeouts ~max_delivery_count ~name ~topic_id
    ~client_scoped_subscription __resource_id =
  let __resource_type = "azurerm_servicebus_subscription" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_servicebus_subscription __resource);
  ()
