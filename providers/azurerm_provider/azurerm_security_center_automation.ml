(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_security_center_automation__action = {
  connection_string : string option; [@option]
      (** connection_string *)
  resource_id : string;  (** resource_id *)
  trigger_url : string option; [@option]  (** trigger_url *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_security_center_automation__action *)

type azurerm_security_center_automation__source__rule_set__rule = {
  expected_value : string;  (** expected_value *)
  operator : string;  (** operator *)
  property_path : string;  (** property_path *)
  property_type : string;  (** property_type *)
}
[@@deriving yojson_of]
(** azurerm_security_center_automation__source__rule_set__rule *)

type azurerm_security_center_automation__source__rule_set = {
  rule :
    azurerm_security_center_automation__source__rule_set__rule list;
}
[@@deriving yojson_of]
(** azurerm_security_center_automation__source__rule_set *)

type azurerm_security_center_automation__source = {
  event_source : string;  (** event_source *)
  rule_set :
    azurerm_security_center_automation__source__rule_set list;
}
[@@deriving yojson_of]
(** azurerm_security_center_automation__source *)

type azurerm_security_center_automation__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_security_center_automation__timeouts *)

type azurerm_security_center_automation = {
  description : string option; [@option]  (** description *)
  enabled : bool option; [@option]  (** enabled *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  scopes : string list;  (** scopes *)
  tags : (string * string) list option; [@option]  (** tags *)
  action : azurerm_security_center_automation__action list;
  source : azurerm_security_center_automation__source list;
  timeouts : azurerm_security_center_automation__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_security_center_automation *)

let azurerm_security_center_automation ?description ?enabled ?tags
    ?timeouts ~location ~name ~resource_group_name ~scopes ~action
    ~source __resource_id =
  let __resource_type = "azurerm_security_center_automation" in
  let __resource =
    {
      description;
      enabled;
      location;
      name;
      resource_group_name;
      scopes;
      tags;
      action;
      source;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_security_center_automation __resource);
  ()
