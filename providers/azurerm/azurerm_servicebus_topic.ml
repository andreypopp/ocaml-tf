(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_servicebus_topic *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_servicebus_topic ?auto_delete_on_idle
    ?default_message_ttl ?duplicate_detection_history_time_window
    ?enable_batched_operations ?enable_express ?enable_partitioning
    ?id ?max_message_size_in_kilobytes ?max_size_in_megabytes
    ?requires_duplicate_detection ?status ?support_ordering ?timeouts
    ~name ~namespace_id () : azurerm_servicebus_topic =
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

type t = {
  auto_delete_on_idle : string prop;
  default_message_ttl : string prop;
  duplicate_detection_history_time_window : string prop;
  enable_batched_operations : bool prop;
  enable_express : bool prop;
  enable_partitioning : bool prop;
  id : string prop;
  max_message_size_in_kilobytes : float prop;
  max_size_in_megabytes : float prop;
  name : string prop;
  namespace_id : string prop;
  requires_duplicate_detection : bool prop;
  status : string prop;
  support_ordering : bool prop;
}

let register ?tf_module ?auto_delete_on_idle ?default_message_ttl
    ?duplicate_detection_history_time_window
    ?enable_batched_operations ?enable_express ?enable_partitioning
    ?id ?max_message_size_in_kilobytes ?max_size_in_megabytes
    ?requires_duplicate_detection ?status ?support_ordering ?timeouts
    ~name ~namespace_id __resource_id =
  let __resource_type = "azurerm_servicebus_topic" in
  let __resource =
    azurerm_servicebus_topic ?auto_delete_on_idle
      ?default_message_ttl ?duplicate_detection_history_time_window
      ?enable_batched_operations ?enable_express ?enable_partitioning
      ?id ?max_message_size_in_kilobytes ?max_size_in_megabytes
      ?requires_duplicate_detection ?status ?support_ordering
      ?timeouts ~name ~namespace_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_servicebus_topic __resource);
  let __resource_attributes =
    ({
       auto_delete_on_idle =
         Prop.computed __resource_type __resource_id
           "auto_delete_on_idle";
       default_message_ttl =
         Prop.computed __resource_type __resource_id
           "default_message_ttl";
       duplicate_detection_history_time_window =
         Prop.computed __resource_type __resource_id
           "duplicate_detection_history_time_window";
       enable_batched_operations =
         Prop.computed __resource_type __resource_id
           "enable_batched_operations";
       enable_express =
         Prop.computed __resource_type __resource_id "enable_express";
       enable_partitioning =
         Prop.computed __resource_type __resource_id
           "enable_partitioning";
       id = Prop.computed __resource_type __resource_id "id";
       max_message_size_in_kilobytes =
         Prop.computed __resource_type __resource_id
           "max_message_size_in_kilobytes";
       max_size_in_megabytes =
         Prop.computed __resource_type __resource_id
           "max_size_in_megabytes";
       name = Prop.computed __resource_type __resource_id "name";
       namespace_id =
         Prop.computed __resource_type __resource_id "namespace_id";
       requires_duplicate_detection =
         Prop.computed __resource_type __resource_id
           "requires_duplicate_detection";
       status = Prop.computed __resource_type __resource_id "status";
       support_ordering =
         Prop.computed __resource_type __resource_id
           "support_ordering";
     }
      : t)
  in
  __resource_attributes
