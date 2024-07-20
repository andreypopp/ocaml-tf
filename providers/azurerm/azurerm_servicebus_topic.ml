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

type azurerm_servicebus_topic = {
  auto_delete_on_idle : string prop option; [@option]
  batched_operations_enabled : bool prop option; [@option]
  default_message_ttl : string prop option; [@option]
  duplicate_detection_history_time_window : string prop option;
      [@option]
  enable_batched_operations : bool prop option; [@option]
  enable_express : bool prop option; [@option]
  enable_partitioning : bool prop option; [@option]
  express_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  max_message_size_in_kilobytes : float prop option; [@option]
  max_size_in_megabytes : float prop option; [@option]
  name : string prop;
  namespace_id : string prop;
  partitioning_enabled : bool prop option; [@option]
  requires_duplicate_detection : bool prop option; [@option]
  status : string prop option; [@option]
  support_ordering : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_servicebus_topic) -> ()

let yojson_of_azurerm_servicebus_topic =
  (function
   | {
       auto_delete_on_idle = v_auto_delete_on_idle;
       batched_operations_enabled = v_batched_operations_enabled;
       default_message_ttl = v_default_message_ttl;
       duplicate_detection_history_time_window =
         v_duplicate_detection_history_time_window;
       enable_batched_operations = v_enable_batched_operations;
       enable_express = v_enable_express;
       enable_partitioning = v_enable_partitioning;
       express_enabled = v_express_enabled;
       id = v_id;
       max_message_size_in_kilobytes =
         v_max_message_size_in_kilobytes;
       max_size_in_megabytes = v_max_size_in_megabytes;
       name = v_name;
       namespace_id = v_namespace_id;
       partitioning_enabled = v_partitioning_enabled;
       requires_duplicate_detection = v_requires_duplicate_detection;
       status = v_status;
       support_ordering = v_support_ordering;
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
         match v_support_ordering with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "support_ordering", arg in
             bnd :: bnds
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
         match v_requires_duplicate_detection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "requires_duplicate_detection", arg in
             bnd :: bnds
       in
       let bnds =
         match v_partitioning_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "partitioning_enabled", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_express_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "express_enabled", arg in
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
         match v_batched_operations_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "batched_operations_enabled", arg in
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
    : azurerm_servicebus_topic -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_servicebus_topic

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_servicebus_topic ?auto_delete_on_idle
    ?batched_operations_enabled ?default_message_ttl
    ?duplicate_detection_history_time_window
    ?enable_batched_operations ?enable_express ?enable_partitioning
    ?express_enabled ?id ?max_message_size_in_kilobytes
    ?max_size_in_megabytes ?partitioning_enabled
    ?requires_duplicate_detection ?status ?support_ordering ?timeouts
    ~name ~namespace_id () : azurerm_servicebus_topic =
  {
    auto_delete_on_idle;
    batched_operations_enabled;
    default_message_ttl;
    duplicate_detection_history_time_window;
    enable_batched_operations;
    enable_express;
    enable_partitioning;
    express_enabled;
    id;
    max_message_size_in_kilobytes;
    max_size_in_megabytes;
    name;
    namespace_id;
    partitioning_enabled;
    requires_duplicate_detection;
    status;
    support_ordering;
    timeouts;
  }

type t = {
  tf_name : string;
  auto_delete_on_idle : string prop;
  batched_operations_enabled : bool prop;
  default_message_ttl : string prop;
  duplicate_detection_history_time_window : string prop;
  enable_batched_operations : bool prop;
  enable_express : bool prop;
  enable_partitioning : bool prop;
  express_enabled : bool prop;
  id : string prop;
  max_message_size_in_kilobytes : float prop;
  max_size_in_megabytes : float prop;
  name : string prop;
  namespace_id : string prop;
  partitioning_enabled : bool prop;
  requires_duplicate_detection : bool prop;
  status : string prop;
  support_ordering : bool prop;
}

let make ?auto_delete_on_idle ?batched_operations_enabled
    ?default_message_ttl ?duplicate_detection_history_time_window
    ?enable_batched_operations ?enable_express ?enable_partitioning
    ?express_enabled ?id ?max_message_size_in_kilobytes
    ?max_size_in_megabytes ?partitioning_enabled
    ?requires_duplicate_detection ?status ?support_ordering ?timeouts
    ~name ~namespace_id __id =
  let __type = "azurerm_servicebus_topic" in
  let __attrs =
    ({
       tf_name = __id;
       auto_delete_on_idle =
         Prop.computed __type __id "auto_delete_on_idle";
       batched_operations_enabled =
         Prop.computed __type __id "batched_operations_enabled";
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
       express_enabled = Prop.computed __type __id "express_enabled";
       id = Prop.computed __type __id "id";
       max_message_size_in_kilobytes =
         Prop.computed __type __id "max_message_size_in_kilobytes";
       max_size_in_megabytes =
         Prop.computed __type __id "max_size_in_megabytes";
       name = Prop.computed __type __id "name";
       namespace_id = Prop.computed __type __id "namespace_id";
       partitioning_enabled =
         Prop.computed __type __id "partitioning_enabled";
       requires_duplicate_detection =
         Prop.computed __type __id "requires_duplicate_detection";
       status = Prop.computed __type __id "status";
       support_ordering =
         Prop.computed __type __id "support_ordering";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_servicebus_topic
        (azurerm_servicebus_topic ?auto_delete_on_idle
           ?batched_operations_enabled ?default_message_ttl
           ?duplicate_detection_history_time_window
           ?enable_batched_operations ?enable_express
           ?enable_partitioning ?express_enabled ?id
           ?max_message_size_in_kilobytes ?max_size_in_megabytes
           ?partitioning_enabled ?requires_duplicate_detection
           ?status ?support_ordering ?timeouts ~name ~namespace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_delete_on_idle
    ?batched_operations_enabled ?default_message_ttl
    ?duplicate_detection_history_time_window
    ?enable_batched_operations ?enable_express ?enable_partitioning
    ?express_enabled ?id ?max_message_size_in_kilobytes
    ?max_size_in_megabytes ?partitioning_enabled
    ?requires_duplicate_detection ?status ?support_ordering ?timeouts
    ~name ~namespace_id __id =
  let (r : _ Tf_core.resource) =
    make ?auto_delete_on_idle ?batched_operations_enabled
      ?default_message_ttl ?duplicate_detection_history_time_window
      ?enable_batched_operations ?enable_express ?enable_partitioning
      ?express_enabled ?id ?max_message_size_in_kilobytes
      ?max_size_in_megabytes ?partitioning_enabled
      ?requires_duplicate_detection ?status ?support_ordering
      ?timeouts ~name ~namespace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
