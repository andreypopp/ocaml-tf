(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_servicebus_queue__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_servicebus_queue__timeouts *)

type azurerm_servicebus_queue = {
  auto_delete_on_idle : string prop option; [@option]
      (** auto_delete_on_idle *)
  dead_lettering_on_message_expiration : bool prop option; [@option]
      (** dead_lettering_on_message_expiration *)
  default_message_ttl : string prop option; [@option]
      (** default_message_ttl *)
  duplicate_detection_history_time_window : string prop option;
      [@option]
      (** duplicate_detection_history_time_window *)
  enable_batched_operations : bool prop option; [@option]
      (** enable_batched_operations *)
  enable_express : bool prop option; [@option]  (** enable_express *)
  enable_partitioning : bool prop option; [@option]
      (** enable_partitioning *)
  forward_dead_lettered_messages_to : string prop option; [@option]
      (** forward_dead_lettered_messages_to *)
  forward_to : string prop option; [@option]  (** forward_to *)
  id : string prop option; [@option]  (** id *)
  lock_duration : string prop option; [@option]  (** lock_duration *)
  max_delivery_count : float prop option; [@option]
      (** max_delivery_count *)
  max_message_size_in_kilobytes : float prop option; [@option]
      (** max_message_size_in_kilobytes *)
  max_size_in_megabytes : float prop option; [@option]
      (** max_size_in_megabytes *)
  name : string prop;  (** name *)
  namespace_id : string prop;  (** namespace_id *)
  requires_duplicate_detection : bool prop option; [@option]
      (** requires_duplicate_detection *)
  requires_session : bool prop option; [@option]
      (** requires_session *)
  status : string prop option; [@option]  (** status *)
  timeouts : azurerm_servicebus_queue__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_servicebus_queue *)

let azurerm_servicebus_queue ?auto_delete_on_idle
    ?dead_lettering_on_message_expiration ?default_message_ttl
    ?duplicate_detection_history_time_window
    ?enable_batched_operations ?enable_express ?enable_partitioning
    ?forward_dead_lettered_messages_to ?forward_to ?id ?lock_duration
    ?max_delivery_count ?max_message_size_in_kilobytes
    ?max_size_in_megabytes ?requires_duplicate_detection
    ?requires_session ?status ?timeouts ~name ~namespace_id
    __resource_id =
  let __resource_type = "azurerm_servicebus_queue" in
  let __resource =
    {
      auto_delete_on_idle;
      dead_lettering_on_message_expiration;
      default_message_ttl;
      duplicate_detection_history_time_window;
      enable_batched_operations;
      enable_express;
      enable_partitioning;
      forward_dead_lettered_messages_to;
      forward_to;
      id;
      lock_duration;
      max_delivery_count;
      max_message_size_in_kilobytes;
      max_size_in_megabytes;
      name;
      namespace_id;
      requires_duplicate_detection;
      requires_session;
      status;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_servicebus_queue __resource);
  ()
