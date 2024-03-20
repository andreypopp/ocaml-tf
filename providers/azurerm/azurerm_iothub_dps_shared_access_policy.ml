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

type azurerm_iothub_dps_shared_access_policy = {
  enrollment_read : bool prop option; [@option]
  enrollment_write : bool prop option; [@option]
  id : string prop option; [@option]
  iothub_dps_name : string prop;
  name : string prop;
  registration_read : bool prop option; [@option]
  registration_write : bool prop option; [@option]
  resource_group_name : string prop;
  service_config : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_iothub_dps_shared_access_policy) -> ()

let yojson_of_azurerm_iothub_dps_shared_access_policy =
  (function
   | {
       enrollment_read = v_enrollment_read;
       enrollment_write = v_enrollment_write;
       id = v_id;
       iothub_dps_name = v_iothub_dps_name;
       name = v_name;
       registration_read = v_registration_read;
       registration_write = v_registration_write;
       resource_group_name = v_resource_group_name;
       service_config = v_service_config;
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
         match v_service_config with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "service_config", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_registration_write with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "registration_write", arg in
             bnd :: bnds
       in
       let bnds =
         match v_registration_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "registration_read", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_iothub_dps_name
         in
         ("iothub_dps_name", arg) :: bnds
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
         match v_enrollment_write with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enrollment_write", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enrollment_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enrollment_read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_iothub_dps_shared_access_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_iothub_dps_shared_access_policy

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iothub_dps_shared_access_policy ?enrollment_read
    ?enrollment_write ?id ?registration_read ?registration_write
    ?service_config ?timeouts ~iothub_dps_name ~name
    ~resource_group_name () : azurerm_iothub_dps_shared_access_policy
    =
  {
    enrollment_read;
    enrollment_write;
    id;
    iothub_dps_name;
    name;
    registration_read;
    registration_write;
    resource_group_name;
    service_config;
    timeouts;
  }

type t = {
  enrollment_read : bool prop;
  enrollment_write : bool prop;
  id : string prop;
  iothub_dps_name : string prop;
  name : string prop;
  primary_connection_string : string prop;
  primary_key : string prop;
  registration_read : bool prop;
  registration_write : bool prop;
  resource_group_name : string prop;
  secondary_connection_string : string prop;
  secondary_key : string prop;
  service_config : bool prop;
}

let make ?enrollment_read ?enrollment_write ?id ?registration_read
    ?registration_write ?service_config ?timeouts ~iothub_dps_name
    ~name ~resource_group_name __id =
  let __type = "azurerm_iothub_dps_shared_access_policy" in
  let __attrs =
    ({
       enrollment_read = Prop.computed __type __id "enrollment_read";
       enrollment_write =
         Prop.computed __type __id "enrollment_write";
       id = Prop.computed __type __id "id";
       iothub_dps_name = Prop.computed __type __id "iothub_dps_name";
       name = Prop.computed __type __id "name";
       primary_connection_string =
         Prop.computed __type __id "primary_connection_string";
       primary_key = Prop.computed __type __id "primary_key";
       registration_read =
         Prop.computed __type __id "registration_read";
       registration_write =
         Prop.computed __type __id "registration_write";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secondary_connection_string =
         Prop.computed __type __id "secondary_connection_string";
       secondary_key = Prop.computed __type __id "secondary_key";
       service_config = Prop.computed __type __id "service_config";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iothub_dps_shared_access_policy
        (azurerm_iothub_dps_shared_access_policy ?enrollment_read
           ?enrollment_write ?id ?registration_read
           ?registration_write ?service_config ?timeouts
           ~iothub_dps_name ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?enrollment_read ?enrollment_write ?id
    ?registration_read ?registration_write ?service_config ?timeouts
    ~iothub_dps_name ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?enrollment_read ?enrollment_write ?id ?registration_read
      ?registration_write ?service_config ?timeouts ~iothub_dps_name
      ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
