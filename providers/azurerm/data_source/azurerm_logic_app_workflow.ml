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

type identity = {
  identity_ids : string prop list;
  principal_id : string prop;
  tenant_id : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | {
       identity_ids = v_identity_ids;
       principal_id = v_principal_id;
       tenant_id = v_tenant_id;
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
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_id in
         ("principal_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_identity_ids
         in
         ("identity_ids", arg) :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type azurerm_logic_app_workflow = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_logic_app_workflow) -> ()

let yojson_of_azurerm_logic_app_workflow =
  (function
   | {
       id = v_id;
       name = v_name;
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
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
    : azurerm_logic_app_workflow -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_logic_app_workflow

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_logic_app_workflow ?id ?timeouts ~name
    ~resource_group_name () : azurerm_logic_app_workflow =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  access_endpoint : string prop;
  connector_endpoint_ip_addresses : string list prop;
  connector_outbound_ip_addresses : string list prop;
  id : string prop;
  identity : identity list prop;
  location : string prop;
  logic_app_integration_account_id : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  workflow_endpoint_ip_addresses : string list prop;
  workflow_outbound_ip_addresses : string list prop;
  workflow_schema : string prop;
  workflow_version : string prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_logic_app_workflow" in
  let __attrs =
    ({
       tf_name = __id;
       access_endpoint = Prop.computed __type __id "access_endpoint";
       connector_endpoint_ip_addresses =
         Prop.computed __type __id "connector_endpoint_ip_addresses";
       connector_outbound_ip_addresses =
         Prop.computed __type __id "connector_outbound_ip_addresses";
       id = Prop.computed __type __id "id";
       identity = Prop.computed __type __id "identity";
       location = Prop.computed __type __id "location";
       logic_app_integration_account_id =
         Prop.computed __type __id "logic_app_integration_account_id";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       workflow_endpoint_ip_addresses =
         Prop.computed __type __id "workflow_endpoint_ip_addresses";
       workflow_outbound_ip_addresses =
         Prop.computed __type __id "workflow_outbound_ip_addresses";
       workflow_schema = Prop.computed __type __id "workflow_schema";
       workflow_version =
         Prop.computed __type __id "workflow_version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_logic_app_workflow
        (azurerm_logic_app_workflow ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
