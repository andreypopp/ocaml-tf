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

type t = {
  authority_url : string prop;
  client_id : string prop;
  client_secret : string prop;
  description : string prop;
  id : string prop;
  is_default : bool prop;
  name : string prop;
  service_data_identity : string prop;
  storage_container_id : string prop;
  tags : (string * string) list prop;
  tenant_id : string prop;
  workspace_id : string prop;
}

let azurerm_machine_learning_datastore_datalake_gen2 ?authority_url
    ?client_id ?client_secret ?description ?id ?service_data_identity
    ?tags ?tenant_id ?timeouts ~name ~storage_container_id
    ~workspace_id __resource_id =
  let __resource_type =
    "azurerm_machine_learning_datastore_datalake_gen2"
  in
  let __resource =
    ({
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
      : azurerm_machine_learning_datastore_datalake_gen2)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_machine_learning_datastore_datalake_gen2
       __resource);
  let __resource_attributes =
    ({
       authority_url =
         Prop.computed __resource_type __resource_id "authority_url";
       client_id =
         Prop.computed __resource_type __resource_id "client_id";
       client_secret =
         Prop.computed __resource_type __resource_id "client_secret";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       is_default =
         Prop.computed __resource_type __resource_id "is_default";
       name = Prop.computed __resource_type __resource_id "name";
       service_data_identity =
         Prop.computed __resource_type __resource_id
           "service_data_identity";
       storage_container_id =
         Prop.computed __resource_type __resource_id
           "storage_container_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tenant_id =
         Prop.computed __resource_type __resource_id "tenant_id";
       workspace_id =
         Prop.computed __resource_type __resource_id "workspace_id";
     }
      : t)
  in
  __resource_attributes
