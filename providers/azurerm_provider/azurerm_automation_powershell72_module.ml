(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_powershell72_module__module_link__hash = {
  algorithm : string;  (** algorithm *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_automation_powershell72_module__module_link__hash *)

type azurerm_automation_powershell72_module__module_link = {
  uri : string;  (** uri *)
  hash :
    azurerm_automation_powershell72_module__module_link__hash list;
}
[@@deriving yojson_of]
(** azurerm_automation_powershell72_module__module_link *)

type azurerm_automation_powershell72_module__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_powershell72_module__timeouts *)

type azurerm_automation_powershell72_module = {
  automation_account_id : string;  (** automation_account_id *)
  name : string;  (** name *)
  module_link :
    azurerm_automation_powershell72_module__module_link list;
  timeouts : azurerm_automation_powershell72_module__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_powershell72_module *)

let azurerm_automation_powershell72_module ?timeouts
    ~automation_account_id ~name ~module_link __resource_id =
  let __resource_type = "azurerm_automation_powershell72_module" in
  let __resource =
    { automation_account_id; name; module_link; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_powershell72_module __resource);
  ()
