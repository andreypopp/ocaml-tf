(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type azurerm_servicebus_queue = {
  auto_delete_on_idle : string prop option; [@option]
  dead_lettering_on_message_expiration : bool prop option; [@option]
  default_message_ttl : string prop option; [@option]
  duplicate_detection_history_time_window : string prop option;
      [@option]
  enable_batched_operations : bool prop option; [@option]
  enable_express : bool prop option; [@option]
  enable_partitioning : bool prop option; [@option]
  forward_dead_lettered_messages_to : string prop option; [@option]
  forward_to : string prop option; [@option]
  id : string prop option; [@option]
  lock_duration : string prop option; [@option]
  max_delivery_count : float prop option; [@option]
  max_message_size_in_kilobytes : float prop option; [@option]
  max_size_in_megabytes : float prop option; [@option]
  name : string prop;
  namespace_id : string prop;
  requires_duplicate_detection : bool prop option; [@option]
  requires_session : bool prop option; [@option]
  status : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_servicebus_queue) -> ()

let yojson_of_azurerm_servicebus_queue =
  (function
   | {
       auto_delete_on_idle = v_auto_delete_on_idle;
       dead_lettering_on_message_expiration =
         v_dead_lettering_on_message_expiration;
       default_message_ttl = v_default_message_ttl;
       duplicate_detection_history_time_window =
         v_duplicate_detection_history_time_window;
       enable_batched_operations = v_enable_batched_operations;
       enable_express = v_enable_express;
       enable_partitioning = v_enable_partitioning;
       forward_dead_lettered_messages_to =
         v_forward_dead_lettered_messages_to;
       forward_to = v_forward_to;
       id = v_id;
       lock_duration = v_lock_duration;
       max_delivery_count = v_max_delivery_count;
       max_message_size_in_kilobytes =
         v_max_message_size_in_kilobytes;
       max_size_in_megabytes = v_max_size_in_megabytes;
       name = v_name;
       namespace_id = v_namespace_id;
       requires_duplicate_detection = v_requires_duplicate_detection;
       requires_session = v_requires_session;
       status = v_status;
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
         match v_requires_duplicate_detection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "requires_duplicate_detection", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace_id in
         ("namespace_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_max_size_in_megabytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_size_in_megabytes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_message_size_in_kilobytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_message_size_in_kilobytes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_delivery_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_delivery_count", arg in
             bnd :: bnds
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
         match v_enable_partitioning with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_partitioning", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_express with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_express", arg in
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
         match v_duplicate_detection_history_time_window with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "duplicate_detection_history_time_window", arg
             in
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
         match v_auto_delete_on_idle with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auto_delete_on_idle", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_servicebus_queue -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_servicebus_queue

[@@@deriving.end]

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
