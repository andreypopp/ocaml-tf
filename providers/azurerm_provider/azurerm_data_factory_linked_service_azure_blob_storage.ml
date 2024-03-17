(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_linked_service_azure_blob_storage__key_vault_sas_token = {
  linked_service_name : string prop;  (** linked_service_name *)
  secret_name : string prop;  (** secret_name *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_azure_blob_storage__key_vault_sas_token *)

type azurerm_data_factory_linked_service_azure_blob_storage__service_principal_linked_key_vault_key = {
  linked_service_name : string prop;  (** linked_service_name *)
  secret_name : string prop;  (** secret_name *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_azure_blob_storage__service_principal_linked_key_vault_key *)

type azurerm_data_factory_linked_service_azure_blob_storage__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_azure_blob_storage__timeouts *)

type azurerm_data_factory_linked_service_azure_blob_storage = {
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  connection_string : string prop option; [@option]
      (** connection_string *)
  connection_string_insecure : string prop option; [@option]
      (** connection_string_insecure *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  integration_runtime_name : string prop option; [@option]
      (** integration_runtime_name *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  sas_uri : string prop option; [@option]  (** sas_uri *)
  service_endpoint : string prop option; [@option]
      (** service_endpoint *)
  service_principal_id : string prop option; [@option]
      (** service_principal_id *)
  service_principal_key : string prop option; [@option]
      (** service_principal_key *)
  storage_kind : string prop option; [@option]  (** storage_kind *)
  tenant_id : string prop option; [@option]  (** tenant_id *)
  use_managed_identity : bool prop option; [@option]
      (** use_managed_identity *)
  key_vault_sas_token :
    azurerm_data_factory_linked_service_azure_blob_storage__key_vault_sas_token
    list;
  service_principal_linked_key_vault_key :
    azurerm_data_factory_linked_service_azure_blob_storage__service_principal_linked_key_vault_key
    list;
  timeouts :
    azurerm_data_factory_linked_service_azure_blob_storage__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_azure_blob_storage *)

let azurerm_data_factory_linked_service_azure_blob_storage
    ?additional_properties ?annotations ?connection_string
    ?connection_string_insecure ?description ?id
    ?integration_runtime_name ?parameters ?sas_uri ?service_endpoint
    ?service_principal_id ?service_principal_key ?storage_kind
    ?tenant_id ?use_managed_identity ?timeouts ~data_factory_id ~name
    ~key_vault_sas_token ~service_principal_linked_key_vault_key
    __resource_id =
  let __resource_type =
    "azurerm_data_factory_linked_service_azure_blob_storage"
  in
  let __resource =
    {
      additional_properties;
      annotations;
      connection_string;
      connection_string_insecure;
      data_factory_id;
      description;
      id;
      integration_runtime_name;
      name;
      parameters;
      sas_uri;
      service_endpoint;
      service_principal_id;
      service_principal_key;
      storage_kind;
      tenant_id;
      use_managed_identity;
      key_vault_sas_token;
      service_principal_linked_key_vault_key;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_linked_service_azure_blob_storage
       __resource);
  ()
