(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type key_vault_sas_token = {
  linked_service_name : string prop;  (** linked_service_name *)
  secret_name : string prop;  (** secret_name *)
}
[@@deriving yojson_of]
(** key_vault_sas_token *)

type service_principal_linked_key_vault_key = {
  linked_service_name : string prop;  (** linked_service_name *)
  secret_name : string prop;  (** secret_name *)
}
[@@deriving yojson_of]
(** service_principal_linked_key_vault_key *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  key_vault_sas_token : key_vault_sas_token list;
  service_principal_linked_key_vault_key :
    service_principal_linked_key_vault_key list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_azure_blob_storage *)

let key_vault_sas_token ~linked_service_name ~secret_name () :
    key_vault_sas_token =
  { linked_service_name; secret_name }

let service_principal_linked_key_vault_key ~linked_service_name
    ~secret_name () : service_principal_linked_key_vault_key =
  { linked_service_name; secret_name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_factory_linked_service_azure_blob_storage
    ?additional_properties ?annotations ?connection_string
    ?connection_string_insecure ?description ?id
    ?integration_runtime_name ?parameters ?sas_uri ?service_endpoint
    ?service_principal_id ?service_principal_key ?storage_kind
    ?tenant_id ?use_managed_identity ?timeouts ~data_factory_id ~name
    ~key_vault_sas_token ~service_principal_linked_key_vault_key () :
    azurerm_data_factory_linked_service_azure_blob_storage =
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

let make ?additional_properties ?annotations ?connection_string
    ?connection_string_insecure ?description ?id
    ?integration_runtime_name ?parameters ?sas_uri ?service_endpoint
    ?service_principal_id ?service_principal_key ?storage_kind
    ?tenant_id ?use_managed_identity ?timeouts ~data_factory_id ~name
    ~key_vault_sas_token ~service_principal_linked_key_vault_key __id
    =
  let __type =
    "azurerm_data_factory_linked_service_azure_blob_storage"
  in
  let __attrs =
    ({
       additional_properties =
         Prop.computed __type __id "additional_properties";
       annotations = Prop.computed __type __id "annotations";
       connection_string =
         Prop.computed __type __id "connection_string";
       connection_string_insecure =
         Prop.computed __type __id "connection_string_insecure";
       data_factory_id = Prop.computed __type __id "data_factory_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       integration_runtime_name =
         Prop.computed __type __id "integration_runtime_name";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       sas_uri = Prop.computed __type __id "sas_uri";
       service_endpoint =
         Prop.computed __type __id "service_endpoint";
       service_principal_id =
         Prop.computed __type __id "service_principal_id";
       service_principal_key =
         Prop.computed __type __id "service_principal_key";
       storage_kind = Prop.computed __type __id "storage_kind";
       tenant_id = Prop.computed __type __id "tenant_id";
       use_managed_identity =
         Prop.computed __type __id "use_managed_identity";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_linked_service_azure_blob_storage
        (azurerm_data_factory_linked_service_azure_blob_storage
           ?additional_properties ?annotations ?connection_string
           ?connection_string_insecure ?description ?id
           ?integration_runtime_name ?parameters ?sas_uri
           ?service_endpoint ?service_principal_id
           ?service_principal_key ?storage_kind ?tenant_id
           ?use_managed_identity ?timeouts ~data_factory_id ~name
           ~key_vault_sas_token
           ~service_principal_linked_key_vault_key ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_properties ?annotations
    ?connection_string ?connection_string_insecure ?description ?id
    ?integration_runtime_name ?parameters ?sas_uri ?service_endpoint
    ?service_principal_id ?service_principal_key ?storage_kind
    ?tenant_id ?use_managed_identity ?timeouts ~data_factory_id ~name
    ~key_vault_sas_token ~service_principal_linked_key_vault_key __id
    =
  let (r : _ Tf_core.resource) =
    make ?additional_properties ?annotations ?connection_string
      ?connection_string_insecure ?description ?id
      ?integration_runtime_name ?parameters ?sas_uri
      ?service_endpoint ?service_principal_id ?service_principal_key
      ?storage_kind ?tenant_id ?use_managed_identity ?timeouts
      ~data_factory_id ~name ~key_vault_sas_token
      ~service_principal_linked_key_vault_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
