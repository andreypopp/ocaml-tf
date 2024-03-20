(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_network_manager_static_member = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  network_group_id : string prop;  (** network_group_id *)
  target_virtual_network_id : string prop;
      (** target_virtual_network_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_manager_static_member *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_network_manager_static_member ?id ?timeouts ~name
    ~network_group_id ~target_virtual_network_id () :
    azurerm_network_manager_static_member =
  { id; name; network_group_id; target_virtual_network_id; timeouts }

type t = {
  id : string prop;
  name : string prop;
  network_group_id : string prop;
  region : string prop;
  target_virtual_network_id : string prop;
}

let make ?id ?timeouts ~name ~network_group_id
    ~target_virtual_network_id __id =
  let __type = "azurerm_network_manager_static_member" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       network_group_id =
         Prop.computed __type __id "network_group_id";
       region = Prop.computed __type __id "region";
       target_virtual_network_id =
         Prop.computed __type __id "target_virtual_network_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_network_manager_static_member
        (azurerm_network_manager_static_member ?id ?timeouts ~name
           ~network_group_id ~target_virtual_network_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~network_group_id
    ~target_virtual_network_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~network_group_id
      ~target_virtual_network_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
