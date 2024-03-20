(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_data_factory_linked_service_data_lake_storage_gen2 = {
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
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  service_principal_id : string prop option; [@option]
      (** service_principal_id *)
  service_principal_key : string prop option; [@option]
      (** service_principal_key *)
  storage_account_key : string prop option; [@option]
      (** storage_account_key *)
  tenant : string prop option; [@option]  (** tenant *)
  url : string prop;  (** url *)
  use_managed_identity : bool prop option; [@option]
      (** use_managed_identity *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_data_lake_storage_gen2 *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_factory_linked_service_data_lake_storage_gen2
    ?additional_properties ?annotations ?description ?id
    ?integration_runtime_name ?parameters ?service_principal_id
    ?service_principal_key ?storage_account_key ?tenant
    ?use_managed_identity ?timeouts ~data_factory_id ~name ~url () :
    azurerm_data_factory_linked_service_data_lake_storage_gen2 =
  {
    additional_properties;
    annotations;
    data_factory_id;
    description;
    id;
    integration_runtime_name;
    name;
    parameters;
    service_principal_id;
    service_principal_key;
    storage_account_key;
    tenant;
    url;
    use_managed_identity;
    timeouts;
  }

type t = {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  integration_runtime_name : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  service_principal_id : string prop;
  service_principal_key : string prop;
  storage_account_key : string prop;
  tenant : string prop;
  url : string prop;
  use_managed_identity : bool prop;
}

let make ?additional_properties ?annotations ?description ?id
    ?integration_runtime_name ?parameters ?service_principal_id
    ?service_principal_key ?storage_account_key ?tenant
    ?use_managed_identity ?timeouts ~data_factory_id ~name ~url __id
    =
  let __type =
    "azurerm_data_factory_linked_service_data_lake_storage_gen2"
  in
  let __attrs =
    ({
       additional_properties =
         Prop.computed __type __id "additional_properties";
       annotations = Prop.computed __type __id "annotations";
       data_factory_id = Prop.computed __type __id "data_factory_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       integration_runtime_name =
         Prop.computed __type __id "integration_runtime_name";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       service_principal_id =
         Prop.computed __type __id "service_principal_id";
       service_principal_key =
         Prop.computed __type __id "service_principal_key";
       storage_account_key =
         Prop.computed __type __id "storage_account_key";
       tenant = Prop.computed __type __id "tenant";
       url = Prop.computed __type __id "url";
       use_managed_identity =
         Prop.computed __type __id "use_managed_identity";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_linked_service_data_lake_storage_gen2
        (azurerm_data_factory_linked_service_data_lake_storage_gen2
           ?additional_properties ?annotations ?description ?id
           ?integration_runtime_name ?parameters
           ?service_principal_id ?service_principal_key
           ?storage_account_key ?tenant ?use_managed_identity
           ?timeouts ~data_factory_id ~name ~url ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_properties ?annotations
    ?description ?id ?integration_runtime_name ?parameters
    ?service_principal_id ?service_principal_key ?storage_account_key
    ?tenant ?use_managed_identity ?timeouts ~data_factory_id ~name
    ~url __id =
  let (r : _ Tf_core.resource) =
    make ?additional_properties ?annotations ?description ?id
      ?integration_runtime_name ?parameters ?service_principal_id
      ?service_principal_key ?storage_account_key ?tenant
      ?use_managed_identity ?timeouts ~data_factory_id ~name ~url
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
