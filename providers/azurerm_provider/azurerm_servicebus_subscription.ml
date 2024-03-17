(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_servicebus_subscription__client_scoped_subscription = {
  client_id : string option; [@option]  (** client_id *)
  is_client_scoped_subscription_durable : bool;
      (** is_client_scoped_subscription_durable *)
  is_client_scoped_subscription_shareable : bool option; [@option]
      (** is_client_scoped_subscription_shareable *)
}
[@@deriving yojson_of]
(** azurerm_servicebus_subscription__client_scoped_subscription *)

type azurerm_servicebus_subscription__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_servicebus_subscription__timeouts *)

type azurerm_servicebus_subscription = {
  client_scoped_subscription_enabled : bool option; [@option]
      (** client_scoped_subscription_enabled *)
  dead_lettering_on_filter_evaluation_error : bool option; [@option]
      (** dead_lettering_on_filter_evaluation_error *)
  dead_lettering_on_message_expiration : bool option; [@option]
      (** dead_lettering_on_message_expiration *)
  enable_batched_operations : bool option; [@option]
      (** enable_batched_operations *)
  forward_dead_lettered_messages_to : string option; [@option]
      (** forward_dead_lettered_messages_to *)
  forward_to : string option; [@option]  (** forward_to *)
  max_delivery_count : float;  (** max_delivery_count *)
  name : string;  (** name *)
  requires_session : bool option; [@option]  (** requires_session *)
  status : string option; [@option]  (** status *)
  topic_id : string;  (** topic_id *)
  client_scoped_subscription :
    azurerm_servicebus_subscription__client_scoped_subscription list;
  timeouts : azurerm_servicebus_subscription__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_servicebus_subscription *)

let azurerm_servicebus_subscription
    ?client_scoped_subscription_enabled
    ?dead_lettering_on_filter_evaluation_error
    ?dead_lettering_on_message_expiration ?enable_batched_operations
    ?forward_dead_lettered_messages_to ?forward_to ?requires_session
    ?status ?timeouts ~max_delivery_count ~name ~topic_id
    ~client_scoped_subscription __resource_id =
  let __resource_type = "azurerm_servicebus_subscription" in
  let __resource =
    {
      client_scoped_subscription_enabled;
      dead_lettering_on_filter_evaluation_error;
      dead_lettering_on_message_expiration;
      enable_batched_operations;
      forward_dead_lettered_messages_to;
      forward_to;
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
