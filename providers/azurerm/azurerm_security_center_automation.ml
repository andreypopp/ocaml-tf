(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type action = {
  connection_string : string prop option; [@option]
      (** connection_string *)
  resource_id : string prop;  (** resource_id *)
  trigger_url : string prop option; [@option]  (** trigger_url *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** action *)

type source__rule_set__rule = {
  expected_value : string prop;  (** expected_value *)
  operator : string prop;  (** operator *)
  property_path : string prop;  (** property_path *)
  property_type : string prop;  (** property_type *)
}
[@@deriving yojson_of]
(** source__rule_set__rule *)

type source__rule_set = { rule : source__rule_set__rule list }
[@@deriving yojson_of]
(** source__rule_set *)

type source = {
  event_source : string prop;  (** event_source *)
  rule_set : source__rule_set list;
}
[@@deriving yojson_of]
(** source *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_security_center_automation = {
  description : string prop option; [@option]  (** description *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  scopes : string prop list;  (** scopes *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  action : action list;
  source : source list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_security_center_automation *)

let action ?connection_string ?trigger_url ~resource_id ~type_ () :
    action =
  { connection_string; resource_id; trigger_url; type_ }

let source__rule_set__rule ~expected_value ~operator ~property_path
    ~property_type () : source__rule_set__rule =
  { expected_value; operator; property_path; property_type }

let source__rule_set ~rule () : source__rule_set = { rule }

let source ~event_source ~rule_set () : source =
  { event_source; rule_set }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_security_center_automation ?description ?enabled ?id
    ?tags ?timeouts ~location ~name ~resource_group_name ~scopes
    ~action ~source () : azurerm_security_center_automation =
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

type t = {
  description : string prop;
  enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  scopes : string list prop;
  tags : (string * string) list prop;
}

let make ?description ?enabled ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~scopes ~action ~source __id =
  let __type = "azurerm_security_center_automation" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       scopes = Prop.computed __type __id "scopes";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_security_center_automation
        (azurerm_security_center_automation ?description ?enabled ?id
           ?tags ?timeouts ~location ~name ~resource_group_name
           ~scopes ~action ~source ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?enabled ?id ?tags ?timeouts
    ~location ~name ~resource_group_name ~scopes ~action ~source __id
    =
  let (r : _ Tf_core.resource) =
    make ?description ?enabled ?id ?tags ?timeouts ~location ~name
      ~resource_group_name ~scopes ~action ~source __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
