(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_automation_webhook = {
  automation_account_name : string prop;
      (** automation_account_name *)
  enabled : bool prop option; [@option]  (** enabled *)
  expiry_time : string prop;  (** expiry_time *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  resource_group_name : string prop;  (** resource_group_name *)
  run_on_worker_group : string prop option; [@option]
      (** run_on_worker_group *)
  runbook_name : string prop;  (** runbook_name *)
  uri : string prop option; [@option]  (** uri *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_webhook *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_automation_webhook ?enabled ?id ?parameters
    ?run_on_worker_group ?uri ?timeouts ~automation_account_name
    ~expiry_time ~name ~resource_group_name ~runbook_name () :
    azurerm_automation_webhook =
  {
    automation_account_name;
    enabled;
    expiry_time;
    id;
    name;
    parameters;
    resource_group_name;
    run_on_worker_group;
    runbook_name;
    uri;
    timeouts;
  }

type t = {
  automation_account_name : string prop;
  enabled : bool prop;
  expiry_time : string prop;
  id : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  resource_group_name : string prop;
  run_on_worker_group : string prop;
  runbook_name : string prop;
  uri : string prop;
}

let register ?tf_module ?enabled ?id ?parameters ?run_on_worker_group
    ?uri ?timeouts ~automation_account_name ~expiry_time ~name
    ~resource_group_name ~runbook_name __resource_id =
  let __resource_type = "azurerm_automation_webhook" in
  let __resource =
    azurerm_automation_webhook ?enabled ?id ?parameters
      ?run_on_worker_group ?uri ?timeouts ~automation_account_name
      ~expiry_time ~name ~resource_group_name ~runbook_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_webhook __resource);
  let __resource_attributes =
    ({
       automation_account_name =
         Prop.computed __resource_type __resource_id
           "automation_account_name";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       expiry_time =
         Prop.computed __resource_type __resource_id "expiry_time";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       parameters =
         Prop.computed __resource_type __resource_id "parameters";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       run_on_worker_group =
         Prop.computed __resource_type __resource_id
           "run_on_worker_group";
       runbook_name =
         Prop.computed __resource_type __resource_id "runbook_name";
       uri = Prop.computed __resource_type __resource_id "uri";
     }
      : t)
  in
  __resource_attributes
