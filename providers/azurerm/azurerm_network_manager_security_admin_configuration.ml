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

type azurerm_network_manager_security_admin_configuration = {
  apply_on_network_intent_policy_based_services :
    string prop list option;
      [@option]
      (** apply_on_network_intent_policy_based_services *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  network_manager_id : string prop;  (** network_manager_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_manager_security_admin_configuration *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_network_manager_security_admin_configuration
    ?apply_on_network_intent_policy_based_services ?description ?id
    ?timeouts ~name ~network_manager_id () :
    azurerm_network_manager_security_admin_configuration =
  {
    apply_on_network_intent_policy_based_services;
    description;
    id;
    name;
    network_manager_id;
    timeouts;
  }

type t = {
  apply_on_network_intent_policy_based_services : string list prop;
  description : string prop;
  id : string prop;
  name : string prop;
  network_manager_id : string prop;
}

let make ?apply_on_network_intent_policy_based_services ?description
    ?id ?timeouts ~name ~network_manager_id __id =
  let __type =
    "azurerm_network_manager_security_admin_configuration"
  in
  let __attrs =
    ({
       apply_on_network_intent_policy_based_services =
         Prop.computed __type __id
           "apply_on_network_intent_policy_based_services";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       network_manager_id =
         Prop.computed __type __id "network_manager_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_network_manager_security_admin_configuration
        (azurerm_network_manager_security_admin_configuration
           ?apply_on_network_intent_policy_based_services
           ?description ?id ?timeouts ~name ~network_manager_id ());
    attrs = __attrs;
  }

let register ?tf_module
    ?apply_on_network_intent_policy_based_services ?description ?id
    ?timeouts ~name ~network_manager_id __id =
  let (r : _ Tf_core.resource) =
    make ?apply_on_network_intent_policy_based_services ?description
      ?id ?timeouts ~name ~network_manager_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
