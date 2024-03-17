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

let azurerm_automation_hybrid_runbook_worker_group ?credential_name
    ?id ?timeouts ~automation_account_name ~name ~resource_group_name
    __resource_id =
  let __resource_type =
    "azurerm_automation_hybrid_runbook_worker_group"
  in
  let __resource =
    {
      automation_account_name;
      credential_name;
      id;
      name;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_hybrid_runbook_worker_group
       __resource);
  ()
