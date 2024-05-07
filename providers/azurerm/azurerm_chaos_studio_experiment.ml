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

type selectors = {
  chaos_studio_target_ids : string prop list;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : selectors) -> ()

let yojson_of_selectors =
  (function
   | {
       chaos_studio_target_ids = v_chaos_studio_target_ids;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_chaos_studio_target_ids
         in
         ("chaos_studio_target_ids", arg) :: bnds
       in
       `Assoc bnds
    : selectors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_selectors

[@@@deriving.end]

type steps__branch__actions = {
  action_type : string prop;
  duration : string prop option; [@option]
  parameters : (string * string prop) list option; [@option]
  selector_name : string prop option; [@option]
  urn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : steps__branch__actions) -> ()

let yojson_of_steps__branch__actions =
  (function
   | {
       action_type = v_action_type;
       duration = v_duration;
       parameters = v_parameters;
       selector_name = v_selector_name;
       urn = v_urn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_urn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "urn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_selector_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "selector_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parameters with
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
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "duration", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action_type in
         ("action_type", arg) :: bnds
       in
       `Assoc bnds
    : steps__branch__actions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_steps__branch__actions

[@@@deriving.end]

type steps__branch = {
  name : string prop;
  actions : steps__branch__actions list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : steps__branch) -> ()

let yojson_of_steps__branch =
  (function
   | { name = v_name; actions = v_actions } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_steps__branch__actions v_actions
         in
         ("actions", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : steps__branch -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_steps__branch

[@@@deriving.end]

type steps = { name : string prop; branch : steps__branch list }
[@@deriving_inline yojson_of]

let _ = fun (_ : steps) -> ()

let yojson_of_steps =
  (function
   | { name = v_name; branch = v_branch } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_steps__branch v_branch in
         ("branch", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : steps -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_steps

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

type azurerm_chaos_studio_experiment = {
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  identity : identity list;
  selectors : selectors list;
  steps : steps list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_chaos_studio_experiment) -> ()

let yojson_of_azurerm_chaos_studio_experiment =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       identity = v_identity;
       selectors = v_selectors;
       steps = v_steps;
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
         let arg = yojson_of_list yojson_of_steps v_steps in
         ("steps", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_selectors v_selectors in
         ("selectors", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
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
       `Assoc bnds
    : azurerm_chaos_studio_experiment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_chaos_studio_experiment

[@@@deriving.end]

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let selectors ~chaos_studio_target_ids ~name () : selectors =
  { chaos_studio_target_ids; name }

let steps__branch__actions ?duration ?parameters ?selector_name ?urn
    ~action_type () : steps__branch__actions =
  { action_type; duration; parameters; selector_name; urn }

let steps__branch ~name ~actions () : steps__branch =
  { name; actions }

let steps ~name ~branch () : steps = { name; branch }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_chaos_studio_experiment ?id ?(identity = []) ?timeouts
    ~location ~name ~resource_group_name ~selectors ~steps () :
    azurerm_chaos_studio_experiment =
  {
    id;
    location;
    name;
    resource_group_name;
    identity;
    selectors;
    steps;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?id ?(identity = []) ?timeouts ~location ~name
    ~resource_group_name ~selectors ~steps __id =
  let __type = "azurerm_chaos_studio_experiment" in
  let __attrs =
    ({
       tf_name = __id;
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
      yojson_of_azurerm_chaos_studio_experiment
        (azurerm_chaos_studio_experiment ?id ~identity ?timeouts
           ~location ~name ~resource_group_name ~selectors ~steps ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(identity = []) ?timeouts ~location
    ~name ~resource_group_name ~selectors ~steps __id =
  let (r : _ Tf_core.resource) =
    make ?id ~identity ?timeouts ~location ~name ~resource_group_name
      ~selectors ~steps __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
