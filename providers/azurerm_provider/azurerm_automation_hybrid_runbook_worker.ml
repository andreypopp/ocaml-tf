(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_hybrid_runbook_worker__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_automation_hybrid_runbook_worker__timeouts *)

type azurerm_automation_hybrid_runbook_worker = {
  automation_account_name : string prop;
      (** automation_account_name *)
  id : string prop option; [@option]  (** id *)
  resource_group_name : string prop;  (** resource_group_name *)
  vm_resource_id : string prop;  (** vm_resource_id *)
  worker_group_name : string prop;  (** worker_group_name *)
  worker_id : string prop;  (** worker_id *)
  timeouts :
    azurerm_automation_hybrid_runbook_worker__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_hybrid_runbook_worker *)

let azurerm_automation_hybrid_runbook_worker ?id ?timeouts
    ~automation_account_name ~resource_group_name ~vm_resource_id
    ~worker_group_name ~worker_id __resource_id =
  let __resource_type = "azurerm_automation_hybrid_runbook_worker" in
  let __resource =
    {
      automation_account_name;
      id;
      resource_group_name;
      vm_resource_id;
      worker_group_name;
      worker_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_hybrid_runbook_worker __resource);
  ()
