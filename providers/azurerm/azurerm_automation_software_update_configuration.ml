(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type linux = {
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
(** linux *)

type post_task = {
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  source : string prop option; [@option]  (** source *)
}
[@@deriving yojson_of]
(** post_task *)

type pre_task = {
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  source : string prop option; [@option]  (** source *)
}
[@@deriving yojson_of]
(** pre_task *)

type schedule__monthly_occurrence = {
  day : string prop;  (** day *)
  occurrence : float prop;  (** occurrence *)
}
[@@deriving yojson_of]
(** schedule__monthly_occurrence *)

type schedule = {
  advanced_month_days : float prop list option; [@option]
      (** advanced_month_days *)
  advanced_week_days : string prop list option; [@option]
      (** advanced_week_days *)
  description : string prop option; [@option]  (** description *)
  expiry_time : string prop option; [@option]  (** expiry_time *)
  expiry_time_offset_minutes : float prop option; [@option]
      (** expiry_time_offset_minutes *)
  frequency : string prop;  (** frequency *)
  interval : float prop option; [@option]  (** interval *)
  is_enabled : bool prop option; [@option]  (** is_enabled *)
  next_run : string prop option; [@option]  (** next_run *)
  next_run_offset_minutes : float prop option; [@option]
      (** next_run_offset_minutes *)
  start_time : string prop option; [@option]  (** start_time *)
  start_time_offset_minutes : float prop option; [@option]
      (** start_time_offset_minutes *)
  time_zone : string prop option; [@option]  (** time_zone *)
  monthly_occurrence : schedule__monthly_occurrence list;
}
[@@deriving yojson_of]
(** schedule *)

type target__azure_query__tags = {
  tag : string prop;  (** tag *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** target__azure_query__tags *)

type target__azure_query = {
  locations : string prop list option; [@option]  (** locations *)
  scope : string prop list option; [@option]  (** scope *)
  tag_filter : string prop option; [@option]  (** tag_filter *)
  tags : target__azure_query__tags list;
}
[@@deriving yojson_of]
(** target__azure_query *)

type target__non_azure_query = {
  function_alias : string prop option; [@option]
      (** function_alias *)
  workspace_id : string prop option; [@option]  (** workspace_id *)
}
[@@deriving yojson_of]
(** target__non_azure_query *)

type target = {
  azure_query : target__azure_query list;
  non_azure_query : target__non_azure_query list;
}
[@@deriving yojson_of]
(** target *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type windows = {
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
(** windows *)

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
  linux : linux list;
  post_task : post_task list;
  pre_task : pre_task list;
  schedule : schedule list;
  target : target list;
  timeouts : timeouts option;
  windows : windows list;
}
[@@deriving yojson_of]
(** azurerm_automation_software_update_configuration *)

let linux ?classification_included ?classifications_included
    ?excluded_packages ?included_packages ?reboot () : linux =
  {
    classification_included;
    classifications_included;
    excluded_packages;
    included_packages;
    reboot;
  }

let post_task ?parameters ?source () : post_task =
  { parameters; source }

let pre_task ?parameters ?source () : pre_task =
  { parameters; source }

let schedule__monthly_occurrence ~day ~occurrence () :
    schedule__monthly_occurrence =
  { day; occurrence }

let schedule ?advanced_month_days ?advanced_week_days ?description
    ?expiry_time ?expiry_time_offset_minutes ?interval ?is_enabled
    ?next_run ?next_run_offset_minutes ?start_time
    ?start_time_offset_minutes ?time_zone ~frequency
    ~monthly_occurrence () : schedule =
  {
    advanced_month_days;
    advanced_week_days;
    description;
    expiry_time;
    expiry_time_offset_minutes;
    frequency;
    interval;
    is_enabled;
    next_run;
    next_run_offset_minutes;
    start_time;
    start_time_offset_minutes;
    time_zone;
    monthly_occurrence;
  }

let target__azure_query__tags ~tag ~values () :
    target__azure_query__tags =
  { tag; values }

let target__azure_query ?locations ?scope ?tag_filter ~tags () :
    target__azure_query =
  { locations; scope; tag_filter; tags }

let target__non_azure_query ?function_alias ?workspace_id () :
    target__non_azure_query =
  { function_alias; workspace_id }

let target ~azure_query ~non_azure_query () : target =
  { azure_query; non_azure_query }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let windows ?classification_included ?classifications_included
    ?excluded_knowledge_base_numbers ?included_knowledge_base_numbers
    ?reboot () : windows =
  {
    classification_included;
    classifications_included;
    excluded_knowledge_base_numbers;
    included_knowledge_base_numbers;
    reboot;
  }

let azurerm_automation_software_update_configuration ?duration ?id
    ?non_azure_computer_names ?operating_system ?virtual_machine_ids
    ?timeouts ~automation_account_id ~name ~linux ~post_task
    ~pre_task ~schedule ~target ~windows () :
    azurerm_automation_software_update_configuration =
  {
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

let register ?tf_module ?duration ?id ?non_azure_computer_names
    ?operating_system ?virtual_machine_ids ?timeouts
    ~automation_account_id ~name ~linux ~post_task ~pre_task
    ~schedule ~target ~windows __resource_id =
  let __resource_type =
    "azurerm_automation_software_update_configuration"
  in
  let __resource =
    azurerm_automation_software_update_configuration ?duration ?id
      ?non_azure_computer_names ?operating_system
      ?virtual_machine_ids ?timeouts ~automation_account_id ~name
      ~linux ~post_task ~pre_task ~schedule ~target ~windows ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
