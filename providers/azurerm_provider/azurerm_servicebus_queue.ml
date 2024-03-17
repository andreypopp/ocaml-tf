(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_servicebus_queue__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_servicebus_queue__timeouts *)

type azurerm_servicebus_queue = {
  dead_lettering_on_message_expiration : bool option; [@option]
      (** dead_lettering_on_message_expiration *)
  enable_batched_operations : bool option; [@option]
      (** enable_batched_operations *)
  enable_express : bool option; [@option]  (** enable_express *)
  enable_partitioning : bool option; [@option]
      (** enable_partitioning *)
  forward_dead_lettered_messages_to : string option; [@option]
      (** forward_dead_lettered_messages_to *)
  forward_to : string option; [@option]  (** forward_to *)
  max_delivery_count : float option; [@option]
      (** max_delivery_count *)
  name : string;  (** name *)
  namespace_id : string;  (** namespace_id *)
  requires_duplicate_detection : bool option; [@option]
      (** requires_duplicate_detection *)
  requires_session : bool option; [@option]  (** requires_session *)
  status : string option; [@option]  (** status *)
  timeouts : azurerm_servicebus_queue__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_servicebus_queue *)

let azurerm_servicebus_queue ?dead_lettering_on_message_expiration
    ?enable_batched_operations ?enable_express ?enable_partitioning
    ?forward_dead_lettered_messages_to ?forward_to
    ?max_delivery_count ?requires_duplicate_detection
    ?requires_session ?status ?timeouts ~name ~namespace_id
    __resource_id =
  let __resource_type = "azurerm_servicebus_queue" in
  let __resource =
    {
      dead_lettering_on_message_expiration;
      enable_batched_operations;
      enable_express;
      enable_partitioning;
      forward_dead_lettered_messages_to;
      forward_to;
      max_delivery_count;
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
