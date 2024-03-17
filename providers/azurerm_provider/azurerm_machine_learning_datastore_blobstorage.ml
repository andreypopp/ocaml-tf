(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_machine_learning_datastore_blobstorage__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_datastore_blobstorage__timeouts *)

type azurerm_machine_learning_datastore_blobstorage = {
  account_key : string option; [@option]  (** account_key *)
  description : string option; [@option]  (** description *)
  is_default : bool option; [@option]  (** is_default *)
  name : string;  (** name *)
  service_data_auth_identity : string option; [@option]
      (** service_data_auth_identity *)
  shared_access_signature : string option; [@option]
      (** shared_access_signature *)
  storage_container_id : string;  (** storage_container_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  workspace_id : string;  (** workspace_id *)
  timeouts :
    azurerm_machine_learning_datastore_blobstorage__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_machine_learning_datastore_blobstorage *)

let azurerm_machine_learning_datastore_blobstorage ?account_key
    ?description ?is_default ?service_data_auth_identity
    ?shared_access_signature ?tags ?timeouts ~name
    ~storage_container_id ~workspace_id __resource_id =
  let __resource_type =
    "azurerm_machine_learning_datastore_blobstorage"
  in
  let __resource =
    {
      account_key;
      description;
      is_default;
      name;
      service_data_auth_identity;
      shared_access_signature;
      storage_container_id;
      tags;
      workspace_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_machine_learning_datastore_blobstorage
       __resource);
  ()
