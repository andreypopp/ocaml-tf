(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_storage_sync_cloud_endpoint__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_storage_sync_cloud_endpoint__timeouts *)

type azurerm_storage_sync_cloud_endpoint = {
  file_share_name : string;  (** file_share_name *)
  name : string;  (** name *)
  storage_account_id : string;  (** storage_account_id *)
  storage_sync_group_id : string;  (** storage_sync_group_id *)
  timeouts : azurerm_storage_sync_cloud_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_sync_cloud_endpoint *)

let azurerm_storage_sync_cloud_endpoint ?timeouts ~file_share_name
    ~name ~storage_account_id ~storage_sync_group_id __resource_id =
  let __resource_type = "azurerm_storage_sync_cloud_endpoint" in
  let __resource =
    {
      file_share_name;
      name;
      storage_account_id;
      storage_sync_group_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_sync_cloud_endpoint __resource);
  ()
