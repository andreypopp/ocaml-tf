(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_dsc_nodeconfiguration__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_dsc_nodeconfiguration__timeouts *)

type azurerm_automation_dsc_nodeconfiguration = {
  automation_account_name : string prop;
      (** automation_account_name *)
  content_embedded : string prop;  (** content_embedded *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts :
    azurerm_automation_dsc_nodeconfiguration__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_dsc_nodeconfiguration *)

type t = {
  automation_account_name : string prop;
  configuration_name : string prop;
  content_embedded : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let azurerm_automation_dsc_nodeconfiguration ?id ?timeouts
    ~automation_account_name ~content_embedded ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_automation_dsc_nodeconfiguration" in
  let __resource =
    ({
       automation_account_name;
       content_embedded;
       id;
       name;
       resource_group_name;
       timeouts;
     }
      : azurerm_automation_dsc_nodeconfiguration)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_dsc_nodeconfiguration __resource);
  let __resource_attributes =
    ({
       automation_account_name =
         Prop.computed __resource_type __resource_id
           "automation_account_name";
       configuration_name =
         Prop.computed __resource_type __resource_id
           "configuration_name";
       content_embedded =
         Prop.computed __resource_type __resource_id
           "content_embedded";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
     }
      : t)
  in
  __resource_attributes
