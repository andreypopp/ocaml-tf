(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_integration_runtime_azure__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_azure__timeouts *)

type azurerm_data_factory_integration_runtime_azure = {
  compute_type : string option; [@option]  (** compute_type *)
  core_count : float option; [@option]  (** core_count *)
  data_factory_id : string;  (** data_factory_id *)
  description : string option; [@option]  (** description *)
  location : string;  (** location *)
  name : string;  (** name *)
  time_to_live_min : float option; [@option]  (** time_to_live_min *)
  virtual_network_enabled : bool option; [@option]
      (** virtual_network_enabled *)
  timeouts :
    azurerm_data_factory_integration_runtime_azure__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_azure *)

let azurerm_data_factory_integration_runtime_azure ?compute_type
    ?core_count ?description ?time_to_live_min
    ?virtual_network_enabled ?timeouts ~data_factory_id ~location
    ~name __resource_id =
  let __resource_type =
    "azurerm_data_factory_integration_runtime_azure"
  in
  let __resource =
    {
      compute_type;
      core_count;
      data_factory_id;
      description;
      location;
      name;
      time_to_live_min;
      virtual_network_enabled;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_integration_runtime_azure
       __resource);
  ()
