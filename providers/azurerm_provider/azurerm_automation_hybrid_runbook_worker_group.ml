(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_hybrid_runbook_worker_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_hybrid_runbook_worker_group__timeouts *)

type azurerm_automation_hybrid_runbook_worker_group = {
  automation_account_name : string;  (** automation_account_name *)
  credential_name : string option; [@option]  (** credential_name *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
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
