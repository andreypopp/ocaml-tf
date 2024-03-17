(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_servicebus_topic__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_servicebus_topic__timeouts *)

type azurerm_servicebus_topic = {
  auto_delete_on_idle : string prop option; [@option]
      (** auto_delete_on_idle *)
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
  id : string prop option; [@option]  (** id *)
  max_message_size_in_kilobytes : float prop option; [@option]
      (** max_message_size_in_kilobytes *)
  max_size_in_megabytes : float prop option; [@option]
      (** max_size_in_megabytes *)
  name : string prop;  (** name *)
  namespace_id : string prop;  (** namespace_id *)
  requires_duplicate_detection : bool prop option; [@option]
      (** requires_duplicate_detection *)
  status : string prop option; [@option]  (** status *)
  support_ordering : bool prop option; [@option]
      (** support_ordering *)
  timeouts : azurerm_servicebus_topic__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_servicebus_topic *)

let azurerm_servicebus_topic ?auto_delete_on_idle
    ?default_message_ttl ?duplicate_detection_history_time_window
    ?enable_batched_operations ?enable_express ?enable_partitioning
    ?id ?max_message_size_in_kilobytes ?max_size_in_megabytes
    ?requires_duplicate_detection ?status ?support_ordering ?timeouts
    ~name ~namespace_id __resource_id =
  let __resource_type = "azurerm_servicebus_topic" in
  let __resource =
    {
      auto_delete_on_idle;
      default_message_ttl;
      duplicate_detection_history_time_window;
      enable_batched_operations;
      enable_express;
      enable_partitioning;
      id;
      max_message_size_in_kilobytes;
      max_size_in_megabytes;
      name;
      namespace_id;
      requires_duplicate_detection;
      status;
      support_ordering;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_servicebus_topic __resource);
  ()
