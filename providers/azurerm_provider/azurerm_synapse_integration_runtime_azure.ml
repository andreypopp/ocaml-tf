(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_synapse_integration_runtime_azure__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_synapse_integration_runtime_azure__timeouts *)

type azurerm_synapse_integration_runtime_azure = {
  compute_type : string prop option; [@option]  (** compute_type *)
  core_count : float prop option; [@option]  (** core_count *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  synapse_workspace_id : string prop;  (** synapse_workspace_id *)
  time_to_live_min : float prop option; [@option]
      (** time_to_live_min *)
  timeouts :
    azurerm_synapse_integration_runtime_azure__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_integration_runtime_azure *)

let azurerm_synapse_integration_runtime_azure ?compute_type
    ?core_count ?description ?id ?time_to_live_min ?timeouts
    ~location ~name ~synapse_workspace_id __resource_id =
  let __resource_type =
    "azurerm_synapse_integration_runtime_azure"
  in
  let __resource =
    {
      compute_type;
      core_count;
      description;
      id;
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
