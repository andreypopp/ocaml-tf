(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cdn_frontdoor_firewall_policy__custom_rule__match_condition = {
  match_values : string prop list;  (** match_values *)
  match_variable : string prop;  (** match_variable *)
  negation_condition : bool prop option; [@option]
      (** negation_condition *)
  operator : string prop;  (** operator *)
  selector : string prop option; [@option]  (** selector *)
  transforms : string prop list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_firewall_policy__custom_rule__match_condition *)

type azurerm_cdn_frontdoor_firewall_policy__custom_rule = {
  action : string prop;  (** action *)
  enabled : bool prop option; [@option]  (** enabled *)
  name : string prop;  (** name *)
  priority : float prop option; [@option]  (** priority *)
  rate_limit_duration_in_minutes : float prop option; [@option]
      (** rate_limit_duration_in_minutes *)
  rate_limit_threshold : float prop option; [@option]
      (** rate_limit_threshold *)
  type_ : string prop; [@key "type"]  (** type *)
  match_condition :
    azurerm_cdn_frontdoor_firewall_policy__custom_rule__match_condition
    list;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_firewall_policy__custom_rule *)

type azurerm_cdn_frontdoor_firewall_policy__managed_rule__exclusion = {
  match_variable : string prop;  (** match_variable *)
  operator : string prop;  (** operator *)
  selector : string prop;  (** selector *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_firewall_policy__managed_rule__exclusion *)

type azurerm_cdn_frontdoor_firewall_policy__managed_rule__override__exclusion = {
  match_variable : string prop;  (** match_variable *)
  operator : string prop;  (** operator *)
  selector : string prop;  (** selector *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_firewall_policy__managed_rule__override__exclusion *)

type azurerm_cdn_frontdoor_firewall_policy__managed_rule__override__rule__exclusion = {
  match_variable : string prop;  (** match_variable *)
  operator : string prop;  (** operator *)
  selector : string prop;  (** selector *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_firewall_policy__managed_rule__override__rule__exclusion *)

type azurerm_cdn_frontdoor_firewall_policy__managed_rule__override__rule = {
  action : string prop;  (** action *)
  enabled : bool prop option; [@option]  (** enabled *)
  rule_id : string prop;  (** rule_id *)
  exclusion :
    azurerm_cdn_frontdoor_firewall_policy__managed_rule__override__rule__exclusion
    list;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_firewall_policy__managed_rule__override__rule *)

type azurerm_cdn_frontdoor_firewall_policy__managed_rule__override = {
  rule_group_name : string prop;  (** rule_group_name *)
  exclusion :
    azurerm_cdn_frontdoor_firewall_policy__managed_rule__override__exclusion
    list;
  rule :
    azurerm_cdn_frontdoor_firewall_policy__managed_rule__override__rule
    list;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_firewall_policy__managed_rule__override *)

type azurerm_cdn_frontdoor_firewall_policy__managed_rule = {
  action : string prop;  (** action *)
  type_ : string prop; [@key "type"]  (** type *)
  version : string prop;  (** version *)
  exclusion :
    azurerm_cdn_frontdoor_firewall_policy__managed_rule__exclusion
    list;
  override :
    azurerm_cdn_frontdoor_firewall_policy__managed_rule__override
    list;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_firewall_policy__managed_rule *)

type azurerm_cdn_frontdoor_firewall_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_firewall_policy__timeouts *)

type azurerm_cdn_frontdoor_firewall_policy = {
  custom_block_response_body : string prop option; [@option]
      (** custom_block_response_body *)
  custom_block_response_status_code : float prop option; [@option]
      (** custom_block_response_status_code *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  mode : string prop;  (** mode *)
  name : string prop;  (** name *)
  redirect_url : string prop option; [@option]  (** redirect_url *)
  request_body_check_enabled : bool prop option; [@option]
      (** request_body_check_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  custom_rule :
    azurerm_cdn_frontdoor_firewall_policy__custom_rule list;
  managed_rule :
    azurerm_cdn_frontdoor_firewall_policy__managed_rule list;
  timeouts : azurerm_cdn_frontdoor_firewall_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_firewall_policy *)

type t = {
  custom_block_response_body : string prop;
  custom_block_response_status_code : float prop;
  enabled : bool prop;
  frontend_endpoint_ids : string list prop;
  id : string prop;
  mode : string prop;
  name : string prop;
  redirect_url : string prop;
  request_body_check_enabled : bool prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

let azurerm_cdn_frontdoor_firewall_policy ?custom_block_response_body
    ?custom_block_response_status_code ?enabled ?id ?redirect_url
    ?request_body_check_enabled ?tags ?timeouts ~mode ~name
    ~resource_group_name ~sku_name ~custom_rule ~managed_rule
    __resource_id =
  let __resource_type = "azurerm_cdn_frontdoor_firewall_policy" in
  let __resource =
    ({
       custom_block_response_body;
       custom_block_response_status_code;
       enabled;
       id;
       mode;
       name;
       redirect_url;
       request_body_check_enabled;
       resource_group_name;
       sku_name;
       tags;
       custom_rule;
       managed_rule;
       timeouts;
     }
      : azurerm_cdn_frontdoor_firewall_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cdn_frontdoor_firewall_policy __resource);
  let __resource_attributes =
    ({
       custom_block_response_body =
         Prop.computed __resource_type __resource_id
           "custom_block_response_body";
       custom_block_response_status_code =
         Prop.computed __resource_type __resource_id
           "custom_block_response_status_code";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       frontend_endpoint_ids =
         Prop.computed __resource_type __resource_id
           "frontend_endpoint_ids";
       id = Prop.computed __resource_type __resource_id "id";
       mode = Prop.computed __resource_type __resource_id "mode";
       name = Prop.computed __resource_type __resource_id "name";
       redirect_url =
         Prop.computed __resource_type __resource_id "redirect_url";
       request_body_check_enabled =
         Prop.computed __resource_type __resource_id
           "request_body_check_enabled";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       sku_name =
         Prop.computed __resource_type __resource_id "sku_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
