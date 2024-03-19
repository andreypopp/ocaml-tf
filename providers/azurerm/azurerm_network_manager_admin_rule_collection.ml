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

let register ?tf_module ?description ?id ?timeouts ~name
    ~network_group_ids ~security_admin_configuration_id __resource_id
    =
  let __resource_type =
    "azurerm_network_manager_admin_rule_collection"
  in
  let __resource =
    azurerm_network_manager_admin_rule_collection ?description ?id
      ?timeouts ~name ~network_group_ids
      ~security_admin_configuration_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_manager_admin_rule_collection
       __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       network_group_ids =
         Prop.computed __resource_type __resource_id
           "network_group_ids";
       security_admin_configuration_id =
         Prop.computed __resource_type __resource_id
           "security_admin_configuration_id";
     }
      : t)
  in
  __resource_attributes
