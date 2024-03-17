(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_security_center_automation__action = {
  connection_string : string prop option; [@option]
      (** connection_string *)
  resource_id : string prop;  (** resource_id *)
  trigger_url : string prop option; [@option]  (** trigger_url *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_security_center_automation__action *)

type azurerm_security_center_automation__source__rule_set__rule = {
  expected_value : string prop;  (** expected_value *)
  operator : string prop;  (** operator *)
  property_path : string prop;  (** property_path *)
  property_type : string prop;  (** property_type *)
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
  event_source : string prop;  (** event_source *)
  rule_set :
    azurerm_security_center_automation__source__rule_set list;
}
[@@deriving yojson_of]
(** azurerm_security_center_automation__source *)

type azurerm_security_center_automation__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_security_center_automation__timeouts *)

type azurerm_security_center_automation = {
  description : string prop option; [@option]  (** description *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  scopes : string prop list;  (** scopes *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  action : azurerm_security_center_automation__action list;
  source : azurerm_security_center_automation__source list;
  timeouts : azurerm_security_center_automation__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_security_center_automation *)

let azurerm_security_center_automation ?description ?enabled ?id
    ?tags ?timeouts ~location ~name ~resource_group_name ~scopes
    ~action ~source __resource_id =
  let __resource_type = "azurerm_security_center_automation" in
  let __resource =
    {
      description;
      enabled;
      id;
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
