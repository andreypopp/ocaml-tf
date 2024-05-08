(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type private_link_access = {
  endpoint_resource_id : string prop;
  endpoint_tenant_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : private_link_access) -> ()

let yojson_of_private_link_access =
  (function
   | {
       endpoint_resource_id = v_endpoint_resource_id;
       endpoint_tenant_id = v_endpoint_tenant_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_endpoint_tenant_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint_tenant_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_endpoint_resource_id
         in
         ("endpoint_resource_id", arg) :: bnds
       in
       `Assoc bnds
    : private_link_access -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_private_link_access

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

type azurerm_storage_account_network_rules = {
  bypass : string prop list option; [@option]
  default_action : string prop;
  id : string prop option; [@option]
  ip_rules : string prop list option; [@option]
  storage_account_id : string prop;
  virtual_network_subnet_ids : string prop list option; [@option]
  private_link_access : private_link_access list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_account_network_rules) -> ()

let yojson_of_azurerm_storage_account_network_rules =
  (function
   | {
       bypass = v_bypass;
       default_action = v_default_action;
       id = v_id;
       ip_rules = v_ip_rules;
       storage_account_id = v_storage_account_id;
       virtual_network_subnet_ids = v_virtual_network_subnet_ids;
       private_link_access = v_private_link_access;
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
         if [] = v_private_link_access then bnds
         else
           let arg =
             (yojson_of_list yojson_of_private_link_access)
               v_private_link_access
           in
           let bnd = "private_link_access", arg in
           bnd :: bnds
       in
       let bnds =
         match v_virtual_network_subnet_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "virtual_network_subnet_ids", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_id
         in
         ("storage_account_id", arg) :: bnds
       in
       let bnds =
         match v_ip_rules with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ip_rules", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_default_action
         in
         ("default_action", arg) :: bnds
       in
       let bnds =
         match v_bypass with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "bypass", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_storage_account_network_rules ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_account_network_rules

[@@@deriving.end]

let private_link_access ?endpoint_tenant_id ~endpoint_resource_id ()
    : private_link_access =
  { endpoint_resource_id; endpoint_tenant_id }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_account_network_rules ?bypass ?id ?ip_rules
    ?virtual_network_subnet_ids ?(private_link_access = []) ?timeouts
    ~default_action ~storage_account_id () :
    azurerm_storage_account_network_rules =
  {
    bypass;
    default_action;
    id;
    ip_rules;
    storage_account_id;
    virtual_network_subnet_ids;
    private_link_access;
    timeouts;
  }

type t = {
  tf_name : string;
  bypass : string list prop;
  default_action : string prop;
  id : string prop;
  ip_rules : string list prop;
  storage_account_id : string prop;
  virtual_network_subnet_ids : string list prop;
}

let make ?bypass ?id ?ip_rules ?virtual_network_subnet_ids
    ?(private_link_access = []) ?timeouts ~default_action
    ~storage_account_id __id =
  let __type = "azurerm_storage_account_network_rules" in
  let __attrs =
    ({
       tf_name = __id;
       bypass = Prop.computed __type __id "bypass";
       default_action = Prop.computed __type __id "default_action";
       id = Prop.computed __type __id "id";
       ip_rules = Prop.computed __type __id "ip_rules";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
       virtual_network_subnet_ids =
         Prop.computed __type __id "virtual_network_subnet_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_account_network_rules
        (azurerm_storage_account_network_rules ?bypass ?id ?ip_rules
           ?virtual_network_subnet_ids ~private_link_access ?timeouts
           ~default_action ~storage_account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?bypass ?id ?ip_rules
    ?virtual_network_subnet_ids ?(private_link_access = []) ?timeouts
    ~default_action ~storage_account_id __id =
  let (r : _ Tf_core.resource) =
    make ?bypass ?id ?ip_rules ?virtual_network_subnet_ids
      ~private_link_access ?timeouts ~default_action
      ~storage_account_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
