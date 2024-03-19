(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_vmware_netapp_volume_attachment = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  netapp_volume_id : string prop;  (** netapp_volume_id *)
  vmware_cluster_id : string prop;  (** vmware_cluster_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_vmware_netapp_volume_attachment *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_vmware_netapp_volume_attachment ?id ?timeouts ~name
    ~netapp_volume_id ~vmware_cluster_id () :
    azurerm_vmware_netapp_volume_attachment =
  { id; name; netapp_volume_id; vmware_cluster_id; timeouts }

type t = {
  id : string prop;
  name : string prop;
  netapp_volume_id : string prop;
  vmware_cluster_id : string prop;
}

let register ?tf_module ?id ?timeouts ~name ~netapp_volume_id
    ~vmware_cluster_id __resource_id =
  let __resource_type = "azurerm_vmware_netapp_volume_attachment" in
  let __resource =
    azurerm_vmware_netapp_volume_attachment ?id ?timeouts ~name
      ~netapp_volume_id ~vmware_cluster_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_vmware_netapp_volume_attachment __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       netapp_volume_id =
         Prop.computed __resource_type __resource_id
           "netapp_volume_id";
       vmware_cluster_id =
         Prop.computed __resource_type __resource_id
           "vmware_cluster_id";
     }
      : t)
  in
  __resource_attributes
