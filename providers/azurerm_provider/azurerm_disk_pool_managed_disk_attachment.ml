(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_disk_pool_managed_disk_attachment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_disk_pool_managed_disk_attachment__timeouts *)

type azurerm_disk_pool_managed_disk_attachment = {
  disk_pool_id : string;  (** disk_pool_id *)
  managed_disk_id : string;  (** managed_disk_id *)
  timeouts :
    azurerm_disk_pool_managed_disk_attachment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_disk_pool_managed_disk_attachment *)

let azurerm_disk_pool_managed_disk_attachment ?timeouts ~disk_pool_id
    ~managed_disk_id __resource_id =
  let __resource_type =
    "azurerm_disk_pool_managed_disk_attachment"
  in
  let __resource = { disk_pool_id; managed_disk_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_disk_pool_managed_disk_attachment __resource);
  ()