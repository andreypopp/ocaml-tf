(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_source_control__security = {
  refresh_token : string prop option; [@option]  (** refresh_token *)
  token : string prop;  (** token *)
  token_type : string prop;  (** token_type *)
}
[@@deriving yojson_of]
(** azurerm_automation_source_control__security *)

type azurerm_automation_source_control__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_source_control__timeouts *)

type azurerm_automation_source_control = {
  automatic_sync : bool prop option; [@option]  (** automatic_sync *)
  automation_account_id : string prop;  (** automation_account_id *)
  branch : string prop option; [@option]  (** branch *)
  description : string prop option; [@option]  (** description *)
  folder_path : string prop;  (** folder_path *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  publish_runbook_enabled : bool prop option; [@option]
      (** publish_runbook_enabled *)
  repository_url : string prop;  (** repository_url *)
  source_control_type : string prop;  (** source_control_type *)
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
