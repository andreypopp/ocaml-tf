(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_integration_runtime_azure__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_azure__timeouts *)

type azurerm_data_factory_integration_runtime_azure = {
  cleanup_enabled : bool prop option; [@option]
      (** cleanup_enabled *)
  compute_type : string prop option; [@option]  (** compute_type *)
  core_count : float prop option; [@option]  (** core_count *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  time_to_live_min : float prop option; [@option]
      (** time_to_live_min *)
  virtual_network_enabled : bool prop option; [@option]
      (** virtual_network_enabled *)
  timeouts :
    azurerm_data_factory_integration_runtime_azure__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_azure *)

let azurerm_data_factory_integration_runtime_azure ?cleanup_enabled
    ?compute_type ?core_count ?description ?id ?time_to_live_min
    ?virtual_network_enabled ?timeouts ~data_factory_id ~location
    ~name __resource_id =
  let __resource_type =
    "azurerm_data_factory_integration_runtime_azure"
  in
  let __resource =
    {
      cleanup_enabled;
      compute_type;
      core_count;
      data_factory_id;
      description;
      id;
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
