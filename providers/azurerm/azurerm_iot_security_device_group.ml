(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type allow_rule = {
  connection_from_ips_not_allowed : string prop list option;
      [@option]
  connection_to_ips_not_allowed : string prop list option; [@option]
  local_users_not_allowed : string prop list option; [@option]
  processes_not_allowed : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : allow_rule) -> ()

let yojson_of_allow_rule =
  (function
   | {
       connection_from_ips_not_allowed =
         v_connection_from_ips_not_allowed;
       connection_to_ips_not_allowed =
         v_connection_to_ips_not_allowed;
       local_users_not_allowed = v_local_users_not_allowed;
       processes_not_allowed = v_processes_not_allowed;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_processes_not_allowed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "processes_not_allowed", arg in
             bnd :: bnds
       in
       let bnds =
         match v_local_users_not_allowed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "local_users_not_allowed", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection_to_ips_not_allowed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "connection_to_ips_not_allowed", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection_from_ips_not_allowed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "connection_from_ips_not_allowed", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : allow_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_allow_rule

[@@@deriving.end]

type range_rule = {
  duration : string prop;
  max : float prop;
  min : float prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : range_rule) -> ()

let yojson_of_range_rule =
  (function
   | {
       duration = v_duration;
       max = v_max;
       min = v_min;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min in
         ("min", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max in
         ("max", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_duration in
         ("duration", arg) :: bnds
       in
       `Assoc bnds
    : range_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_range_rule

[@@@deriving.end]

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

type azurerm_iot_security_device_group = {
  id : string prop option; [@option]
  iothub_id : string prop;
  name : string prop;
  allow_rule : allow_rule list;
  range_rule : range_rule list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_iot_security_device_group) -> ()

let yojson_of_azurerm_iot_security_device_group =
  (function
   | {
       id = v_id;
       iothub_id = v_iothub_id;
       name = v_name;
       allow_rule = v_allow_rule;
       range_rule = v_range_rule;
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
         let arg =
           yojson_of_list yojson_of_range_rule v_range_rule
         in
         ("range_rule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_allow_rule v_allow_rule
         in
         ("allow_rule", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_iothub_id in
         ("iothub_id", arg) :: bnds
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
    : azurerm_iot_security_device_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_iot_security_device_group

[@@@deriving.end]

let allow_rule ?connection_from_ips_not_allowed
    ?connection_to_ips_not_allowed ?local_users_not_allowed
    ?processes_not_allowed () : allow_rule =
  {
    connection_from_ips_not_allowed;
    connection_to_ips_not_allowed;
    local_users_not_allowed;
    processes_not_allowed;
  }

let range_rule ~duration ~max ~min ~type_ () : range_rule =
  { duration; max; min; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iot_security_device_group ?id ?(allow_rule = [])
    ?timeouts ~iothub_id ~name ~range_rule () :
    azurerm_iot_security_device_group =
  { id; iothub_id; name; allow_rule; range_rule; timeouts }

type t = {
  id : string prop;
  iothub_id : string prop;
  name : string prop;
}

let make ?id ?(allow_rule = []) ?timeouts ~iothub_id ~name
    ~range_rule __id =
  let __type = "azurerm_iot_security_device_group" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       iothub_id = Prop.computed __type __id "iothub_id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iot_security_device_group
        (azurerm_iot_security_device_group ?id ~allow_rule ?timeouts
           ~iothub_id ~name ~range_rule ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(allow_rule = []) ?timeouts ~iothub_id
    ~name ~range_rule __id =
  let (r : _ Tf_core.resource) =
    make ?id ~allow_rule ?timeouts ~iothub_id ~name ~range_rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
