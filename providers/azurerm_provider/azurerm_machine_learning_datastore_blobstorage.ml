(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_machine_learning_datastore_blobstorage__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_datastore_blobstorage__timeouts *)

type azurerm_machine_learning_datastore_blobstorage = {
  account_key : string prop option; [@option]  (** account_key *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  is_default : bool prop option; [@option]  (** is_default *)
  name : string prop;  (** name *)
  service_data_auth_identity : string prop option; [@option]
      (** service_data_auth_identity *)
  shared_access_signature : string prop option; [@option]
      (** shared_access_signature *)
  storage_container_id : string prop;  (** storage_container_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  workspace_id : string prop;  (** workspace_id *)
  timeouts :
    azurerm_machine_learning_datastore_blobstorage__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_machine_learning_datastore_blobstorage *)

let azurerm_machine_learning_datastore_blobstorage ?account_key
    ?description ?id ?is_default ?service_data_auth_identity
    ?shared_access_signature ?tags ?timeouts ~name
    ~storage_container_id ~workspace_id __resource_id =
  let __resource_type =
    "azurerm_machine_learning_datastore_blobstorage"
  in
  let __resource =
    {
      account_key;
      description;
      id;
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
