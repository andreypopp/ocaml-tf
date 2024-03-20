(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?timeouts ~name ~netapp_volume_id ~vmware_cluster_id
    __id =
  let __type = "azurerm_vmware_netapp_volume_attachment" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       netapp_volume_id =
         Prop.computed __type __id "netapp_volume_id";
       vmware_cluster_id =
         Prop.computed __type __id "vmware_cluster_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_vmware_netapp_volume_attachment
        (azurerm_vmware_netapp_volume_attachment ?id ?timeouts ~name
           ~netapp_volume_id ~vmware_cluster_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~netapp_volume_id
    ~vmware_cluster_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~netapp_volume_id ~vmware_cluster_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
