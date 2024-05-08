(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type delegation__service_delegation = {
  actions : string prop list option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : delegation__service_delegation) -> ()

let yojson_of_delegation__service_delegation =
  (function
   | { actions = v_actions; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_actions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "actions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : delegation__service_delegation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delegation__service_delegation

[@@@deriving.end]

type delegation = {
  name : string prop;
  service_delegation : delegation__service_delegation list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : delegation) -> ()

let yojson_of_delegation =
  (function
   | { name = v_name; service_delegation = v_service_delegation } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_service_delegation then bnds
         else
           let arg =
             (yojson_of_list yojson_of_delegation__service_delegation)
               v_service_delegation
           in
           let bnd = "service_delegation", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : delegation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delegation

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

type azurerm_subnet = {
  address_prefixes : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  enforce_private_link_endpoint_network_policies : bool prop option;
      [@option]
  enforce_private_link_service_network_policies : bool prop option;
      [@option]
  id : string prop option; [@option]
  name : string prop;
  private_endpoint_network_policies_enabled : bool prop option;
      [@option]
  private_link_service_network_policies_enabled : bool prop option;
      [@option]
  resource_group_name : string prop;
  service_endpoint_policy_ids : string prop list option; [@option]
  service_endpoints : string prop list option; [@option]
  virtual_network_name : string prop;
  delegation : delegation list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_subnet) -> ()

let yojson_of_azurerm_subnet =
  (function
   | {
       address_prefixes = v_address_prefixes;
       enforce_private_link_endpoint_network_policies =
         v_enforce_private_link_endpoint_network_policies;
       enforce_private_link_service_network_policies =
         v_enforce_private_link_service_network_policies;
       id = v_id;
       name = v_name;
       private_endpoint_network_policies_enabled =
         v_private_endpoint_network_policies_enabled;
       private_link_service_network_policies_enabled =
         v_private_link_service_network_policies_enabled;
       resource_group_name = v_resource_group_name;
       service_endpoint_policy_ids = v_service_endpoint_policy_ids;
       service_endpoints = v_service_endpoints;
       virtual_network_name = v_virtual_network_name;
       delegation = v_delegation;
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
         if [] = v_delegation then bnds
         else
           let arg =
             (yojson_of_list yojson_of_delegation) v_delegation
           in
           let bnd = "delegation", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_network_name
         in
         ("virtual_network_name", arg) :: bnds
       in
       let bnds =
         match v_service_endpoints with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "service_endpoints", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_endpoint_policy_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "service_endpoint_policy_ids", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_private_link_service_network_policies_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "private_link_service_network_policies_enabled", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_private_endpoint_network_policies_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "private_endpoint_network_policies_enabled", arg
             in
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
       let bnds =
         match v_enforce_private_link_service_network_policies with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "enforce_private_link_service_network_policies", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_enforce_private_link_endpoint_network_policies with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "enforce_private_link_endpoint_network_policies", arg
             in
             bnd :: bnds
       in
       let bnds =
         if [] = v_address_prefixes then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_address_prefixes
           in
           let bnd = "address_prefixes", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : azurerm_subnet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_subnet

[@@@deriving.end]

let delegation__service_delegation ?actions ~name () :
    delegation__service_delegation =
  { actions; name }

let delegation ~name ~service_delegation () : delegation =
  { name; service_delegation }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_subnet ?enforce_private_link_endpoint_network_policies
    ?enforce_private_link_service_network_policies ?id
    ?private_endpoint_network_policies_enabled
    ?private_link_service_network_policies_enabled
    ?service_endpoint_policy_ids ?service_endpoints
    ?(delegation = []) ?timeouts ~address_prefixes ~name
    ~resource_group_name ~virtual_network_name () : azurerm_subnet =
  {
    address_prefixes;
    enforce_private_link_endpoint_network_policies;
    enforce_private_link_service_network_policies;
    id;
    name;
    private_endpoint_network_policies_enabled;
    private_link_service_network_policies_enabled;
    resource_group_name;
    service_endpoint_policy_ids;
    service_endpoints;
    virtual_network_name;
    delegation;
    timeouts;
  }

type t = {
  tf_name : string;
  address_prefixes : string list prop;
  enforce_private_link_endpoint_network_policies : bool prop;
  enforce_private_link_service_network_policies : bool prop;
  id : string prop;
  name : string prop;
  private_endpoint_network_policies_enabled : bool prop;
  private_link_service_network_policies_enabled : bool prop;
  resource_group_name : string prop;
  service_endpoint_policy_ids : string list prop;
  service_endpoints : string list prop;
  virtual_network_name : string prop;
}

let make ?enforce_private_link_endpoint_network_policies
    ?enforce_private_link_service_network_policies ?id
    ?private_endpoint_network_policies_enabled
    ?private_link_service_network_policies_enabled
    ?service_endpoint_policy_ids ?service_endpoints
    ?(delegation = []) ?timeouts ~address_prefixes ~name
    ~resource_group_name ~virtual_network_name __id =
  let __type = "azurerm_subnet" in
  let __attrs =
    ({
       tf_name = __id;
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
       private_endpoint_network_policies_enabled =
         Prop.computed __type __id
           "private_endpoint_network_policies_enabled";
       private_link_service_network_policies_enabled =
         Prop.computed __type __id
           "private_link_service_network_policies_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       service_endpoint_policy_ids =
         Prop.computed __type __id "service_endpoint_policy_ids";
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
        (azurerm_subnet
           ?enforce_private_link_endpoint_network_policies
           ?enforce_private_link_service_network_policies ?id
           ?private_endpoint_network_policies_enabled
           ?private_link_service_network_policies_enabled
           ?service_endpoint_policy_ids ?service_endpoints
           ~delegation ?timeouts ~address_prefixes ~name
           ~resource_group_name ~virtual_network_name ());
    attrs = __attrs;
  }

let register ?tf_module
    ?enforce_private_link_endpoint_network_policies
    ?enforce_private_link_service_network_policies ?id
    ?private_endpoint_network_policies_enabled
    ?private_link_service_network_policies_enabled
    ?service_endpoint_policy_ids ?service_endpoints
    ?(delegation = []) ?timeouts ~address_prefixes ~name
    ~resource_group_name ~virtual_network_name __id =
  let (r : _ Tf_core.resource) =
    make ?enforce_private_link_endpoint_network_policies
      ?enforce_private_link_service_network_policies ?id
      ?private_endpoint_network_policies_enabled
      ?private_link_service_network_policies_enabled
      ?service_endpoint_policy_ids ?service_endpoints ~delegation
      ?timeouts ~address_prefixes ~name ~resource_group_name
      ~virtual_network_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
