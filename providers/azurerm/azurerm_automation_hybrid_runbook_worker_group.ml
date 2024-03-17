(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_hybrid_runbook_worker_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_hybrid_runbook_worker_group__timeouts *)

type azurerm_automation_hybrid_runbook_worker_group = {
  automation_account_name : string prop;
      (** automation_account_name *)
  credential_name : string prop option; [@option]
      (** credential_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts :
    azurerm_automation_hybrid_runbook_worker_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_hybrid_runbook_worker_group *)

type t = {
  automation_account_name : string prop;
  credential_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let azurerm_automation_hybrid_runbook_worker_group ?credential_name
    ?id ?timeouts ~automation_account_name ~name ~resource_group_name
    __resource_id =
  let __resource_type =
    "azurerm_automation_hybrid_runbook_worker_group"
  in
  let __resource =
    ({
       automation_account_name;
       credential_name;
       id;
       name;
       resource_group_name;
       timeouts;
     }
      : azurerm_automation_hybrid_runbook_worker_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_hybrid_runbook_worker_group
       __resource);
  let __resource_attributes =
    ({
       automation_account_name =
         Prop.computed __resource_type __resource_id
           "automation_account_name";
       credential_name =
         Prop.computed __resource_type __resource_id
           "credential_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
     }
      : t)
  in
  __resource_attributes
