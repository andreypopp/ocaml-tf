(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = {
  identity_ids : string prop list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_identity_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identity_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type non_compliance_message = {
  content : string prop;
  policy_definition_reference_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : non_compliance_message) -> ()

let yojson_of_non_compliance_message =
  (function
   | {
       content = v_content;
       policy_definition_reference_id =
         v_policy_definition_reference_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_policy_definition_reference_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_definition_reference_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content in
         ("content", arg) :: bnds
       in
       `Assoc bnds
    : non_compliance_message -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_non_compliance_message

[@@@deriving.end]

type overrides__selectors = {
  in_ : string prop list option; [@option] [@key "in"]
  not_in : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : overrides__selectors) -> ()

let yojson_of_overrides__selectors =
  (function
   | { in_ = v_in_; not_in = v_not_in } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_not_in with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "not_in", arg in
             bnd :: bnds
       in
       let bnds =
         match v_in_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "in", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : overrides__selectors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_overrides__selectors

[@@@deriving.end]

type overrides = {
  value : string prop;
  selectors : overrides__selectors list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : overrides) -> ()

let yojson_of_overrides =
  (function
   | { value = v_value; selectors = v_selectors } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_overrides__selectors v_selectors
         in
         ("selectors", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       `Assoc bnds
    : overrides -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_overrides

[@@@deriving.end]

type resource_selectors__selectors = {
  in_ : string prop list option; [@option] [@key "in"]
  kind : string prop;
  not_in : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : resource_selectors__selectors) -> ()

let yojson_of_resource_selectors__selectors =
  (function
   | { in_ = v_in_; kind = v_kind; not_in = v_not_in } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_not_in with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "not_in", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kind in
         ("kind", arg) :: bnds
       in
       let bnds =
         match v_in_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "in", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : resource_selectors__selectors ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resource_selectors__selectors

[@@@deriving.end]

type resource_selectors = {
  name : string prop option; [@option]
  selectors : resource_selectors__selectors list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : resource_selectors) -> ()

let yojson_of_resource_selectors =
  (function
   | { name = v_name; selectors = v_selectors } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_resource_selectors__selectors
             v_selectors
         in
         ("selectors", arg) :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : resource_selectors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resource_selectors

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

type azurerm_resource_group_policy_assignment = {
  description : string prop option; [@option]
  display_name : string prop option; [@option]
  enforce : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop option; [@option]
  metadata : string prop option; [@option]
  name : string prop;
  not_scopes : string prop list option; [@option]
  parameters : string prop option; [@option]
  policy_definition_id : string prop;
  resource_group_id : string prop;
  identity : identity list;
  non_compliance_message : non_compliance_message list;
  overrides : overrides list;
  resource_selectors : resource_selectors list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_resource_group_policy_assignment) -> ()

let yojson_of_azurerm_resource_group_policy_assignment =
  (function
   | {
       description = v_description;
       display_name = v_display_name;
       enforce = v_enforce;
       id = v_id;
       location = v_location;
       metadata = v_metadata;
       name = v_name;
       not_scopes = v_not_scopes;
       parameters = v_parameters;
       policy_definition_id = v_policy_definition_id;
       resource_group_id = v_resource_group_id;
       identity = v_identity;
       non_compliance_message = v_non_compliance_message;
       overrides = v_overrides;
       resource_selectors = v_resource_selectors;
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
         let arg =
           yojson_of_list yojson_of_resource_selectors
             v_resource_selectors
         in
         ("resource_selectors", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_overrides v_overrides in
         ("overrides", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_non_compliance_message
             v_non_compliance_message
         in
         ("non_compliance_message", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_id
         in
         ("resource_group_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_policy_definition_id
         in
         ("policy_definition_id", arg) :: bnds
       in
       let bnds =
         match v_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_not_scopes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "not_scopes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_metadata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metadata", arg in
             bnd :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
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
         match v_enforce with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enforce", arg in
             bnd :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
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
    : azurerm_resource_group_policy_assignment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_resource_group_policy_assignment

[@@@deriving.end]

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let non_compliance_message ?policy_definition_reference_id ~content
    () : non_compliance_message =
  { content; policy_definition_reference_id }

let overrides__selectors ?in_ ?not_in () : overrides__selectors =
  { in_; not_in }

let overrides ~value ~selectors () : overrides = { value; selectors }

let resource_selectors__selectors ?in_ ?not_in ~kind () :
    resource_selectors__selectors =
  { in_; kind; not_in }

let resource_selectors ?name ~selectors () : resource_selectors =
  { name; selectors }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_resource_group_policy_assignment ?description
    ?display_name ?enforce ?id ?location ?metadata ?not_scopes
    ?parameters ?timeouts ~name ~policy_definition_id
    ~resource_group_id ~identity ~non_compliance_message ~overrides
    ~resource_selectors () : azurerm_resource_group_policy_assignment
    =
  {
    description;
    display_name;
    enforce;
    id;
    location;
    metadata;
    name;
    not_scopes;
    parameters;
    policy_definition_id;
    resource_group_id;
    identity;
    non_compliance_message;
    overrides;
    resource_selectors;
    timeouts;
  }

type t = {
  description : string prop;
  display_name : string prop;
  enforce : bool prop;
  id : string prop;
  location : string prop;
  metadata : string prop;
  name : string prop;
  not_scopes : string list prop;
  parameters : string prop;
  policy_definition_id : string prop;
  resource_group_id : string prop;
}

let make ?description ?display_name ?enforce ?id ?location ?metadata
    ?not_scopes ?parameters ?timeouts ~name ~policy_definition_id
    ~resource_group_id ~identity ~non_compliance_message ~overrides
    ~resource_selectors __id =
  let __type = "azurerm_resource_group_policy_assignment" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       enforce = Prop.computed __type __id "enforce";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       not_scopes = Prop.computed __type __id "not_scopes";
       parameters = Prop.computed __type __id "parameters";
       policy_definition_id =
         Prop.computed __type __id "policy_definition_id";
       resource_group_id =
         Prop.computed __type __id "resource_group_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_resource_group_policy_assignment
        (azurerm_resource_group_policy_assignment ?description
           ?display_name ?enforce ?id ?location ?metadata ?not_scopes
           ?parameters ?timeouts ~name ~policy_definition_id
           ~resource_group_id ~identity ~non_compliance_message
           ~overrides ~resource_selectors ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?display_name ?enforce ?id
    ?location ?metadata ?not_scopes ?parameters ?timeouts ~name
    ~policy_definition_id ~resource_group_id ~identity
    ~non_compliance_message ~overrides ~resource_selectors __id =
  let (r : _ Tf_core.resource) =
    make ?description ?display_name ?enforce ?id ?location ?metadata
      ?not_scopes ?parameters ?timeouts ~name ~policy_definition_id
      ~resource_group_id ~identity ~non_compliance_message ~overrides
      ~resource_selectors __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
