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

type azurerm_synapse_integration_runtime_self_hosted = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  synapse_workspace_id : string prop;  (** synapse_workspace_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_integration_runtime_self_hosted *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_synapse_integration_runtime_self_hosted ?description ?id
    ?timeouts ~name ~synapse_workspace_id () :
    azurerm_synapse_integration_runtime_self_hosted =
  { description; id; name; synapse_workspace_id; timeouts }

type t = {
  authorization_key_primary : string prop;
  authorization_key_secondary : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  synapse_workspace_id : string prop;
}

let register ?tf_module ?description ?id ?timeouts ~name
    ~synapse_workspace_id __resource_id =
  let __resource_type =
    "azurerm_synapse_integration_runtime_self_hosted"
  in
  let __resource =
    azurerm_synapse_integration_runtime_self_hosted ?description ?id
      ?timeouts ~name ~synapse_workspace_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_synapse_integration_runtime_self_hosted
       __resource);
  let __resource_attributes =
    ({
       authorization_key_primary =
         Prop.computed __resource_type __resource_id
           "authorization_key_primary";
       authorization_key_secondary =
         Prop.computed __resource_type __resource_id
           "authorization_key_secondary";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       synapse_workspace_id =
         Prop.computed __resource_type __resource_id
           "synapse_workspace_id";
     }
      : t)
  in
  __resource_attributes
