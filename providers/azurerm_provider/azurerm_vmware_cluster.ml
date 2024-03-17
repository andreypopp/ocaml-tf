(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_vmware_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_vmware_cluster__timeouts *)

type azurerm_vmware_cluster = {
  cluster_node_count : float;  (** cluster_node_count *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  sku_name : string;  (** sku_name *)
  vmware_cloud_id : string;  (** vmware_cloud_id *)
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
