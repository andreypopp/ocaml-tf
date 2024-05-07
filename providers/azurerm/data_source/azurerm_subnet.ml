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

type azurerm_subnet = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  virtual_network_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_subnet) -> ()

let yojson_of_azurerm_subnet =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       virtual_network_name = v_virtual_network_name;
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
           yojson_of_prop yojson_of_string v_virtual_network_name
         in
         ("virtual_network_name", arg) :: bnds
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
    : azurerm_subnet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_subnet

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_subnet ?id ?timeouts ~name ~resource_group_name
    ~virtual_network_name () : azurerm_subnet =
  { id; name; resource_group_name; virtual_network_name; timeouts }

type t = {
  tf_name : string;
  address_prefix : string prop;
  address_prefixes : string list prop;
  enforce_private_link_endpoint_network_policies : bool prop;
  enforce_private_link_service_network_policies : bool prop;
  id : string prop;
  name : string prop;
  network_security_group_id : string prop;
  private_endpoint_network_policies_enabled : bool prop;
  private_link_service_network_policies_enabled : bool prop;
  resource_group_name : string prop;
  route_table_id : string prop;
  service_endpoints : string list prop;
  virtual_network_name : string prop;
}

let make ?id ?timeouts ~name ~resource_group_name
    ~virtual_network_name __id =
  let __type = "azurerm_subnet" in
  let __attrs =
    ({
       tf_name = __id;
       address_prefix = Prop.computed __type __id "address_prefix";
       address_prefixes =
         Prop.computed __type __id "address_prefixes";
       enforce_private_link_endpoint_network_policies =
         Prop.computed __type __id
           "enforce_private_link_endpoint_network_policies";
       enforce_private_link_service_network_policies =
         Prop.computed __type __id
           "enforce_private_link_service_network_policies";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       network_security_group_id =
         Prop.computed __type __id "network_security_group_id";
       private_endpoint_network_policies_enabled =
         Prop.computed __type __id
           "private_endpoint_network_policies_enabled";
       private_link_service_network_policies_enabled =
         Prop.computed __type __id
           "private_link_service_network_policies_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       route_table_id = Prop.computed __type __id "route_table_id";
       service_endpoints =
         Prop.computed __type __id "service_endpoints";
       virtual_network_name =
         Prop.computed __type __id "virtual_network_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_subnet
        (azurerm_subnet ?id ?timeouts ~name ~resource_group_name
           ~virtual_network_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name
    ~virtual_network_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name
      ~virtual_network_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
