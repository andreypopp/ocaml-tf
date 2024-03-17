(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_management_lock__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_management_lock__timeouts *)

type azurerm_management_lock = {
  id : string prop option; [@option]  (** id *)
  lock_level : string prop;  (** lock_level *)
  name : string prop;  (** name *)
  notes : string prop option; [@option]  (** notes *)
  scope : string prop;  (** scope *)
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
