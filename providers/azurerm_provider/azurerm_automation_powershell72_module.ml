(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_powershell72_module__module_link__hash = {
  algorithm : string prop;  (** algorithm *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_automation_powershell72_module__module_link__hash *)

type azurerm_automation_powershell72_module__module_link = {
  uri : string prop;  (** uri *)
  hash :
    azurerm_automation_powershell72_module__module_link__hash list;
}
[@@deriving yojson_of]
(** azurerm_automation_powershell72_module__module_link *)

type azurerm_automation_powershell72_module__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_powershell72_module__timeouts *)

type azurerm_automation_powershell72_module = {
  automation_account_id : string prop;  (** automation_account_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  module_link :
    azurerm_automation_powershell72_module__module_link list;
  timeouts : azurerm_automation_powershell72_module__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_powershell72_module *)

let azurerm_automation_powershell72_module ?id ?timeouts
    ~automation_account_id ~name ~module_link __resource_id =
  let __resource_type = "azurerm_automation_powershell72_module" in
  let __resource =
    { automation_account_id; id; name; module_link; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_powershell72_module __resource);
  ()
