(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_palo_alto_virtual_network_appliance = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  virtual_hub_id : string prop;  (** virtual_hub_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_palo_alto_virtual_network_appliance *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_palo_alto_virtual_network_appliance ?id ?timeouts ~name
    ~virtual_hub_id () : azurerm_palo_alto_virtual_network_appliance
    =
  { id; name; virtual_hub_id; timeouts }

type t = {
  id : string prop;
  name : string prop;
  virtual_hub_id : string prop;
}

let make ?id ?timeouts ~name ~virtual_hub_id __id =
  let __type = "azurerm_palo_alto_virtual_network_appliance" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       virtual_hub_id = Prop.computed __type __id "virtual_hub_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_palo_alto_virtual_network_appliance
        (azurerm_palo_alto_virtual_network_appliance ?id ?timeouts
           ~name ~virtual_hub_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~virtual_hub_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~virtual_hub_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
