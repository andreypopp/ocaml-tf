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

type azurerm_iothub_shared_access_policy = {
  device_connect : bool prop option; [@option]
  id : string prop option; [@option]
  iothub_name : string prop;
  name : string prop;
  registry_read : bool prop option; [@option]
  registry_write : bool prop option; [@option]
  resource_group_name : string prop;
  service_connect : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_iothub_shared_access_policy) -> ()

let yojson_of_azurerm_iothub_shared_access_policy =
  (function
   | {
       device_connect = v_device_connect;
       id = v_id;
       iothub_name = v_iothub_name;
       name = v_name;
       registry_read = v_registry_read;
       registry_write = v_registry_write;
       resource_group_name = v_resource_group_name;
       service_connect = v_service_connect;
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
         match v_service_connect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "service_connect", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_registry_write with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "registry_write", arg in
             bnd :: bnds
       in
       let bnds =
         match v_registry_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "registry_read", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_iothub_name in
         ("iothub_name", arg) :: bnds
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
         match v_device_connect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "device_connect", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_iothub_shared_access_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_iothub_shared_access_policy

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iothub_shared_access_policy ?device_connect ?id
    ?registry_read ?registry_write ?service_connect ?timeouts
    ~iothub_name ~name ~resource_group_name () :
    azurerm_iothub_shared_access_policy =
  {
    device_connect;
    id;
    iothub_name;
    name;
    registry_read;
    registry_write;
    resource_group_name;
    service_connect;
    timeouts;
  }

type t = {
  tf_name : string;
  device_connect : bool prop;
  id : string prop;
  iothub_name : string prop;
  name : string prop;
  primary_connection_string : string prop;
  primary_key : string prop;
  registry_read : bool prop;
  registry_write : bool prop;
  resource_group_name : string prop;
  secondary_connection_string : string prop;
  secondary_key : string prop;
  service_connect : bool prop;
}

let make ?device_connect ?id ?registry_read ?registry_write
    ?service_connect ?timeouts ~iothub_name ~name
    ~resource_group_name __id =
  let __type = "azurerm_iothub_shared_access_policy" in
  let __attrs =
    ({
       tf_name = __id;
       device_connect = Prop.computed __type __id "device_connect";
       id = Prop.computed __type __id "id";
       iothub_name = Prop.computed __type __id "iothub_name";
       name = Prop.computed __type __id "name";
       primary_connection_string =
         Prop.computed __type __id "primary_connection_string";
       primary_key = Prop.computed __type __id "primary_key";
       registry_read = Prop.computed __type __id "registry_read";
       registry_write = Prop.computed __type __id "registry_write";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secondary_connection_string =
         Prop.computed __type __id "secondary_connection_string";
       secondary_key = Prop.computed __type __id "secondary_key";
       service_connect = Prop.computed __type __id "service_connect";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iothub_shared_access_policy
        (azurerm_iothub_shared_access_policy ?device_connect ?id
           ?registry_read ?registry_write ?service_connect ?timeouts
           ~iothub_name ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?device_connect ?id ?registry_read
    ?registry_write ?service_connect ?timeouts ~iothub_name ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?device_connect ?id ?registry_read ?registry_write
      ?service_connect ?timeouts ~iothub_name ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
