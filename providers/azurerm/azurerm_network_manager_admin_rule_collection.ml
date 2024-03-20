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

type azurerm_network_manager_admin_rule_collection = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  network_group_ids : string prop list;  (** network_group_ids *)
  security_admin_configuration_id : string prop;
      (** security_admin_configuration_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_manager_admin_rule_collection *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_network_manager_admin_rule_collection ?description ?id
    ?timeouts ~name ~network_group_ids
    ~security_admin_configuration_id () :
    azurerm_network_manager_admin_rule_collection =
  {
    description;
    id;
    name;
    network_group_ids;
    security_admin_configuration_id;
    timeouts;
  }

type t = {
  description : string prop;
  id : string prop;
  name : string prop;
  network_group_ids : string list prop;
  security_admin_configuration_id : string prop;
}

let make ?description ?id ?timeouts ~name ~network_group_ids
    ~security_admin_configuration_id __id =
  let __type = "azurerm_network_manager_admin_rule_collection" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       network_group_ids =
         Prop.computed __type __id "network_group_ids";
       security_admin_configuration_id =
         Prop.computed __type __id "security_admin_configuration_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_network_manager_admin_rule_collection
        (azurerm_network_manager_admin_rule_collection ?description
           ?id ?timeouts ~name ~network_group_ids
           ~security_admin_configuration_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts ~name
    ~network_group_ids ~security_admin_configuration_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~name ~network_group_ids
      ~security_admin_configuration_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
