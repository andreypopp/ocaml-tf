(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_automation_dsc_nodeconfiguration__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_dsc_nodeconfiguration__timeouts *)

type azurerm_automation_dsc_nodeconfiguration = {
  automation_account_name : string;  (** automation_account_name *)
  content_embedded : string;  (** content_embedded *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  timeouts :
    azurerm_automation_dsc_nodeconfiguration__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_dsc_nodeconfiguration *)

let azurerm_automation_dsc_nodeconfiguration ?timeouts
    ~automation_account_name ~content_embedded ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_automation_dsc_nodeconfiguration" in
  let __resource =
    {
      automation_account_name;
      content_embedded;
      name;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_dsc_nodeconfiguration __resource);
  ()