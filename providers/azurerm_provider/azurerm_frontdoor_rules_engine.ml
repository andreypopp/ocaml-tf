(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_frontdoor_rules_engine__rule__action__request_header = {
  header_action_type : string option; [@option]
      (** header_action_type *)
  header_name : string option; [@option]  (** header_name *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** azurerm_frontdoor_rules_engine__rule__action__request_header *)

type azurerm_frontdoor_rules_engine__rule__action__response_header = {
  header_action_type : string option; [@option]
      (** header_action_type *)
  header_name : string option; [@option]  (** header_name *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** azurerm_frontdoor_rules_engine__rule__action__response_header *)

type azurerm_frontdoor_rules_engine__rule__action = {
  request_header :
    azurerm_frontdoor_rules_engine__rule__action__request_header list;
  response_header :
    azurerm_frontdoor_rules_engine__rule__action__response_header
    list;
}
[@@deriving yojson_of]
(** azurerm_frontdoor_rules_engine__rule__action *)

type azurerm_frontdoor_rules_engine__rule__match_condition = {
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string;  (** operator *)
  selector : string option; [@option]  (** selector *)
  transform : string list option; [@option]  (** transform *)
  value : string list option; [@option]  (** value *)
  variable : string option; [@option]  (** variable *)
}
[@@deriving yojson_of]
(** azurerm_frontdoor_rules_engine__rule__match_condition *)

type azurerm_frontdoor_rules_engine__rule = {
  name : string;  (** name *)
  priority : float;  (** priority *)
  action : azurerm_frontdoor_rules_engine__rule__action list;
  match_condition :
    azurerm_frontdoor_rules_engine__rule__match_condition list;
}
[@@deriving yojson_of]
(** azurerm_frontdoor_rules_engine__rule *)

type azurerm_frontdoor_rules_engine__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_frontdoor_rules_engine__timeouts *)

type azurerm_frontdoor_rules_engine = {
  enabled : bool option; [@option]  (** enabled *)
  frontdoor_name : string;  (** frontdoor_name *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  rule : azurerm_frontdoor_rules_engine__rule list;
  timeouts : azurerm_frontdoor_rules_engine__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_frontdoor_rules_engine *)

let azurerm_frontdoor_rules_engine ?enabled ?id ?timeouts
    ~frontdoor_name ~name ~resource_group_name ~rule __resource_id =
  let __resource_type = "azurerm_frontdoor_rules_engine" in
  let __resource =
    {
      enabled;
      frontdoor_name;
      id;
      name;
      resource_group_name;
      rule;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_frontdoor_rules_engine __resource);
  ()
