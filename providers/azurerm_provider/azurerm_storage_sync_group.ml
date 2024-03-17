(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_sync_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_storage_sync_group__timeouts *)

type azurerm_storage_sync_group = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  storage_sync_id : string prop;  (** storage_sync_id *)
  timeouts : azurerm_storage_sync_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_sync_group *)

let azurerm_storage_sync_group ?id ?timeouts ~name ~storage_sync_id
    __resource_id =
  let __resource_type = "azurerm_storage_sync_group" in
  let __resource = { id; name; storage_sync_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_sync_group __resource);
  ()
