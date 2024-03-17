(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_synapse_integration_runtime_azure__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_synapse_integration_runtime_azure__timeouts *)

type azurerm_synapse_integration_runtime_azure = {
  compute_type : string option; [@option]  (** compute_type *)
  core_count : float option; [@option]  (** core_count *)
  description : string option; [@option]  (** description *)
  location : string;  (** location *)
  name : string;  (** name *)
  synapse_workspace_id : string;  (** synapse_workspace_id *)
  time_to_live_min : float option; [@option]  (** time_to_live_min *)
  timeouts :
    azurerm_synapse_integration_runtime_azure__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_integration_runtime_azure *)

let azurerm_synapse_integration_runtime_azure ?compute_type
    ?core_count ?description ?time_to_live_min ?timeouts ~location
    ~name ~synapse_workspace_id __resource_id =
  let __resource_type =
    "azurerm_synapse_integration_runtime_azure"
  in
  let __resource =
    {
      compute_type;
      core_count;
      description;
      location;
      name;
      synapse_workspace_id;
      time_to_live_min;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_synapse_integration_runtime_azure __resource);
  ()
