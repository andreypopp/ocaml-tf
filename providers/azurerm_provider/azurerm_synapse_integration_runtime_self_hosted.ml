(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_synapse_integration_runtime_self_hosted__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_synapse_integration_runtime_self_hosted__timeouts *)

type azurerm_synapse_integration_runtime_self_hosted = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  synapse_workspace_id : string prop;  (** synapse_workspace_id *)
  timeouts :
    azurerm_synapse_integration_runtime_self_hosted__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_integration_runtime_self_hosted *)

let azurerm_synapse_integration_runtime_self_hosted ?description ?id
    ?timeouts ~name ~synapse_workspace_id __resource_id =
  let __resource_type =
    "azurerm_synapse_integration_runtime_self_hosted"
  in
  let __resource =
    { description; id; name; synapse_workspace_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_synapse_integration_runtime_self_hosted
       __resource);
  ()
