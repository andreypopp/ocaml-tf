(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_runbook__draft__content_link__hash = {
  algorithm : string;  (** algorithm *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_automation_runbook__draft__content_link__hash *)

type azurerm_automation_runbook__draft__content_link = {
  uri : string;  (** uri *)
  version : string option; [@option]  (** version *)
  hash : azurerm_automation_runbook__draft__content_link__hash list;
}
[@@deriving yojson_of]
(** azurerm_automation_runbook__draft__content_link *)

type azurerm_automation_runbook__draft__parameters = {
  default_value : string option; [@option]  (** default_value *)
  key : string;  (** key *)
  mandatory : bool option; [@option]  (** mandatory *)
  position : float option; [@option]  (** position *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_automation_runbook__draft__parameters *)

type azurerm_automation_runbook__draft = {
  creation_time : string;  (** creation_time *)
  edit_mode_enabled : bool option; [@option]
      (** edit_mode_enabled *)
  last_modified_time : string;  (** last_modified_time *)
  output_types : string list option; [@option]  (** output_types *)
  content_link :
    azurerm_automation_runbook__draft__content_link list;
  parameters : azurerm_automation_runbook__draft__parameters list;
}
[@@deriving yojson_of]
(** azurerm_automation_runbook__draft *)

type azurerm_automation_runbook__publish_content_link__hash = {
  algorithm : string;  (** algorithm *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_automation_runbook__publish_content_link__hash *)

type azurerm_automation_runbook__publish_content_link = {
  uri : string;  (** uri *)
  version : string option; [@option]  (** version *)
  hash : azurerm_automation_runbook__publish_content_link__hash list;
}
[@@deriving yojson_of]
(** azurerm_automation_runbook__publish_content_link *)

type azurerm_automation_runbook__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_runbook__timeouts *)

type azurerm_automation_runbook__job_schedule = {
  job_schedule_id : string;  (** job_schedule_id *)
  parameters : (string * string) list;  (** parameters *)
  run_on : string;  (** run_on *)
  schedule_name : string;  (** schedule_name *)
}
[@@deriving yojson_of]

type azurerm_automation_runbook = {
  automation_account_name : string;  (** automation_account_name *)
  description : string option; [@option]  (** description *)
  location : string;  (** location *)
  log_activity_trace_level : float option; [@option]
      (** log_activity_trace_level *)
  log_progress : bool;  (** log_progress *)
  log_verbose : bool;  (** log_verbose *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  runbook_type : string;  (** runbook_type *)
  tags : (string * string) list option; [@option]  (** tags *)
  draft : azurerm_automation_runbook__draft list;
  publish_content_link :
    azurerm_automation_runbook__publish_content_link list;
  timeouts : azurerm_automation_runbook__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_runbook *)

let azurerm_automation_runbook ?description ?log_activity_trace_level
    ?tags ?timeouts ~automation_account_name ~location ~log_progress
    ~log_verbose ~name ~resource_group_name ~runbook_type ~draft
    ~publish_content_link __resource_id =
  let __resource_type = "azurerm_automation_runbook" in
  let __resource =
    {
      automation_account_name;
      description;
      location;
      log_activity_trace_level;
      log_progress;
      log_verbose;
      name;
      resource_group_name;
      runbook_type;
      tags;
      draft;
      publish_content_link;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_runbook __resource);
  ()
