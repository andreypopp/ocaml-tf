(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_management_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_management_group__timeouts *)

type azurerm_management_group = {
  timeouts : azurerm_management_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_management_group *)

let azurerm_management_group ?timeouts __resource_id =
  let __resource_type = "azurerm_management_group" in
  let __resource = { timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_management_group __resource);
  ()
