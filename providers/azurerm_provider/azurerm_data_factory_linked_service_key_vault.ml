(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_data_factory_linked_service_key_vault__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_key_vault__timeouts *)

type azurerm_data_factory_linked_service_key_vault = {
  additional_properties : (string * string) list option; [@option]
      (** additional_properties *)
  annotations : string list option; [@option]  (** annotations *)
  data_factory_id : string;  (** data_factory_id *)
  description : string option; [@option]  (** description *)
  integration_runtime_name : string option; [@option]
      (** integration_runtime_name *)
  key_vault_id : string;  (** key_vault_id *)
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  timeouts :
    azurerm_data_factory_linked_service_key_vault__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_key_vault *)

let azurerm_data_factory_linked_service_key_vault
    ?additional_properties ?annotations ?description
    ?integration_runtime_name ?parameters ?timeouts ~data_factory_id
    ~key_vault_id ~name __resource_id =
  let __resource_type =
    "azurerm_data_factory_linked_service_key_vault"
  in
  let __resource =
    {
      additional_properties;
      annotations;
      data_factory_id;
      description;
      integration_runtime_name;
      key_vault_id;
      name;
      parameters;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_linked_service_key_vault
       __resource);
  ()
