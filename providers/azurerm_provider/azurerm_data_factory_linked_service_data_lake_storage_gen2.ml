(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_linked_service_data_lake_storage_gen2__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_data_lake_storage_gen2__timeouts *)

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
  timeouts :
    azurerm_data_factory_linked_service_data_lake_storage_gen2__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_data_lake_storage_gen2 *)

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

let azurerm_data_factory_linked_service_data_lake_storage_gen2
    ?additional_properties ?annotations ?description ?id
    ?integration_runtime_name ?parameters ?service_principal_id
    ?service_principal_key ?storage_account_key ?tenant
    ?use_managed_identity ?timeouts ~data_factory_id ~name ~url
    __resource_id =
  let __resource_type =
    "azurerm_data_factory_linked_service_data_lake_storage_gen2"
  in
  let __resource =
    ({
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
      : azurerm_data_factory_linked_service_data_lake_storage_gen2)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_linked_service_data_lake_storage_gen2
       __resource);
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
       name = Prop.computed __resource_type __resource_id "name";
       parameters =
         Prop.computed __resource_type __resource_id "parameters";
       service_principal_id =
         Prop.computed __resource_type __resource_id
           "service_principal_id";
       service_principal_key =
         Prop.computed __resource_type __resource_id
           "service_principal_key";
       storage_account_key =
         Prop.computed __resource_type __resource_id
           "storage_account_key";
       tenant = Prop.computed __resource_type __resource_id "tenant";
       url = Prop.computed __resource_type __resource_id "url";
       use_managed_identity =
         Prop.computed __resource_type __resource_id
           "use_managed_identity";
     }
      : t)
  in
  __resource_attributes
