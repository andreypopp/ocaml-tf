(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_linked_service_key_vault__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_key_vault__timeouts *)

type azurerm_data_factory_linked_service_key_vault = {
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  integration_runtime_name : string prop option; [@option]
      (** integration_runtime_name *)
  key_vault_id : string prop;  (** key_vault_id *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  timeouts :
    azurerm_data_factory_linked_service_key_vault__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_key_vault *)

let azurerm_data_factory_linked_service_key_vault
    ?additional_properties ?annotations ?description ?id
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
      id;
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
