(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_automation_software_update_configuration__linux = {
  classification_included : string option; [@option]
      (** classification_included *)
  classifications_included : string list option; [@option]
      (** classifications_included *)
  excluded_packages : string list option; [@option]
      (** excluded_packages *)
  included_packages : string list option; [@option]
      (** included_packages *)
  reboot : string option; [@option]  (** reboot *)
}
[@@deriving yojson_of]
(** azurerm_automation_software_update_configuration__linux *)

type azurerm_automation_software_update_configuration__post_task = {
  parameters : (string * string) list option; [@option]
      (** parameters *)
  source : string option; [@option]  (** source *)
}
[@@deriving yojson_of]
(** azurerm_automation_software_update_configuration__post_task *)

type azurerm_automation_software_update_configuration__pre_task = {
  parameters : (string * string) list option; [@option]
      (** parameters *)
  source : string option; [@option]  (** source *)
}
[@@deriving yojson_of]
(** azurerm_automation_software_update_configuration__pre_task *)

type azurerm_automation_software_update_configuration__schedule__monthly_occurrence = {
  day : string;  (** day *)
  occurrence : float;  (** occurrence *)
}
[@@deriving yojson_of]
(** azurerm_automation_software_update_configuration__schedule__monthly_occurrence *)

type azurerm_automation_software_update_configuration__schedule = {
  advanced_month_days : float list option; [@option]
      (** advanced_month_days *)
  advanced_week_days : string list option; [@option]
      (** advanced_week_days *)
  creation_time : string;  (** creation_time *)
  description : string option; [@option]  (** description *)
  expiry_time : string option; [@option]  (** expiry_time *)
  expiry_time_offset_minutes : float option; [@option]
      (** expiry_time_offset_minutes *)
  frequency : string;  (** frequency *)
  interval : float option; [@option]  (** interval *)
  is_enabled : bool option; [@option]  (** is_enabled *)
  last_modified_time : string;  (** last_modified_time *)
  next_run : string option; [@option]  (** next_run *)
  next_run_offset_minutes : float option; [@option]
      (** next_run_offset_minutes *)
  start_time : string option; [@option]  (** start_time *)
  start_time_offset_minutes : float option; [@option]
      (** start_time_offset_minutes *)
  time_zone : string option; [@option]  (** time_zone *)
  monthly_occurrence :
    azurerm_automation_software_update_configuration__schedule__monthly_occurrence
    list;
}
[@@deriving yojson_of]
(** azurerm_automation_software_update_configuration__schedule *)

type azurerm_automation_software_update_configuration__target__azure_query__tags = {
  tag : string;  (** tag *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_automation_software_update_configuration__target__azure_query__tags *)

type azurerm_automation_software_update_configuration__target__azure_query = {
  locations : string list option; [@option]  (** locations *)
  scope : string list option; [@option]  (** scope *)
  tag_filter : string option; [@option]  (** tag_filter *)
  tags :
    azurerm_automation_software_update_configuration__target__azure_query__tags
    list;
}
[@@deriving yojson_of]
(** azurerm_automation_software_update_configuration__target__azure_query *)

type azurerm_automation_software_update_configuration__target__non_azure_query = {
  function_alias : string option; [@option]  (** function_alias *)
  workspace_id : string option; [@option]  (** workspace_id *)
}
[@@deriving yojson_of]
(** azurerm_automation_software_update_configuration__target__non_azure_query *)

type azurerm_automation_software_update_configuration__target = {
  azure_query :
    azurerm_automation_software_update_configuration__target__azure_query
    list;
  non_azure_query :
    azurerm_automation_software_update_configuration__target__non_azure_query
    list;
}
[@@deriving yojson_of]
(** azurerm_automation_software_update_configuration__target *)

type azurerm_automation_software_update_configuration__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_software_update_configuration__timeouts *)

type azurerm_automation_software_update_configuration__windows = {
  classification_included : string option; [@option]
      (** classification_included *)
  classifications_included : string list option; [@option]
      (** classifications_included *)
  excluded_knowledge_base_numbers : string list option; [@option]
      (** excluded_knowledge_base_numbers *)
  included_knowledge_base_numbers : string list option; [@option]
      (** included_knowledge_base_numbers *)
  reboot : string option; [@option]  (** reboot *)
}
[@@deriving yojson_of]
(** azurerm_automation_software_update_configuration__windows *)

type azurerm_automation_software_update_configuration = {
  automation_account_id : string;  (** automation_account_id *)
  duration : string option; [@option]  (** duration *)
  name : string;  (** name *)
  non_azure_computer_names : string list option; [@option]
      (** non_azure_computer_names *)
  virtual_machine_ids : string list option; [@option]
      (** virtual_machine_ids *)
  linux :
    azurerm_automation_software_update_configuration__linux list;
  post_task :
    azurerm_automation_software_update_configuration__post_task list;
  pre_task :
    azurerm_automation_software_update_configuration__pre_task list;
  schedule :
    azurerm_automation_software_update_configuration__schedule list;
  target :
    azurerm_automation_software_update_configuration__target list;
  timeouts :
    azurerm_automation_software_update_configuration__timeouts option;
  windows :
    azurerm_automation_software_update_configuration__windows list;
}
[@@deriving yojson_of]
(** azurerm_automation_software_update_configuration *)

let azurerm_automation_software_update_configuration ?duration
    ?non_azure_computer_names ?virtual_machine_ids ?timeouts
    ~automation_account_id ~name ~linux ~post_task ~pre_task
    ~schedule ~target ~windows __resource_id =
  let __resource_type =
    "azurerm_automation_software_update_configuration"
  in
  let __resource =
    {
      automation_account_id;
      duration;
      name;
      non_azure_computer_names;
      virtual_machine_ids;
      linux;
      post_task;
      pre_task;
      schedule;
      target;
      timeouts;
      windows;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_software_update_configuration
       __resource);
  ()
