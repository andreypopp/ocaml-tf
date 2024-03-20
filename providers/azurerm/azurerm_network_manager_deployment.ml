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

type azurerm_network_manager_deployment = {
  configuration_ids : string prop list;  (** configuration_ids *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  network_manager_id : string prop;  (** network_manager_id *)
  scope_access : string prop;  (** scope_access *)
  triggers : (string * string prop) list option; [@option]
      (** triggers *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_manager_deployment *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_network_manager_deployment ?id ?triggers ?timeouts
    ~configuration_ids ~location ~network_manager_id ~scope_access ()
    : azurerm_network_manager_deployment =
  {
    configuration_ids;
    id;
    location;
    network_manager_id;
    scope_access;
    triggers;
    timeouts;
  }

type t = {
  configuration_ids : string list prop;
  id : string prop;
  location : string prop;
  network_manager_id : string prop;
  scope_access : string prop;
  triggers : (string * string) list prop;
}

let make ?id ?triggers ?timeouts ~configuration_ids ~location
    ~network_manager_id ~scope_access __id =
  let __type = "azurerm_network_manager_deployment" in
  let __attrs =
    ({
       configuration_ids =
         Prop.computed __type __id "configuration_ids";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       network_manager_id =
         Prop.computed __type __id "network_manager_id";
       scope_access = Prop.computed __type __id "scope_access";
       triggers = Prop.computed __type __id "triggers";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_network_manager_deployment
        (azurerm_network_manager_deployment ?id ?triggers ?timeouts
           ~configuration_ids ~location ~network_manager_id
           ~scope_access ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?triggers ?timeouts ~configuration_ids
    ~location ~network_manager_id ~scope_access __id =
  let (r : _ Tf_core.resource) =
    make ?id ?triggers ?timeouts ~configuration_ids ~location
      ~network_manager_id ~scope_access __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
