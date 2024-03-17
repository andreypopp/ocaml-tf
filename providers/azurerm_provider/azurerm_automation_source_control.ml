(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_source_control__security = {
  refresh_token : string option; [@option]  (** refresh_token *)
  token : string;  (** token *)
  token_type : string;  (** token_type *)
}
[@@deriving yojson_of]
(** azurerm_automation_source_control__security *)

type azurerm_automation_source_control__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_source_control__timeouts *)

type azurerm_automation_source_control = {
  automatic_sync : bool option; [@option]  (** automatic_sync *)
  automation_account_id : string;  (** automation_account_id *)
  branch : string option; [@option]  (** branch *)
  description : string option; [@option]  (** description *)
  folder_path : string;  (** folder_path *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  publish_runbook_enabled : bool option; [@option]
      (** publish_runbook_enabled *)
  repository_url : string;  (** repository_url *)
  source_control_type : string;  (** source_control_type *)
  security : azurerm_automation_source_control__security list;
  timeouts : azurerm_automation_source_control__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_source_control *)

let azurerm_automation_source_control ?automatic_sync ?branch
    ?description ?id ?publish_runbook_enabled ?timeouts
    ~automation_account_id ~folder_path ~name ~repository_url
    ~source_control_type ~security __resource_id =
  let __resource_type = "azurerm_automation_source_control" in
  let __resource =
    {
      automatic_sync;
      automation_account_id;
      branch;
      description;
      folder_path;
      id;
      name;
      publish_runbook_enabled;
      repository_url;
      source_control_type;
      security;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_source_control __resource);
  ()
