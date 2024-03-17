(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_vmware_netapp_volume_attachment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_vmware_netapp_volume_attachment__timeouts *)

type azurerm_vmware_netapp_volume_attachment = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  netapp_volume_id : string prop;  (** netapp_volume_id *)
  vmware_cluster_id : string prop;  (** vmware_cluster_id *)
  timeouts : azurerm_vmware_netapp_volume_attachment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_vmware_netapp_volume_attachment *)

let azurerm_vmware_netapp_volume_attachment ?id ?timeouts ~name
    ~netapp_volume_id ~vmware_cluster_id __resource_id =
  let __resource_type = "azurerm_vmware_netapp_volume_attachment" in
  let __resource =
    { id; name; netapp_volume_id; vmware_cluster_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_vmware_netapp_volume_attachment __resource);
  ()
