(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_management_lock__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_management_lock__timeouts *)

type azurerm_management_lock = {
  id : string option; [@option]  (** id *)
  lock_level : string;  (** lock_level *)
  name : string;  (** name *)
  notes : string option; [@option]  (** notes *)
  scope : string;  (** scope *)
  timeouts : azurerm_management_lock__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_management_lock *)

let azurerm_management_lock ?id ?notes ?timeouts ~lock_level ~name
    ~scope __resource_id =
  let __resource_type = "azurerm_management_lock" in
  let __resource =
    { id; lock_level; name; notes; scope; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_management_lock __resource);
  ()
