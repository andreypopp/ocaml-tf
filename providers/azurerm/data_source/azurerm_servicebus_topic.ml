(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_servicebus_topic = {
  id : string prop option; [@option]
  name : string prop;
  namespace_id : string prop option; [@option]
  namespace_name : string prop option; [@option]
  resource_group_name : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_servicebus_topic) -> ()

let yojson_of_azurerm_servicebus_topic =
  (function
   | {
       id = v_id;
       name = v_name;
       namespace_id = v_namespace_id;
       namespace_name = v_namespace_name;
       resource_group_name = v_resource_group_name;
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
         match v_resource_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_namespace_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_namespace_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_servicebus_topic -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_servicebus_topic

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_servicebus_topic ?id ?namespace_id ?namespace_name
    ?resource_group_name ?timeouts ~name () :
    azurerm_servicebus_topic =
  {
    id;
    name;
    namespace_id;
    namespace_name;
    resource_group_name;
    timeouts;
  }

type t = {
  tf_name : string;
  auto_delete_on_idle : string prop;
  default_message_ttl : string prop;
  duplicate_detection_history_time_window : string prop;
  enable_batched_operations : bool prop;
  enable_express : bool prop;
  enable_partitioning : bool prop;
  id : string prop;
  max_size_in_megabytes : float prop;
  name : string prop;
  namespace_id : string prop;
  namespace_name : string prop;
  requires_duplicate_detection : bool prop;
  resource_group_name : string prop;
  status : string prop;
  support_ordering : bool prop;
}

let make ?id ?namespace_id ?namespace_name ?resource_group_name
    ?timeouts ~name __id =
  let __type = "azurerm_servicebus_topic" in
  let __attrs =
    ({
       tf_name = __id;
       auto_delete_on_idle =
         Prop.computed __type __id "auto_delete_on_idle";
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
       id = Prop.computed __type __id "id";
       max_size_in_megabytes =
         Prop.computed __type __id "max_size_in_megabytes";
       name = Prop.computed __type __id "name";
       namespace_id = Prop.computed __type __id "namespace_id";
       namespace_name = Prop.computed __type __id "namespace_name";
       requires_duplicate_detection =
         Prop.computed __type __id "requires_duplicate_detection";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
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
        (azurerm_servicebus_topic ?id ?namespace_id ?namespace_name
           ?resource_group_name ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace_id ?namespace_name
    ?resource_group_name ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?namespace_id ?namespace_name ?resource_group_name
      ?timeouts ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
