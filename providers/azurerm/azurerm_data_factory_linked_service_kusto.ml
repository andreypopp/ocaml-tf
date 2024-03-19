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

type azurerm_data_factory_linked_service_kusto = {
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
  kusto_database_name : string prop;  (** kusto_database_name *)
  kusto_endpoint : string prop;  (** kusto_endpoint *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  service_principal_id : string prop option; [@option]
      (** service_principal_id *)
  service_principal_key : string prop option; [@option]
      (** service_principal_key *)
  tenant : string prop option; [@option]  (** tenant *)
  use_managed_identity : bool prop option; [@option]
      (** use_managed_identity *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_kusto *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_factory_linked_service_kusto ?additional_properties
    ?annotations ?description ?id ?integration_runtime_name
    ?parameters ?service_principal_id ?service_principal_key ?tenant
    ?use_managed_identity ?timeouts ~data_factory_id
    ~kusto_database_name ~kusto_endpoint ~name () :
    azurerm_data_factory_linked_service_kusto =
  {
    additional_properties;
    annotations;
    data_factory_id;
    description;
    id;
    integration_runtime_name;
    kusto_database_name;
    kusto_endpoint;
    name;
    parameters;
    service_principal_id;
    service_principal_key;
    tenant;
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
  kusto_database_name : string prop;
  kusto_endpoint : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  service_principal_id : string prop;
  service_principal_key : string prop;
  tenant : string prop;
  use_managed_identity : bool prop;
}

let register ?tf_module ?additional_properties ?annotations
    ?description ?id ?integration_runtime_name ?parameters
    ?service_principal_id ?service_principal_key ?tenant
    ?use_managed_identity ?timeouts ~data_factory_id
    ~kusto_database_name ~kusto_endpoint ~name __resource_id =
  let __resource_type =
    "azurerm_data_factory_linked_service_kusto"
  in
  let __resource =
    azurerm_data_factory_linked_service_kusto ?additional_properties
      ?annotations ?description ?id ?integration_runtime_name
      ?parameters ?service_principal_id ?service_principal_key
      ?tenant ?use_managed_identity ?timeouts ~data_factory_id
      ~kusto_database_name ~kusto_endpoint ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_linked_service_kusto __resource);
  let __resource_attributes =
    ({
       additional_properties =
         Prop.computed __resource_type __resource_id
           "additional_properties";
       annotations =
         Prop.computed __resource_type __resource_id "annotations";
       data_factory_id =
         Prop.computed __resource_type __resource_id
           "data_factory_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       integration_runtime_name =
         Prop.computed __resource_type __resource_id
           "integration_runtime_name";
       kusto_database_name =
         Prop.computed __resource_type __resource_id
           "kusto_database_name";
       kusto_endpoint =
         Prop.computed __resource_type __resource_id "kusto_endpoint";
       name = Prop.computed __resource_type __resource_id "name";
       parameters =
         Prop.computed __resource_type __resource_id "parameters";
       service_principal_id =
         Prop.computed __resource_type __resource_id
           "service_principal_id";
       service_principal_key =
         Prop.computed __resource_type __resource_id
           "service_principal_key";
       tenant = Prop.computed __resource_type __resource_id "tenant";
       use_managed_identity =
         Prop.computed __resource_type __resource_id
           "use_managed_identity";
     }
      : t)
  in
  __resource_attributes
