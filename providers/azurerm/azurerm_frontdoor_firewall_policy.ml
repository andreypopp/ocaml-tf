(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type custom_rule__match_condition = {
  match_values : string prop list;  (** match_values *)
  match_variable : string prop;  (** match_variable *)
  negation_condition : bool prop option; [@option]
      (** negation_condition *)
  operator : string prop;  (** operator *)
  selector : string prop option; [@option]  (** selector *)
  transforms : string prop list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** custom_rule__match_condition *)

type custom_rule = {
  action : string prop;  (** action *)
  enabled : bool prop option; [@option]  (** enabled *)
  name : string prop;  (** name *)
  priority : float prop option; [@option]  (** priority *)
  rate_limit_duration_in_minutes : float prop option; [@option]
      (** rate_limit_duration_in_minutes *)
  rate_limit_threshold : float prop option; [@option]
      (** rate_limit_threshold *)
  type_ : string prop; [@key "type"]  (** type *)
  match_condition : custom_rule__match_condition list;
}
[@@deriving yojson_of]
(** custom_rule *)

type managed_rule__exclusion = {
  match_variable : string prop;  (** match_variable *)
  operator : string prop;  (** operator *)
  selector : string prop;  (** selector *)
}
[@@deriving yojson_of]
(** managed_rule__exclusion *)

type managed_rule__override__exclusion = {
  match_variable : string prop;  (** match_variable *)
  operator : string prop;  (** operator *)
  selector : string prop;  (** selector *)
}
[@@deriving yojson_of]
(** managed_rule__override__exclusion *)

type managed_rule__override__rule__exclusion = {
  match_variable : string prop;  (** match_variable *)
  operator : string prop;  (** operator *)
  selector : string prop;  (** selector *)
}
[@@deriving yojson_of]
(** managed_rule__override__rule__exclusion *)

type managed_rule__override__rule = {
  action : string prop;  (** action *)
  enabled : bool prop option; [@option]  (** enabled *)
  rule_id : string prop;  (** rule_id *)
  exclusion : managed_rule__override__rule__exclusion list;
}
[@@deriving yojson_of]
(** managed_rule__override__rule *)

type managed_rule__override = {
  rule_group_name : string prop;  (** rule_group_name *)
  exclusion : managed_rule__override__exclusion list;
  rule : managed_rule__override__rule list;
}
[@@deriving yojson_of]
(** managed_rule__override *)

type managed_rule = {
  type_ : string prop; [@key "type"]  (** type *)
  version : string prop;  (** version *)
  exclusion : managed_rule__exclusion list;
  override : managed_rule__override list;
}
[@@deriving yojson_of]
(** managed_rule *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_frontdoor_firewall_policy = {
  custom_block_response_body : string prop option; [@option]
      (** custom_block_response_body *)
  custom_block_response_status_code : float prop option; [@option]
      (** custom_block_response_status_code *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  mode : string prop option; [@option]  (** mode *)
  name : string prop;  (** name *)
  redirect_url : string prop option; [@option]  (** redirect_url *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  custom_rule : custom_rule list;
  managed_rule : managed_rule list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_frontdoor_firewall_policy *)

let custom_rule__match_condition ?negation_condition ?selector
    ?transforms ~match_values ~match_variable ~operator () :
    custom_rule__match_condition =
  {
    match_values;
    match_variable;
    negation_condition;
    operator;
    selector;
    transforms;
  }

let custom_rule ?enabled ?priority ?rate_limit_duration_in_minutes
    ?rate_limit_threshold ~action ~name ~type_ ~match_condition () :
    custom_rule =
  {
    action;
    enabled;
    name;
    priority;
    rate_limit_duration_in_minutes;
    rate_limit_threshold;
    type_;
    match_condition;
  }

let managed_rule__exclusion ~match_variable ~operator ~selector () :
    managed_rule__exclusion =
  { match_variable; operator; selector }

let managed_rule__override__exclusion ~match_variable ~operator
    ~selector () : managed_rule__override__exclusion =
  { match_variable; operator; selector }

let managed_rule__override__rule__exclusion ~match_variable ~operator
    ~selector () : managed_rule__override__rule__exclusion =
  { match_variable; operator; selector }

let managed_rule__override__rule ?enabled ~action ~rule_id ~exclusion
    () : managed_rule__override__rule =
  { action; enabled; rule_id; exclusion }

let managed_rule__override ~rule_group_name ~exclusion ~rule () :
    managed_rule__override =
  { rule_group_name; exclusion; rule }

let managed_rule ~type_ ~version ~exclusion ~override () :
    managed_rule =
  { type_; version; exclusion; override }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_frontdoor_firewall_policy ?custom_block_response_body
    ?custom_block_response_status_code ?enabled ?id ?mode
    ?redirect_url ?tags ?timeouts ~name ~resource_group_name
    ~custom_rule ~managed_rule () : azurerm_frontdoor_firewall_policy
    =
  {
    custom_block_response_body;
    custom_block_response_status_code;
    enabled;
    id;
    mode;
    name;
    redirect_url;
    resource_group_name;
    tags;
    custom_rule;
    managed_rule;
    timeouts;
  }

type t = {
  custom_block_response_body : string prop;
  custom_block_response_status_code : float prop;
  enabled : bool prop;
  frontend_endpoint_ids : string list prop;
  id : string prop;
  location : string prop;
  mode : string prop;
  name : string prop;
  redirect_url : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?custom_block_response_body
    ?custom_block_response_status_code ?enabled ?id ?mode
    ?redirect_url ?tags ?timeouts ~name ~resource_group_name
    ~custom_rule ~managed_rule __resource_id =
  let __resource_type = "azurerm_frontdoor_firewall_policy" in
  let __resource =
    azurerm_frontdoor_firewall_policy ?custom_block_response_body
      ?custom_block_response_status_code ?enabled ?id ?mode
      ?redirect_url ?tags ?timeouts ~name ~resource_group_name
      ~custom_rule ~managed_rule ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_frontdoor_firewall_policy __resource);
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
       location =
         Prop.computed __resource_type __resource_id "location";
       mode = Prop.computed __resource_type __resource_id "mode";
       name = Prop.computed __resource_type __resource_id "name";
       redirect_url =
         Prop.computed __resource_type __resource_id "redirect_url";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
