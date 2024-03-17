(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_linked_service_snowflake__key_vault_password = {
  linked_service_name : string;  (** linked_service_name *)
  secret_name : string;  (** secret_name *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_snowflake__key_vault_password *)

type azurerm_data_factory_linked_service_snowflake__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_snowflake__timeouts *)

type azurerm_data_factory_linked_service_snowflake = {
  additional_properties : (string * string) list option; [@option]
      (** additional_properties *)
  annotations : string list option; [@option]  (** annotations *)
  connection_string : string;  (** connection_string *)
  data_factory_id : string;  (** data_factory_id *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  integration_runtime_name : string option; [@option]
      (** integration_runtime_name *)
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  key_vault_password :
    azurerm_data_factory_linked_service_snowflake__key_vault_password
    list;
  timeouts :
    azurerm_data_factory_linked_service_snowflake__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_snowflake *)

let azurerm_data_factory_linked_service_snowflake
    ?additional_properties ?annotations ?description ?id
    ?integration_runtime_name ?parameters ?timeouts
    ~connection_string ~data_factory_id ~name ~key_vault_password
    __resource_id =
  let __resource_type =
    "azurerm_data_factory_linked_service_snowflake"
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
    (yojson_of_azurerm_data_factory_linked_service_snowflake
       __resource);
  ()
