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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_azure *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_factory_integration_runtime_azure ?cleanup_enabled
    ?compute_type ?core_count ?description ?id ?time_to_live_min
    ?virtual_network_enabled ?timeouts ~data_factory_id ~location
    ~name () : azurerm_data_factory_integration_runtime_azure =
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

type t = {
  cleanup_enabled : bool prop;
  compute_type : string prop;
  core_count : float prop;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  time_to_live_min : float prop;
  virtual_network_enabled : bool prop;
}

let register ?tf_module ?cleanup_enabled ?compute_type ?core_count
    ?description ?id ?time_to_live_min ?virtual_network_enabled
    ?timeouts ~data_factory_id ~location ~name __resource_id =
  let __resource_type =
    "azurerm_data_factory_integration_runtime_azure"
  in
  let __resource =
    azurerm_data_factory_integration_runtime_azure ?cleanup_enabled
      ?compute_type ?core_count ?description ?id ?time_to_live_min
      ?virtual_network_enabled ?timeouts ~data_factory_id ~location
      ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_integration_runtime_azure
       __resource);
  let __resource_attributes =
    ({
       cleanup_enabled =
         Prop.computed __resource_type __resource_id
           "cleanup_enabled";
       compute_type =
         Prop.computed __resource_type __resource_id "compute_type";
       core_count =
         Prop.computed __resource_type __resource_id "core_count";
       data_factory_id =
         Prop.computed __resource_type __resource_id
           "data_factory_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       time_to_live_min =
         Prop.computed __resource_type __resource_id
           "time_to_live_min";
       virtual_network_enabled =
         Prop.computed __resource_type __resource_id
           "virtual_network_enabled";
     }
      : t)
  in
  __resource_attributes
