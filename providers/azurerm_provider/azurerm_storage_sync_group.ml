(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_sync_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_storage_sync_group__timeouts *)

type azurerm_storage_sync_group = {
  name : string;  (** name *)
  storage_sync_id : string;  (** storage_sync_id *)
  timeouts : azurerm_storage_sync_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_sync_group *)

let azurerm_storage_sync_group ?timeouts ~name ~storage_sync_id
    __resource_id =
  let __resource_type = "azurerm_storage_sync_group" in
  let __resource = { name; storage_sync_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_sync_group __resource);
  ()
