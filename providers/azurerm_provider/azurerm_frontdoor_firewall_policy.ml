(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_frontdoor_firewall_policy__custom_rule__match_condition = {
  match_values : string list;  (** match_values *)
  match_variable : string;  (** match_variable *)
  negation_condition : bool option; [@option]
      (** negation_condition *)
  operator : string;  (** operator *)
  selector : string option; [@option]  (** selector *)
  transforms : string list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** azurerm_frontdoor_firewall_policy__custom_rule__match_condition *)

type azurerm_frontdoor_firewall_policy__custom_rule = {
  action : string;  (** action *)
  enabled : bool option; [@option]  (** enabled *)
  name : string;  (** name *)
  priority : float option; [@option]  (** priority *)
  rate_limit_duration_in_minutes : float option; [@option]
      (** rate_limit_duration_in_minutes *)
  rate_limit_threshold : float option; [@option]
      (** rate_limit_threshold *)
  type_ : string; [@key "type"]  (** type *)
  match_condition :
    azurerm_frontdoor_firewall_policy__custom_rule__match_condition
    list;
}
[@@deriving yojson_of]
(** azurerm_frontdoor_firewall_policy__custom_rule *)

type azurerm_frontdoor_firewall_policy__managed_rule__exclusion = {
  match_variable : string;  (** match_variable *)
  operator : string;  (** operator *)
  selector : string;  (** selector *)
}
[@@deriving yojson_of]
(** azurerm_frontdoor_firewall_policy__managed_rule__exclusion *)

type azurerm_frontdoor_firewall_policy__managed_rule__override__exclusion = {
  match_variable : string;  (** match_variable *)
  operator : string;  (** operator *)
  selector : string;  (** selector *)
}
[@@deriving yojson_of]
(** azurerm_frontdoor_firewall_policy__managed_rule__override__exclusion *)

type azurerm_frontdoor_firewall_policy__managed_rule__override__rule__exclusion = {
  match_variable : string;  (** match_variable *)
  operator : string;  (** operator *)
  selector : string;  (** selector *)
}
[@@deriving yojson_of]
(** azurerm_frontdoor_firewall_policy__managed_rule__override__rule__exclusion *)

type azurerm_frontdoor_firewall_policy__managed_rule__override__rule = {
  action : string;  (** action *)
  enabled : bool option; [@option]  (** enabled *)
  rule_id : string;  (** rule_id *)
  exclusion :
    azurerm_frontdoor_firewall_policy__managed_rule__override__rule__exclusion
    list;
}
[@@deriving yojson_of]
(** azurerm_frontdoor_firewall_policy__managed_rule__override__rule *)

type azurerm_frontdoor_firewall_policy__managed_rule__override = {
  rule_group_name : string;  (** rule_group_name *)
  exclusion :
    azurerm_frontdoor_firewall_policy__managed_rule__override__exclusion
    list;
  rule :
    azurerm_frontdoor_firewall_policy__managed_rule__override__rule
    list;
}
[@@deriving yojson_of]
(** azurerm_frontdoor_firewall_policy__managed_rule__override *)

type azurerm_frontdoor_firewall_policy__managed_rule = {
  type_ : string; [@key "type"]  (** type *)
  version : string;  (** version *)
  exclusion :
    azurerm_frontdoor_firewall_policy__managed_rule__exclusion list;
  override :
    azurerm_frontdoor_firewall_policy__managed_rule__override list;
}
[@@deriving yojson_of]
(** azurerm_frontdoor_firewall_policy__managed_rule *)

type azurerm_frontdoor_firewall_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_frontdoor_firewall_policy__timeouts *)

type azurerm_frontdoor_firewall_policy = {
  custom_block_response_body : string option; [@option]
      (** custom_block_response_body *)
  custom_block_response_status_code : float option; [@option]
      (** custom_block_response_status_code *)
  enabled : bool option; [@option]  (** enabled *)
  mode : string option; [@option]  (** mode *)
  name : string;  (** name *)
  redirect_url : string option; [@option]  (** redirect_url *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  custom_rule : azurerm_frontdoor_firewall_policy__custom_rule list;
  managed_rule :
    azurerm_frontdoor_firewall_policy__managed_rule list;
  timeouts : azurerm_frontdoor_firewall_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_frontdoor_firewall_policy *)

let azurerm_frontdoor_firewall_policy ?custom_block_response_body
    ?custom_block_response_status_code ?enabled ?mode ?redirect_url
    ?tags ?timeouts ~name ~resource_group_name ~custom_rule
    ~managed_rule __resource_id =
  let __resource_type = "azurerm_frontdoor_firewall_policy" in
  let __resource =
    {
      custom_block_response_body;
      custom_block_response_status_code;
      enabled;
      mode;
      name;
      redirect_url;
      resource_group_name;
      tags;
      custom_rule;
      managed_rule;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_frontdoor_firewall_policy __resource);
  ()
