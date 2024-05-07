(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rule__action__parameter = {
  as_path : string prop list option; [@option]
  community : string prop list option; [@option]
  route_prefix : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__action__parameter) -> ()

let yojson_of_rule__action__parameter =
  (function
   | {
       as_path = v_as_path;
       community = v_community;
       route_prefix = v_route_prefix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_route_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "route_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_community with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "community", arg in
             bnd :: bnds
       in
       let bnds =
         match v_as_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "as_path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__action__parameter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__action__parameter

[@@@deriving.end]

type rule__action = {
  type_ : string prop; [@key "type"]
  parameter : rule__action__parameter list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__action) -> ()

let yojson_of_rule__action =
  (function
   | { type_ = v_type_; parameter = v_parameter } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_rule__action__parameter
             v_parameter
         in
         ("parameter", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : rule__action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__action

[@@@deriving.end]

type rule__match_criterion = {
  as_path : string prop list option; [@option]
  community : string prop list option; [@option]
  match_condition : string prop;
  route_prefix : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__match_criterion) -> ()

let yojson_of_rule__match_criterion =
  (function
   | {
       as_path = v_as_path;
       community = v_community;
       match_condition = v_match_condition;
       route_prefix = v_route_prefix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_route_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "route_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_match_condition
         in
         ("match_condition", arg) :: bnds
       in
       let bnds =
         match v_community with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "community", arg in
             bnd :: bnds
       in
       let bnds =
         match v_as_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "as_path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__match_criterion -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__match_criterion

[@@@deriving.end]

type rule = {
  name : string prop;
  next_step_if_matched : string prop option; [@option]
  action : rule__action list;
  match_criterion : rule__match_criterion list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule) -> ()

let yojson_of_rule =
  (function
   | {
       name = v_name;
       next_step_if_matched = v_next_step_if_matched;
       action = v_action;
       match_criterion = v_match_criterion;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_rule__match_criterion
             v_match_criterion
         in
         ("match_criterion", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_rule__action v_action in
         ("action", arg) :: bnds
       in
       let bnds =
         match v_next_step_if_matched with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "next_step_if_matched", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule

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

type azurerm_route_map = {
  id : string prop option; [@option]
  name : string prop;
  virtual_hub_id : string prop;
  rule : rule list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_route_map) -> ()

let yojson_of_azurerm_route_map =
  (function
   | {
       id = v_id;
       name = v_name;
       virtual_hub_id = v_virtual_hub_id;
       rule = v_rule;
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
         let arg = yojson_of_list yojson_of_rule v_rule in
         ("rule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_hub_id
         in
         ("virtual_hub_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_route_map -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_route_map

[@@@deriving.end]

let rule__action__parameter ?as_path ?community ?route_prefix () :
    rule__action__parameter =
  { as_path; community; route_prefix }

let rule__action ~type_ ~parameter () : rule__action =
  { type_; parameter }

let rule__match_criterion ?as_path ?community ?route_prefix
    ~match_condition () : rule__match_criterion =
  { as_path; community; match_condition; route_prefix }

let rule ?next_step_if_matched ?(action = []) ?(match_criterion = [])
    ~name () : rule =
  { name; next_step_if_matched; action; match_criterion }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_route_map ?id ?(rule = []) ?timeouts ~name
    ~virtual_hub_id () : azurerm_route_map =
  { id; name; virtual_hub_id; rule; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  virtual_hub_id : string prop;
}

let make ?id ?(rule = []) ?timeouts ~name ~virtual_hub_id __id =
  let __type = "azurerm_route_map" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       virtual_hub_id = Prop.computed __type __id "virtual_hub_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_route_map
        (azurerm_route_map ?id ~rule ?timeouts ~name ~virtual_hub_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(rule = []) ?timeouts ~name
    ~virtual_hub_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~rule ?timeouts ~name ~virtual_hub_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
