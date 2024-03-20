(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_servicebus_queue *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_servicebus_queue ?auto_delete_on_idle
    ?dead_lettering_on_message_expiration ?default_message_ttl
    ?duplicate_detection_history_time_window
    ?enable_batched_operations ?enable_express ?enable_partitioning
    ?forward_dead_lettered_messages_to ?forward_to ?id ?lock_duration
    ?max_delivery_count ?max_message_size_in_kilobytes
    ?max_size_in_megabytes ?requires_duplicate_detection
    ?requires_session ?status ?timeouts ~name ~namespace_id () :
    azurerm_servicebus_queue =
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

type t = {
  auto_delete_on_idle : string prop;
  dead_lettering_on_message_expiration : bool prop;
  default_message_ttl : string prop;
  duplicate_detection_history_time_window : string prop;
  enable_batched_operations : bool prop;
  enable_express : bool prop;
  enable_partitioning : bool prop;
  forward_dead_lettered_messages_to : string prop;
  forward_to : string prop;
  id : string prop;
  lock_duration : string prop;
  max_delivery_count : float prop;
  max_message_size_in_kilobytes : float prop;
  max_size_in_megabytes : float prop;
  name : string prop;
  namespace_id : string prop;
  requires_duplicate_detection : bool prop;
  requires_session : bool prop;
  status : string prop;
}

let make ?auto_delete_on_idle ?dead_lettering_on_message_expiration
    ?default_message_ttl ?duplicate_detection_history_time_window
    ?enable_batched_operations ?enable_express ?enable_partitioning
    ?forward_dead_lettered_messages_to ?forward_to ?id ?lock_duration
    ?max_delivery_count ?max_message_size_in_kilobytes
    ?max_size_in_megabytes ?requires_duplicate_detection
    ?requires_session ?status ?timeouts ~name ~namespace_id __id =
  let __type = "azurerm_servicebus_queue" in
  let __attrs =
    ({
       auto_delete_on_idle =
         Prop.computed __type __id "auto_delete_on_idle";
       dead_lettering_on_message_expiration =
         Prop.computed __type __id
           "dead_lettering_on_message_expiration";
       default_message_ttl =
         Prop.computed __type __id "default_message_ttl";
       duplicate_detection_history_time_window =
         Prop.computed __type __id
           "duplicate_detection_history_time_window";
       enable_batched_operations =
         Prop.computed __type __id "enable_batched_operations";
       enable_express = Prop.computed __type __id "enable_express";
       enable_partitioning =
         Prop.computed __type __id "enable_partitioning";
       forward_dead_lettered_messages_to =
         Prop.computed __type __id
           "forward_dead_lettered_messages_to";
       forward_to = Prop.computed __type __id "forward_to";
       id = Prop.computed __type __id "id";
       lock_duration = Prop.computed __type __id "lock_duration";
       max_delivery_count =
         Prop.computed __type __id "max_delivery_count";
       max_message_size_in_kilobytes =
         Prop.computed __type __id "max_message_size_in_kilobytes";
       max_size_in_megabytes =
         Prop.computed __type __id "max_size_in_megabytes";
       name = Prop.computed __type __id "name";
       namespace_id = Prop.computed __type __id "namespace_id";
       requires_duplicate_detection =
         Prop.computed __type __id "requires_duplicate_detection";
       requires_session =
         Prop.computed __type __id "requires_session";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_servicebus_queue
        (azurerm_servicebus_queue ?auto_delete_on_idle
           ?dead_lettering_on_message_expiration ?default_message_ttl
           ?duplicate_detection_history_time_window
           ?enable_batched_operations ?enable_express
           ?enable_partitioning ?forward_dead_lettered_messages_to
           ?forward_to ?id ?lock_duration ?max_delivery_count
           ?max_message_size_in_kilobytes ?max_size_in_megabytes
           ?requires_duplicate_detection ?requires_session ?status
           ?timeouts ~name ~namespace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_delete_on_idle
    ?dead_lettering_on_message_expiration ?default_message_ttl
    ?duplicate_detection_history_time_window
    ?enable_batched_operations ?enable_express ?enable_partitioning
    ?forward_dead_lettered_messages_to ?forward_to ?id ?lock_duration
    ?max_delivery_count ?max_message_size_in_kilobytes
    ?max_size_in_megabytes ?requires_duplicate_detection
    ?requires_session ?status ?timeouts ~name ~namespace_id __id =
  let (r : _ Tf_core.resource) =
    make ?auto_delete_on_idle ?dead_lettering_on_message_expiration
      ?default_message_ttl ?duplicate_detection_history_time_window
      ?enable_batched_operations ?enable_express ?enable_partitioning
      ?forward_dead_lettered_messages_to ?forward_to ?id
      ?lock_duration ?max_delivery_count
      ?max_message_size_in_kilobytes ?max_size_in_megabytes
      ?requires_duplicate_detection ?requires_session ?status
      ?timeouts ~name ~namespace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
