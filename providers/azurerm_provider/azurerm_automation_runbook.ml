(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_runbook__draft__content_link__hash = {
  algorithm : string prop;  (** algorithm *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_automation_runbook__draft__content_link__hash *)

type azurerm_automation_runbook__draft__content_link = {
  uri : string prop;  (** uri *)
  version : string prop option; [@option]  (** version *)
  hash : azurerm_automation_runbook__draft__content_link__hash list;
}
[@@deriving yojson_of]
(** azurerm_automation_runbook__draft__content_link *)

type azurerm_automation_runbook__draft__parameters = {
  default_value : string prop option; [@option]  (** default_value *)
  key : string prop;  (** key *)
  mandatory : bool prop option; [@option]  (** mandatory *)
  position : float prop option; [@option]  (** position *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_automation_runbook__draft__parameters *)

type azurerm_automation_runbook__draft = {
  creation_time : string prop;  (** creation_time *)
  edit_mode_enabled : bool prop option; [@option]
      (** edit_mode_enabled *)
  last_modified_time : string prop;  (** last_modified_time *)
  output_types : string prop list option; [@option]
      (** output_types *)
  content_link :
    azurerm_automation_runbook__draft__content_link list;
  parameters : azurerm_automation_runbook__draft__parameters list;
}
[@@deriving yojson_of]
(** azurerm_automation_runbook__draft *)

type azurerm_automation_runbook__publish_content_link__hash = {
  algorithm : string prop;  (** algorithm *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_automation_runbook__publish_content_link__hash *)

type azurerm_automation_runbook__publish_content_link = {
  uri : string prop;  (** uri *)
  version : string prop option; [@option]  (** version *)
  hash : azurerm_automation_runbook__publish_content_link__hash list;
}
[@@deriving yojson_of]
(** azurerm_automation_runbook__publish_content_link *)

type azurerm_automation_runbook__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_runbook__timeouts *)

type azurerm_automation_runbook__job_schedule = {
  job_schedule_id : string prop;  (** job_schedule_id *)
  parameters : (string * string prop) list;  (** parameters *)
  run_on : string prop;  (** run_on *)
  schedule_name : string prop;  (** schedule_name *)
}
[@@deriving yojson_of]

type azurerm_automation_runbook = {
  automation_account_name : string prop;
      (** automation_account_name *)
  content : string prop option; [@option]  (** content *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  job_schedule :
    azurerm_automation_runbook__job_schedule list option;
      [@option]
      (** job_schedule *)
  location : string prop;  (** location *)
  log_activity_trace_level : float prop option; [@option]
      (** log_activity_trace_level *)
  log_progress : bool prop;  (** log_progress *)
  log_verbose : bool prop;  (** log_verbose *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  runbook_type : string prop;  (** runbook_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  draft : azurerm_automation_runbook__draft list;
  publish_content_link :
    azurerm_automation_runbook__publish_content_link list;
  timeouts : azurerm_automation_runbook__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_runbook *)

let azurerm_automation_runbook ?content ?description ?id
    ?job_schedule ?log_activity_trace_level ?tags ?timeouts
    ~automation_account_name ~location ~log_progress ~log_verbose
    ~name ~resource_group_name ~runbook_type ~draft
    ~publish_content_link __resource_id =
  let __resource_type = "azurerm_automation_runbook" in
  let __resource =
    {
      automation_account_name;
      content;
      description;
      id;
      job_schedule;
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
