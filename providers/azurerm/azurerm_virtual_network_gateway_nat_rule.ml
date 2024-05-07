(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type external_mapping = {
  address_space : string prop;
  port_range : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : external_mapping) -> ()

let yojson_of_external_mapping =
  (function
   | { address_space = v_address_space; port_range = v_port_range }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_port_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port_range", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_address_space in
         ("address_space", arg) :: bnds
       in
       `Assoc bnds
    : external_mapping -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_external_mapping

[@@@deriving.end]

type internal_mapping = {
  address_space : string prop;
  port_range : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : internal_mapping) -> ()

let yojson_of_internal_mapping =
  (function
   | { address_space = v_address_space; port_range = v_port_range }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_port_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port_range", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_address_space in
         ("address_space", arg) :: bnds
       in
       `Assoc bnds
    : internal_mapping -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_internal_mapping

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

type azurerm_virtual_network_gateway_nat_rule = {
  id : string prop option; [@option]
  ip_configuration_id : string prop option; [@option]
  mode : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  type_ : string prop option; [@option] [@key "type"]
  virtual_network_gateway_id : string prop;
  external_mapping : external_mapping list;
  internal_mapping : internal_mapping list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_virtual_network_gateway_nat_rule) -> ()

let yojson_of_azurerm_virtual_network_gateway_nat_rule =
  (function
   | {
       id = v_id;
       ip_configuration_id = v_ip_configuration_id;
       mode = v_mode;
       name = v_name;
       resource_group_name = v_resource_group_name;
       type_ = v_type_;
       virtual_network_gateway_id = v_virtual_network_gateway_id;
       external_mapping = v_external_mapping;
       internal_mapping = v_internal_mapping;
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
           yojson_of_list yojson_of_internal_mapping
             v_internal_mapping
         in
         ("internal_mapping", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_external_mapping
             v_external_mapping
         in
         ("external_mapping", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_virtual_network_gateway_id
         in
         ("virtual_network_gateway_id", arg) :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
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
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_configuration_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_configuration_id", arg in
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
       `Assoc bnds
    : azurerm_virtual_network_gateway_nat_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_virtual_network_gateway_nat_rule

[@@@deriving.end]

let external_mapping ?port_range ~address_space () : external_mapping
    =
  { address_space; port_range }

let internal_mapping ?port_range ~address_space () : internal_mapping
    =
  { address_space; port_range }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_network_gateway_nat_rule ?id ?ip_configuration_id
    ?mode ?type_ ?timeouts ~name ~resource_group_name
    ~virtual_network_gateway_id ~external_mapping ~internal_mapping
    () : azurerm_virtual_network_gateway_nat_rule =
  {
    id;
    ip_configuration_id;
    mode;
    name;
    resource_group_name;
    type_;
    virtual_network_gateway_id;
    external_mapping;
    internal_mapping;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  ip_configuration_id : string prop;
  mode : string prop;
  name : string prop;
  resource_group_name : string prop;
  type_ : string prop;
  virtual_network_gateway_id : string prop;
}

let make ?id ?ip_configuration_id ?mode ?type_ ?timeouts ~name
    ~resource_group_name ~virtual_network_gateway_id
    ~external_mapping ~internal_mapping __id =
  let __type = "azurerm_virtual_network_gateway_nat_rule" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       ip_configuration_id =
         Prop.computed __type __id "ip_configuration_id";
       mode = Prop.computed __type __id "mode";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       type_ = Prop.computed __type __id "type";
       virtual_network_gateway_id =
         Prop.computed __type __id "virtual_network_gateway_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_network_gateway_nat_rule
        (azurerm_virtual_network_gateway_nat_rule ?id
           ?ip_configuration_id ?mode ?type_ ?timeouts ~name
           ~resource_group_name ~virtual_network_gateway_id
           ~external_mapping ~internal_mapping ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?ip_configuration_id ?mode ?type_
    ?timeouts ~name ~resource_group_name ~virtual_network_gateway_id
    ~external_mapping ~internal_mapping __id =
  let (r : _ Tf_core.resource) =
    make ?id ?ip_configuration_id ?mode ?type_ ?timeouts ~name
      ~resource_group_name ~virtual_network_gateway_id
      ~external_mapping ~internal_mapping __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
