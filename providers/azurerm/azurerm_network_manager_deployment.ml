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

let register ?tf_module ?id ?triggers ?timeouts ~configuration_ids
    ~location ~network_manager_id ~scope_access __resource_id =
  let __resource_type = "azurerm_network_manager_deployment" in
  let __resource =
    azurerm_network_manager_deployment ?id ?triggers ?timeouts
      ~configuration_ids ~location ~network_manager_id ~scope_access
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_manager_deployment __resource);
  let __resource_attributes =
    ({
       configuration_ids =
         Prop.computed __resource_type __resource_id
           "configuration_ids";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       network_manager_id =
         Prop.computed __resource_type __resource_id
           "network_manager_id";
       scope_access =
         Prop.computed __resource_type __resource_id "scope_access";
       triggers =
         Prop.computed __resource_type __resource_id "triggers";
     }
      : t)
  in
  __resource_attributes
