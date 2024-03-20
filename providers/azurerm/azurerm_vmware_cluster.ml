(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_vmware_cluster = {
  cluster_node_count : float prop;  (** cluster_node_count *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  sku_name : string prop;  (** sku_name *)
  vmware_cloud_id : string prop;  (** vmware_cloud_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_vmware_cluster *)

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
