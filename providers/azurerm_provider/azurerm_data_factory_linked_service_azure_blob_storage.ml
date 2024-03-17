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

type t = {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  connection_string : string prop;
  connection_string_insecure : string prop;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  integration_runtime_name : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  sas_uri : string prop;
  service_endpoint : string prop;
  service_principal_id : string prop;
  service_principal_key : string prop;
  storage_kind : string prop;
  tenant_id : string prop;
  use_managed_identity : bool prop;
}

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
    ({
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
      : azurerm_data_factory_linked_service_azure_blob_storage)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_linked_service_azure_blob_storage
       __resource);
  let __resource_attributes =
    ({
       additional_properties =
         Prop.computed __resource_type __resource_id
           "additional_properties";
       annotations =
         Prop.computed __resource_type __resource_id "annotations";
       connection_string =
         Prop.computed __resource_type __resource_id
           "connection_string";
       connection_string_insecure =
         Prop.computed __resource_type __resource_id
           "connection_string_insecure";
       data_factory_id =
         Prop.computed __resource_type __resource_id
           "data_factory_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       integration_runtime_name =
         Prop.computed __resource_type __resource_id
           "integration_runtime_name";
       name = Prop.computed __resource_type __resource_id "name";
       parameters =
         Prop.computed __resource_type __resource_id "parameters";
       sas_uri =
         Prop.computed __resource_type __resource_id "sas_uri";
       service_endpoint =
         Prop.computed __resource_type __resource_id
           "service_endpoint";
       service_principal_id =
         Prop.computed __resource_type __resource_id
           "service_principal_id";
       service_principal_key =
         Prop.computed __resource_type __resource_id
           "service_principal_key";
       storage_kind =
         Prop.computed __resource_type __resource_id "storage_kind";
       tenant_id =
         Prop.computed __resource_type __resource_id "tenant_id";
       use_managed_identity =
         Prop.computed __resource_type __resource_id
           "use_managed_identity";
     }
      : t)
  in
  __resource_attributes
