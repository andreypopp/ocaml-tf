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

type upgrade_settings = { max_surge : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : upgrade_settings) -> ()

let yojson_of_upgrade_settings =
  (function
   | { max_surge = v_max_surge } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_max_surge in
         ("max_surge", arg) :: bnds
       in
       `Assoc bnds
    : upgrade_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_upgrade_settings

[@@@deriving.end]

type azurerm_kubernetes_cluster_node_pool = {
  id : string prop option; [@option]
  kubernetes_cluster_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_kubernetes_cluster_node_pool) -> ()

let yojson_of_azurerm_kubernetes_cluster_node_pool =
  (function
   | {
       id = v_id;
       kubernetes_cluster_name = v_kubernetes_cluster_name;
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
         let arg =
           yojson_of_prop yojson_of_string v_kubernetes_cluster_name
         in
         ("kubernetes_cluster_name", arg) :: bnds
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
    : azurerm_kubernetes_cluster_node_pool ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_kubernetes_cluster_node_pool

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_kubernetes_cluster_node_pool ?id ?timeouts
    ~kubernetes_cluster_name ~name ~resource_group_name () :
    azurerm_kubernetes_cluster_node_pool =
  {
    id;
    kubernetes_cluster_name;
    name;
    resource_group_name;
    timeouts;
  }

type t = {
  enable_auto_scaling : bool prop;
  enable_node_public_ip : bool prop;
  eviction_policy : string prop;
  id : string prop;
  kubernetes_cluster_name : string prop;
  max_count : float prop;
  max_pods : float prop;
  min_count : float prop;
  mode : string prop;
  name : string prop;
  node_count : float prop;
  node_labels : (string * string) list prop;
  node_public_ip_prefix_id : string prop;
  node_taints : string list prop;
  orchestrator_version : string prop;
  os_disk_size_gb : float prop;
  os_disk_type : string prop;
  os_type : string prop;
  priority : string prop;
  proximity_placement_group_id : string prop;
  resource_group_name : string prop;
  spot_max_price : float prop;
  tags : (string * string) list prop;
  upgrade_settings : upgrade_settings list prop;
  vm_size : string prop;
  vnet_subnet_id : string prop;
  zones : string list prop;
}

let make ?id ?timeouts ~kubernetes_cluster_name ~name
    ~resource_group_name __id =
  let __type = "azurerm_kubernetes_cluster_node_pool" in
  let __attrs =
    ({
       enable_auto_scaling =
         Prop.computed __type __id "enable_auto_scaling";
       enable_node_public_ip =
         Prop.computed __type __id "enable_node_public_ip";
       eviction_policy = Prop.computed __type __id "eviction_policy";
       id = Prop.computed __type __id "id";
       kubernetes_cluster_name =
         Prop.computed __type __id "kubernetes_cluster_name";
       max_count = Prop.computed __type __id "max_count";
       max_pods = Prop.computed __type __id "max_pods";
       min_count = Prop.computed __type __id "min_count";
       mode = Prop.computed __type __id "mode";
       name = Prop.computed __type __id "name";
       node_count = Prop.computed __type __id "node_count";
       node_labels = Prop.computed __type __id "node_labels";
       node_public_ip_prefix_id =
         Prop.computed __type __id "node_public_ip_prefix_id";
       node_taints = Prop.computed __type __id "node_taints";
       orchestrator_version =
         Prop.computed __type __id "orchestrator_version";
       os_disk_size_gb = Prop.computed __type __id "os_disk_size_gb";
       os_disk_type = Prop.computed __type __id "os_disk_type";
       os_type = Prop.computed __type __id "os_type";
       priority = Prop.computed __type __id "priority";
       proximity_placement_group_id =
         Prop.computed __type __id "proximity_placement_group_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       spot_max_price = Prop.computed __type __id "spot_max_price";
       tags = Prop.computed __type __id "tags";
       upgrade_settings =
         Prop.computed __type __id "upgrade_settings";
       vm_size = Prop.computed __type __id "vm_size";
       vnet_subnet_id = Prop.computed __type __id "vnet_subnet_id";
       zones = Prop.computed __type __id "zones";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_kubernetes_cluster_node_pool
        (azurerm_kubernetes_cluster_node_pool ?id ?timeouts
           ~kubernetes_cluster_name ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~kubernetes_cluster_name ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~kubernetes_cluster_name ~name
      ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
