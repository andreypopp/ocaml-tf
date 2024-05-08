(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ip_filter_rule = {
  action : string prop;
  ip_mask : string prop;
  name : string prop;
  target : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ip_filter_rule) -> ()

let yojson_of_ip_filter_rule =
  (function
   | {
       action = v_action;
       ip_mask = v_ip_mask;
       name = v_name;
       target = v_target;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_target with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_mask in
         ("ip_mask", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : ip_filter_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ip_filter_rule

[@@@deriving.end]

type linked_hub = {
  allocation_weight : float prop option; [@option]
  apply_allocation_policy : bool prop option; [@option]
  connection_string : string prop;
  location : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : linked_hub) -> ()

let yojson_of_linked_hub =
  (function
   | {
       allocation_weight = v_allocation_weight;
       apply_allocation_policy = v_apply_allocation_policy;
       connection_string = v_connection_string;
       location = v_location;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connection_string
         in
         ("connection_string", arg) :: bnds
       in
       let bnds =
         match v_apply_allocation_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "apply_allocation_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allocation_weight with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "allocation_weight", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : linked_hub -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_linked_hub

[@@@deriving.end]

type sku = { capacity : float prop; name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : sku) -> ()

let yojson_of_sku =
  (function
   | { capacity = v_capacity; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_capacity in
         ("capacity", arg) :: bnds
       in
       `Assoc bnds
    : sku -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sku

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

type azurerm_iothub_dps = {
  allocation_policy : string prop option; [@option]
  data_residency_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  ip_filter_rule : ip_filter_rule list;
      [@default []] [@yojson_drop_default ( = )]
  linked_hub : linked_hub list;
      [@default []] [@yojson_drop_default ( = )]
  sku : sku list; [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_iothub_dps) -> ()

let yojson_of_azurerm_iothub_dps =
  (function
   | {
       allocation_policy = v_allocation_policy;
       data_residency_enabled = v_data_residency_enabled;
       id = v_id;
       location = v_location;
       name = v_name;
       public_network_access_enabled =
         v_public_network_access_enabled;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       ip_filter_rule = v_ip_filter_rule;
       linked_hub = v_linked_hub;
       sku = v_sku;
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
         if [] = v_sku then bnds
         else
           let arg = (yojson_of_list yojson_of_sku) v_sku in
           let bnd = "sku", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_linked_hub then bnds
         else
           let arg =
             (yojson_of_list yojson_of_linked_hub) v_linked_hub
           in
           let bnd = "linked_hub", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_ip_filter_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ip_filter_rule)
               v_ip_filter_rule
           in
           let bnd = "ip_filter_rule", arg in
           bnd :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_public_network_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "public_network_access_enabled", arg in
             bnd :: bnds
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
         match v_data_residency_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "data_residency_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allocation_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "allocation_policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_iothub_dps -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_iothub_dps

[@@@deriving.end]

let ip_filter_rule ?target ~action ~ip_mask ~name () : ip_filter_rule
    =
  { action; ip_mask; name; target }

let linked_hub ?allocation_weight ?apply_allocation_policy
    ~connection_string ~location () : linked_hub =
  {
    allocation_weight;
    apply_allocation_policy;
    connection_string;
    location;
  }

let sku ~capacity ~name () : sku = { capacity; name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iothub_dps ?allocation_policy ?data_residency_enabled ?id
    ?public_network_access_enabled ?tags ?(ip_filter_rule = [])
    ?(linked_hub = []) ?timeouts ~location ~name ~resource_group_name
    ~sku () : azurerm_iothub_dps =
  {
    allocation_policy;
    data_residency_enabled;
    id;
    location;
    name;
    public_network_access_enabled;
    resource_group_name;
    tags;
    ip_filter_rule;
    linked_hub;
    sku;
    timeouts;
  }

type t = {
  tf_name : string;
  allocation_policy : string prop;
  data_residency_enabled : bool prop;
  device_provisioning_host_name : string prop;
  id : string prop;
  id_scope : string prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  service_operations_host_name : string prop;
  tags : (string * string) list prop;
}

let make ?allocation_policy ?data_residency_enabled ?id
    ?public_network_access_enabled ?tags ?(ip_filter_rule = [])
    ?(linked_hub = []) ?timeouts ~location ~name ~resource_group_name
    ~sku __id =
  let __type = "azurerm_iothub_dps" in
  let __attrs =
    ({
       tf_name = __id;
       allocation_policy =
         Prop.computed __type __id "allocation_policy";
       data_residency_enabled =
         Prop.computed __type __id "data_residency_enabled";
       device_provisioning_host_name =
         Prop.computed __type __id "device_provisioning_host_name";
       id = Prop.computed __type __id "id";
       id_scope = Prop.computed __type __id "id_scope";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       service_operations_host_name =
         Prop.computed __type __id "service_operations_host_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iothub_dps
        (azurerm_iothub_dps ?allocation_policy
           ?data_residency_enabled ?id ?public_network_access_enabled
           ?tags ~ip_filter_rule ~linked_hub ?timeouts ~location
           ~name ~resource_group_name ~sku ());
    attrs = __attrs;
  }

let register ?tf_module ?allocation_policy ?data_residency_enabled
    ?id ?public_network_access_enabled ?tags ?(ip_filter_rule = [])
    ?(linked_hub = []) ?timeouts ~location ~name ~resource_group_name
    ~sku __id =
  let (r : _ Tf_core.resource) =
    make ?allocation_policy ?data_residency_enabled ?id
      ?public_network_access_enabled ?tags ~ip_filter_rule
      ~linked_hub ?timeouts ~location ~name ~resource_group_name ~sku
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
