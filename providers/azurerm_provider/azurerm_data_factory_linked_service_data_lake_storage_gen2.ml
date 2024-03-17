(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_data_factory_linked_service_data_lake_storage_gen2__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_data_lake_storage_gen2__timeouts *)

type azurerm_data_factory_linked_service_data_lake_storage_gen2 = {
  additional_properties : (string * string) list option; [@option]
      (** additional_properties *)
  annotations : string list option; [@option]  (** annotations *)
  data_factory_id : string;  (** data_factory_id *)
  description : string option; [@option]  (** description *)
  integration_runtime_name : string option; [@option]
      (** integration_runtime_name *)
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  service_principal_id : string option; [@option]
      (** service_principal_id *)
  service_principal_key : string option; [@option]
      (** service_principal_key *)
  storage_account_key : string option; [@option]
      (** storage_account_key *)
  tenant : string option; [@option]  (** tenant *)
  url : string;  (** url *)
  use_managed_identity : bool option; [@option]
      (** use_managed_identity *)
  timeouts :
    azurerm_data_factory_linked_service_data_lake_storage_gen2__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_data_lake_storage_gen2 *)

let azurerm_data_factory_linked_service_data_lake_storage_gen2
    ?additional_properties ?annotations ?description
    ?integration_runtime_name ?parameters ?service_principal_id
    ?service_principal_key ?storage_account_key ?tenant
    ?use_managed_identity ?timeouts ~data_factory_id ~name ~url
    __resource_id =
  let __resource_type =
    "azurerm_data_factory_linked_service_data_lake_storage_gen2"
  in
  let __resource =
    {
      additional_properties;
      annotations;
      data_factory_id;
      description;
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_linked_service_data_lake_storage_gen2
       __resource);
  ()
