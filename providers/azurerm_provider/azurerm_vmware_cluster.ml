(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_vmware_cluster__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_vmware_cluster__timeouts *)

type azurerm_vmware_cluster = {
  cluster_node_count : float prop;  (** cluster_node_count *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  sku_name : string prop;  (** sku_name *)
  vmware_cloud_id : string prop;  (** vmware_cloud_id *)
  timeouts : azurerm_vmware_cluster__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_vmware_cluster *)

let azurerm_vmware_cluster ?id ?timeouts ~cluster_node_count ~name
    ~sku_name ~vmware_cloud_id __resource_id =
  let __resource_type = "azurerm_vmware_cluster" in
  let __resource =
    {
      cluster_node_count;
      id;
      name;
      sku_name;
      vmware_cloud_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_vmware_cluster __resource);
  ()
