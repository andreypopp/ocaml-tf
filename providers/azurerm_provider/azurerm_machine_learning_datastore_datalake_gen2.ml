(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_machine_learning_datastore_datalake_gen2__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_datastore_datalake_gen2__timeouts *)

type azurerm_machine_learning_datastore_datalake_gen2 = {
  authority_url : string prop option; [@option]  (** authority_url *)
  client_id : string prop option; [@option]  (** client_id *)
  client_secret : string prop option; [@option]  (** client_secret *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  service_data_identity : string prop option; [@option]
      (** service_data_identity *)
  storage_container_id : string prop;  (** storage_container_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tenant_id : string prop option; [@option]  (** tenant_id *)
  workspace_id : string prop;  (** workspace_id *)
  timeouts :
    azurerm_machine_learning_datastore_datalake_gen2__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_machine_learning_datastore_datalake_gen2 *)

let azurerm_machine_learning_datastore_datalake_gen2 ?authority_url
    ?client_id ?client_secret ?description ?id ?service_data_identity
    ?tags ?tenant_id ?timeouts ~name ~storage_container_id
    ~workspace_id __resource_id =
  let __resource_type =
    "azurerm_machine_learning_datastore_datalake_gen2"
  in
  let __resource =
    {
      authority_url;
      client_id;
      client_secret;
      description;
      id;
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
