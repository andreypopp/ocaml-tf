(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_machine_learning_datastore_datalake_gen2__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_datastore_datalake_gen2__timeouts *)

type azurerm_machine_learning_datastore_datalake_gen2 = {
  client_id : string option; [@option]  (** client_id *)
  client_secret : string option; [@option]  (** client_secret *)
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  service_data_identity : string option; [@option]
      (** service_data_identity *)
  storage_container_id : string;  (** storage_container_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tenant_id : string option; [@option]  (** tenant_id *)
  workspace_id : string;  (** workspace_id *)
  timeouts :
    azurerm_machine_learning_datastore_datalake_gen2__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_machine_learning_datastore_datalake_gen2 *)

let azurerm_machine_learning_datastore_datalake_gen2 ?client_id
    ?client_secret ?description ?service_data_identity ?tags
    ?tenant_id ?timeouts ~name ~storage_container_id ~workspace_id
    __resource_id =
  let __resource_type =
    "azurerm_machine_learning_datastore_datalake_gen2"
  in
  let __resource =
    {
      client_id;
      client_secret;
      description;
      name;
      service_data_identity;
      storage_container_id;
      tags;
      tenant_id;
      workspace_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_machine_learning_datastore_datalake_gen2
       __resource);
  ()
