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

type azurerm_integration_service_environment = {
  access_endpoint_type : string prop;
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  virtual_network_subnet_ids : string prop list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_integration_service_environment) -> ()

let yojson_of_azurerm_integration_service_environment =
  (function
   | {
       access_endpoint_type = v_access_endpoint_type;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       sku_name = v_sku_name;
       tags = v_tags;
       virtual_network_subnet_ids = v_virtual_network_subnet_ids;
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
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_virtual_network_subnet_ids
         in
         ("virtual_network_subnet_ids", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sku_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sku_name", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_access_endpoint_type
         in
         ("access_endpoint_type", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_integration_service_environment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_integration_service_environment

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_integration_service_environment ?id ?sku_name ?tags
    ?timeouts ~access_endpoint_type ~location ~name
    ~resource_group_name ~virtual_network_subnet_ids () :
    azurerm_integration_service_environment =
  {
    access_endpoint_type;
    id;
    location;
    name;
    resource_group_name;
    sku_name;
    tags;
    virtual_network_subnet_ids;
    timeouts;
  }

type t = {
  tf_name : string;
  access_endpoint_type : string prop;
  connector_endpoint_ip_addresses : string list prop;
  connector_outbound_ip_addresses : string list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
  virtual_network_subnet_ids : string list prop;
  workflow_endpoint_ip_addresses : string list prop;
  workflow_outbound_ip_addresses : string list prop;
}

let make ?id ?sku_name ?tags ?timeouts ~access_endpoint_type
    ~location ~name ~resource_group_name ~virtual_network_subnet_ids
    __id =
  let __type = "azurerm_integration_service_environment" in
  let __attrs =
    ({
       tf_name = __id;
       access_endpoint_type =
         Prop.computed __type __id "access_endpoint_type";
       connector_endpoint_ip_addresses =
         Prop.computed __type __id "connector_endpoint_ip_addresses";
       connector_outbound_ip_addresses =
         Prop.computed __type __id "connector_outbound_ip_addresses";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       tags = Prop.computed __type __id "tags";
       virtual_network_subnet_ids =
         Prop.computed __type __id "virtual_network_subnet_ids";
       workflow_endpoint_ip_addresses =
         Prop.computed __type __id "workflow_endpoint_ip_addresses";
       workflow_outbound_ip_addresses =
         Prop.computed __type __id "workflow_outbound_ip_addresses";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_integration_service_environment
        (azurerm_integration_service_environment ?id ?sku_name ?tags
           ?timeouts ~access_endpoint_type ~location ~name
           ~resource_group_name ~virtual_network_subnet_ids ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?sku_name ?tags ?timeouts
    ~access_endpoint_type ~location ~name ~resource_group_name
    ~virtual_network_subnet_ids __id =
  let (r : _ Tf_core.resource) =
    make ?id ?sku_name ?tags ?timeouts ~access_endpoint_type
      ~location ~name ~resource_group_name
      ~virtual_network_subnet_ids __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
