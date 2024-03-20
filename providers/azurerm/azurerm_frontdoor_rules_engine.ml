(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rule__action__request_header = {
  header_action_type : string prop option; [@option]
      (** header_action_type *)
  header_name : string prop option; [@option]  (** header_name *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** rule__action__request_header *)

type rule__action__response_header = {
  header_action_type : string prop option; [@option]
      (** header_action_type *)
  header_name : string prop option; [@option]  (** header_name *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** rule__action__response_header *)

type rule__action = {
  request_header : rule__action__request_header list;
  response_header : rule__action__response_header list;
}
[@@deriving yojson_of]
(** rule__action *)

type rule__match_condition = {
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
  selector : string prop option; [@option]  (** selector *)
  transform : string prop list option; [@option]  (** transform *)
  value : string prop list option; [@option]  (** value *)
  variable : string prop option; [@option]  (** variable *)
}
[@@deriving yojson_of]
(** rule__match_condition *)

type rule = {
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  action : rule__action list;
  match_condition : rule__match_condition list;
}
[@@deriving yojson_of]
(** rule *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_frontdoor_rules_engine = {
  enabled : bool prop option; [@option]  (** enabled *)
  frontdoor_name : string prop;  (** frontdoor_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  rule : rule list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_frontdoor_rules_engine *)

let rule__action__request_header ?header_action_type ?header_name
    ?value () : rule__action__request_header =
  { header_action_type; header_name; value }

let rule__action__response_header ?header_action_type ?header_name
    ?value () : rule__action__response_header =
  { header_action_type; header_name; value }

let rule__action ~request_header ~response_header () : rule__action =
  { request_header; response_header }

let rule__match_condition ?negate_condition ?selector ?transform
    ?value ?variable ~operator () : rule__match_condition =
  {
    negate_condition;
    operator;
    selector;
    transform;
    value;
    variable;
  }

let rule ~name ~priority ~action ~match_condition () : rule =
  { name; priority; action; match_condition }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_frontdoor_rules_engine ?enabled ?id ?timeouts
    ~frontdoor_name ~name ~resource_group_name ~rule () :
    azurerm_frontdoor_rules_engine =
  {
    enabled;
    frontdoor_name;
    id;
    name;
    resource_group_name;
    rule;
    timeouts;
  }

type t = {
  enabled : bool prop;
  frontdoor_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?enabled ?id ?timeouts ~frontdoor_name ~name
    ~resource_group_name ~rule __id =
  let __type = "azurerm_frontdoor_rules_engine" in
  let __attrs =
    ({
       enabled = Prop.computed __type __id "enabled";
       frontdoor_name = Prop.computed __type __id "frontdoor_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_frontdoor_rules_engine
        (azurerm_frontdoor_rules_engine ?enabled ?id ?timeouts
           ~frontdoor_name ~name ~resource_group_name ~rule ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?timeouts ~frontdoor_name ~name
    ~resource_group_name ~rule __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?timeouts ~frontdoor_name ~name
      ~resource_group_name ~rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
