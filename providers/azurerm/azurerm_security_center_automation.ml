(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type action = {
  connection_string : string prop option; [@option]
  resource_id : string prop;
  trigger_url : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : action) -> ()

let yojson_of_action =
  (function
   | {
       connection_string = v_connection_string;
       resource_id = v_resource_id;
       trigger_url = v_trigger_url;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_trigger_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "trigger_url", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_id in
         ("resource_id", arg) :: bnds
       in
       let bnds =
         match v_connection_string with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection_string", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action

[@@@deriving.end]

type source__rule_set__rule = {
  expected_value : string prop;
  operator : string prop;
  property_path : string prop;
  property_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source__rule_set__rule) -> ()

let yojson_of_source__rule_set__rule =
  (function
   | {
       expected_value = v_expected_value;
       operator = v_operator;
       property_path = v_property_path;
       property_type = v_property_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_property_type in
         ("property_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_property_path in
         ("property_path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_expected_value
         in
         ("expected_value", arg) :: bnds
       in
       `Assoc bnds
    : source__rule_set__rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source__rule_set__rule

[@@@deriving.end]

type source__rule_set = {
  rule : source__rule_set__rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source__rule_set) -> ()

let yojson_of_source__rule_set =
  (function
   | { rule = v_rule } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_source__rule_set__rule) v_rule
           in
           let bnd = "rule", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : source__rule_set -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source__rule_set

[@@@deriving.end]

type source = {
  event_source : string prop;
  rule_set : source__rule_set list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source) -> ()

let yojson_of_source =
  (function
   | { event_source = v_event_source; rule_set = v_rule_set } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rule_set then bnds
         else
           let arg =
             (yojson_of_list yojson_of_source__rule_set) v_rule_set
           in
           let bnd = "rule_set", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_event_source in
         ("event_source", arg) :: bnds
       in
       `Assoc bnds
    : source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_security_center_automation = {
  description : string prop option; [@option]
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  scopes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tags : (string * string prop) list option; [@option]
  action : action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source : source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_security_center_automation) -> ()

let yojson_of_azurerm_security_center_automation =
  (function
   | {
       description = v_description;
       enabled = v_enabled;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       scopes = v_scopes;
       tags = v_tags;
       action = v_action;
       source = v_source;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_source then bnds
         else
           let arg = (yojson_of_list yojson_of_source) v_source in
           let bnd = "source", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_action then bnds
         else
           let arg = (yojson_of_list yojson_of_action) v_action in
           let bnd = "action", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_scopes then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_scopes
           in
           let bnd = "scopes", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_security_center_automation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_security_center_automation

[@@@deriving.end]

let action ?connection_string ?trigger_url ~resource_id ~type_ () :
    action =
  { connection_string; resource_id; trigger_url; type_ }

let source__rule_set__rule ~expected_value ~operator ~property_path
    ~property_type () : source__rule_set__rule =
  { expected_value; operator; property_path; property_type }

let source__rule_set ~rule () : source__rule_set = { rule }

let source ?(rule_set = []) ~event_source () : source =
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
  tf_name : string;
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
       tf_name = __id;
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
