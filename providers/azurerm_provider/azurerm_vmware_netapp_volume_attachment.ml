(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_vmware_netapp_volume_attachment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_vmware_netapp_volume_attachment__timeouts *)

type azurerm_vmware_netapp_volume_attachment = {
  name : string;  (** name *)
  netapp_volume_id : string;  (** netapp_volume_id *)
  vmware_cluster_id : string;  (** vmware_cluster_id *)
  timeouts : azurerm_vmware_netapp_volume_attachment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_vmware_netapp_volume_attachment *)

let azurerm_vmware_netapp_volume_attachment ?timeouts ~name
    ~netapp_volume_id ~vmware_cluster_id __resource_id =
  let __resource_type = "azurerm_vmware_netapp_volume_attachment" in
  let __resource =
    { name; netapp_volume_id; vmware_cluster_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_vmware_netapp_volume_attachment __resource);
  ()
