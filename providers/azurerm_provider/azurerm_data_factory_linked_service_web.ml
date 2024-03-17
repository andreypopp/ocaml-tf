(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_linked_service_web__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_web__timeouts *)

type azurerm_data_factory_linked_service_web = {
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  authentication_type : string prop;  (** authentication_type *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  integration_runtime_name : string prop option; [@option]
      (** integration_runtime_name *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  password : string prop option; [@option]  (** password *)
  url : string prop;  (** url *)
  username : string prop option; [@option]  (** username *)
  timeouts : azurerm_data_factory_linked_service_web__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_web *)

let azurerm_data_factory_linked_service_web ?additional_properties
    ?annotations ?description ?id ?integration_runtime_name
    ?parameters ?password ?username ?timeouts ~authentication_type
    ~data_factory_id ~name ~url __resource_id =
  let __resource_type = "azurerm_data_factory_linked_service_web" in
  let __resource =
    {
      additional_properties;
      annotations;
      authentication_type;
      data_factory_id;
      description;
      id;
      integration_runtime_name;
      name;
      parameters;
      password;
      url;
      username;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_linked_service_web __resource);
  ()
