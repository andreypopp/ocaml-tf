(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_software_update_configuration__linux = {
  classification_included : string prop option; [@option]
      (** classification_included *)
  classifications_included : string prop list option; [@option]
      (** classifications_included *)
  excluded_packages : string prop list option; [@option]
      (** excluded_packages *)
  included_packages : string prop list option; [@option]
      (** included_packages *)
  reboot : string prop option; [@option]  (** reboot *)
}
[@@deriving yojson_of]
(** azurerm_automation_software_update_configuration__linux *)

type azurerm_automation_software_update_configuration__post_task = {
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  source : string prop option; [@option]  (** source *)
}
[@@deriving yojson_of]
(** azurerm_automation_software_update_configuration__post_task *)

type azurerm_automation_software_update_configuration__pre_task = {
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  source : string prop option; [@option]  (** source *)
}
[@@deriving yojson_of]
(** azurerm_automation_software_update_configuration__pre_task *)

type azurerm_automation_software_update_configuration__schedule__monthly_occurrence = {
  day : string prop;  (** day *)
  occurrence : float prop;  (** occurrence *)
}
[@@deriving yojson_of]
(** azurerm_automation_software_update_configuration__schedule__monthly_occurrence *)

type azurerm_automation_software_update_configuration__schedule = {
  advanced_month_days : float prop list option; [@option]
      (** advanced_month_days *)
  advanced_week_days : string prop list option; [@option]
      (** advanced_week_days *)
  creation_time : string prop;  (** creation_time *)
  description : string prop option; [@option]  (** description *)
  expiry_time : string prop option; [@option]  (** expiry_time *)
  expiry_time_offset_minutes : float prop option; [@option]
      (** expiry_time_offset_minutes *)
  frequency : string prop;  (** frequency *)
  interval : float prop option; [@option]  (** interval *)
  is_enabled : bool prop option; [@option]  (** is_enabled *)
  last_modified_time : string prop;  (** last_modified_time *)
  next_run : string prop option; [@option]  (** next_run *)
  next_run_offset_minutes : float prop option; [@option]
      (** next_run_offset_minutes *)
  start_time : string prop option; [@option]  (** start_time *)
  start_time_offset_minutes : float prop option; [@option]
      (** start_time_offset_minutes *)
  time_zone : string prop option; [@option]  (** time_zone *)
  monthly_occurrence :
    azurerm_automation_software_update_configuration__schedule__monthly_occurrence
    list;
}
[@@deriving yojson_of]
(** azurerm_automation_software_update_configuration__schedule *)

type azurerm_automation_software_update_configuration__target__azure_query__tags = {
  tag : string prop;  (** tag *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_automation_software_update_configuration__target__azure_query__tags *)

type azurerm_automation_software_update_configuration__target__azure_query = {
  locations : string prop list option; [@option]  (** locations *)
  scope : string prop list option; [@option]  (** scope *)
  tag_filter : string prop option; [@option]  (** tag_filter *)
  tags :
    azurerm_automation_software_update_configuration__target__azure_query__tags
    list;
}
[@@deriving yojson_of]
(** azurerm_automation_software_update_configuration__target__azure_query *)

type azurerm_automation_software_update_configuration__target__non_azure_query = {
  function_alias : string prop option; [@option]
      (** function_alias *)
  workspace_id : string prop option; [@option]  (** workspace_id *)
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
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_software_update_configuration__timeouts *)

type azurerm_automation_software_update_configuration__windows = {
  classification_included : string prop option; [@option]
      (** classification_included *)
  classifications_included : string prop list option; [@option]
      (** classifications_included *)
  excluded_knowledge_base_numbers : string prop list option;
      [@option]
      (** excluded_knowledge_base_numbers *)
  included_knowledge_base_numbers : string prop list option;
      [@option]
      (** included_knowledge_base_numbers *)
  reboot : string prop option; [@option]  (** reboot *)
}
[@@deriving yojson_of]
(** azurerm_automation_software_update_configuration__windows *)

type azurerm_automation_software_update_configuration = {
  automation_account_id : string prop;  (** automation_account_id *)
  duration : string prop option; [@option]  (** duration *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  non_azure_computer_names : string prop list option; [@option]
      (** non_azure_computer_names *)
  operating_system : string prop option; [@option]
      (** operating_system *)
  virtual_machine_ids : string prop list option; [@option]
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

type t = {
  automation_account_id : string prop;
  duration : string prop;
  error_code : string prop;
  error_meesage : string prop;
  error_message : string prop;
  id : string prop;
  name : string prop;
  non_azure_computer_names : string list prop;
  operating_system : string prop;
  virtual_machine_ids : string list prop;
}

let azurerm_automation_software_update_configuration ?duration ?id
    ?non_azure_computer_names ?operating_system ?virtual_machine_ids
    ?timeouts ~automation_account_id ~name ~linux ~post_task
    ~pre_task ~schedule ~target ~windows __resource_id =
  let __resource_type =
    "azurerm_automation_software_update_configuration"
  in
  let __resource =
    ({
       automation_account_id;
       duration;
       id;
       name;
       non_azure_computer_names;
       operating_system;
       virtual_machine_ids;
       linux;
       post_task;
       pre_task;
       schedule;
       target;
       timeouts;
       windows;
     }
      : azurerm_automation_software_update_configuration)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_software_update_configuration
       __resource);
  let __resource_attributes =
    ({
       automation_account_id =
         Prop.computed __resource_type __resource_id
           "automation_account_id";
       duration =
         Prop.computed __resource_type __resource_id "duration";
       error_code =
         Prop.computed __resource_type __resource_id "error_code";
       error_meesage =
         Prop.computed __resource_type __resource_id "error_meesage";
       error_message =
         Prop.computed __resource_type __resource_id "error_message";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       non_azure_computer_names =
         Prop.computed __resource_type __resource_id
           "non_azure_computer_names";
       operating_system =
         Prop.computed __resource_type __resource_id
           "operating_system";
       virtual_machine_ids =
         Prop.computed __resource_type __resource_id
           "virtual_machine_ids";
     }
      : t)
  in
  __resource_attributes
