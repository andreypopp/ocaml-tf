(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_container_app_environment_storage__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_container_app_environment_storage__timeouts *)

type azurerm_container_app_environment_storage = {
  access_key : string;  (** The Storage Account Access Key. *)
  access_mode : string;
      (** The access mode to connect this storage to the Container App. Possible values include `ReadOnly` and `ReadWrite`. *)
  account_name : string;
      (** The Azure Storage Account in which the Share to be used is located. *)
  container_app_environment_id : string;
      (** The ID of the Container App Environment to which this storage belongs. *)
  name : string;  (** The name for this Storage. *)
  share_name : string;
      (** The name of the Azure Storage Share to use. *)
  timeouts :
    azurerm_container_app_environment_storage__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_container_app_environment_storage *)

let azurerm_container_app_environment_storage ?timeouts ~access_key
    ~access_mode ~account_name ~container_app_environment_id ~name
    ~share_name __resource_id =
  let __resource_type =
    "azurerm_container_app_environment_storage"
  in
  let __resource =
    {
      access_key;
      access_mode;
      account_name;
      container_app_environment_id;
      name;
      share_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_container_app_environment_storage __resource);
  ()
