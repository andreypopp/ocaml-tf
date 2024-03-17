(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_logic_app_trigger_custom__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_trigger_custom__timeouts *)

type azurerm_logic_app_trigger_custom = {
  body : string;  (** body *)
  logic_app_id : string;  (** logic_app_id *)
  name : string;  (** name *)
  timeouts : azurerm_logic_app_trigger_custom__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_trigger_custom *)

let azurerm_logic_app_trigger_custom ?timeouts ~body ~logic_app_id
    ~name __resource_id =
  let __resource_type = "azurerm_logic_app_trigger_custom" in
  let __resource = { body; logic_app_id; name; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_logic_app_trigger_custom __resource);
  ()
