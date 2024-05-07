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

type azurerm_vmware_cluster = {
  cluster_node_count : float prop;
  id : string prop option; [@option]
  name : string prop;
  sku_name : string prop;
  vmware_cloud_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_vmware_cluster) -> ()

let yojson_of_azurerm_vmware_cluster =
  (function
   | {
       cluster_node_count = v_cluster_node_count;
       id = v_id;
       name = v_name;
       sku_name = v_sku_name;
       vmware_cloud_id = v_vmware_cloud_id;
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
           yojson_of_prop yojson_of_string v_vmware_cloud_id
         in
         ("vmware_cloud_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku_name in
         ("sku_name", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_float v_cluster_node_count
         in
         ("cluster_node_count", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_vmware_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_vmware_cluster

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_vmware_cluster ?id ?timeouts ~cluster_node_count ~name
    ~sku_name ~vmware_cloud_id () : azurerm_vmware_cluster =
  {
    cluster_node_count;
    id;
    name;
    sku_name;
    vmware_cloud_id;
    timeouts;
  }

type t = {
  tf_name : string;
  cluster_node_count : float prop;
  cluster_number : float prop;
  hosts : string list prop;
  id : string prop;
  name : string prop;
  sku_name : string prop;
  vmware_cloud_id : string prop;
}

let make ?id ?timeouts ~cluster_node_count ~name ~sku_name
    ~vmware_cloud_id __id =
  let __type = "azurerm_vmware_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       cluster_node_count =
         Prop.computed __type __id "cluster_node_count";
       cluster_number = Prop.computed __type __id "cluster_number";
       hosts = Prop.computed __type __id "hosts";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       sku_name = Prop.computed __type __id "sku_name";
       vmware_cloud_id = Prop.computed __type __id "vmware_cloud_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_vmware_cluster
        (azurerm_vmware_cluster ?id ?timeouts ~cluster_node_count
           ~name ~sku_name ~vmware_cloud_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~cluster_node_count ~name
    ~sku_name ~vmware_cloud_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~cluster_node_count ~name ~sku_name
      ~vmware_cloud_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
