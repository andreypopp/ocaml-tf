(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?timeouts ~cluster_node_count ~name
    ~sku_name ~vmware_cloud_id __resource_id =
  let __resource_type = "azurerm_vmware_cluster" in
  let __resource =
    azurerm_vmware_cluster ?id ?timeouts ~cluster_node_count ~name
      ~sku_name ~vmware_cloud_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_vmware_cluster __resource);
  let __resource_attributes =
    ({
       cluster_node_count =
         Prop.computed __resource_type __resource_id
           "cluster_node_count";
       cluster_number =
         Prop.computed __resource_type __resource_id "cluster_number";
       hosts = Prop.computed __resource_type __resource_id "hosts";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       sku_name =
         Prop.computed __resource_type __resource_id "sku_name";
       vmware_cloud_id =
         Prop.computed __resource_type __resource_id
           "vmware_cloud_id";
     }
      : t)
  in
  __resource_attributes
