(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_linked_service_synapse__key_vault_password = {
  linked_service_name : string prop;  (** linked_service_name *)
  secret_name : string prop;  (** secret_name *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_synapse__key_vault_password *)

type azurerm_data_factory_linked_service_synapse__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_synapse__timeouts *)

type azurerm_data_factory_linked_service_synapse = {
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  connection_string : string prop;  (** connection_string *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  integration_runtime_name : string prop option; [@option]
      (** integration_runtime_name *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  key_vault_password :
    azurerm_data_factory_linked_service_synapse__key_vault_password
    list;
  timeouts :
    azurerm_data_factory_linked_service_synapse__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_synapse *)

let azurerm_data_factory_linked_service_synapse
    ?additional_properties ?annotations ?description ?id
    ?integration_runtime_name ?parameters ?timeouts
    ~connection_string ~data_factory_id ~name ~key_vault_password
    __resource_id =
  let __resource_type =
    "azurerm_data_factory_linked_service_synapse"
  in
  let __resource =
    {
      additional_properties;
      annotations;
      connection_string;
      data_factory_id;
      description;
      id;
      integration_runtime_name;
      name;
      parameters;
      key_vault_password;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_linked_service_synapse __resource);
  ()
