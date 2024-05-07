(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type access_levels__basic__conditions__device_policy__os_constraints = {
  minimum_version : string prop option; [@option]
  os_type : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       access_levels__basic__conditions__device_policy__os_constraints) ->
  ()

let yojson_of_access_levels__basic__conditions__device_policy__os_constraints
    =
  (function
   | { minimum_version = v_minimum_version; os_type = v_os_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_os_type in
         ("os_type", arg) :: bnds
       in
       let bnds =
         match v_minimum_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "minimum_version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : access_levels__basic__conditions__device_policy__os_constraints ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_access_levels__basic__conditions__device_policy__os_constraints

[@@@deriving.end]

type access_levels__basic__conditions__device_policy = {
  allowed_device_management_levels : string prop list option;
      [@option]
  allowed_encryption_statuses : string prop list option; [@option]
  require_admin_approval : bool prop option; [@option]
  require_corp_owned : bool prop option; [@option]
  require_screen_lock : bool prop option; [@option]
  os_constraints :
    access_levels__basic__conditions__device_policy__os_constraints
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : access_levels__basic__conditions__device_policy) -> ()

let yojson_of_access_levels__basic__conditions__device_policy =
  (function
   | {
       allowed_device_management_levels =
         v_allowed_device_management_levels;
       allowed_encryption_statuses = v_allowed_encryption_statuses;
       require_admin_approval = v_require_admin_approval;
       require_corp_owned = v_require_corp_owned;
       require_screen_lock = v_require_screen_lock;
       os_constraints = v_os_constraints;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_access_levels__basic__conditions__device_policy__os_constraints
             v_os_constraints
         in
         ("os_constraints", arg) :: bnds
       in
       let bnds =
         match v_require_screen_lock with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_screen_lock", arg in
             bnd :: bnds
       in
       let bnds =
         match v_require_corp_owned with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_corp_owned", arg in
             bnd :: bnds
       in
       let bnds =
         match v_require_admin_approval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_admin_approval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_encryption_statuses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_encryption_statuses", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_device_management_levels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_device_management_levels", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : access_levels__basic__conditions__device_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_levels__basic__conditions__device_policy

[@@@deriving.end]

type access_levels__basic__conditions__vpc_network_sources__vpc_subnetwork = {
  network : string prop;
  vpc_ip_subnetworks : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       access_levels__basic__conditions__vpc_network_sources__vpc_subnetwork) ->
  ()

let yojson_of_access_levels__basic__conditions__vpc_network_sources__vpc_subnetwork
    =
  (function
   | {
       network = v_network;
       vpc_ip_subnetworks = v_vpc_ip_subnetworks;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vpc_ip_subnetworks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "vpc_ip_subnetworks", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network in
         ("network", arg) :: bnds
       in
       `Assoc bnds
    : access_levels__basic__conditions__vpc_network_sources__vpc_subnetwork ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_access_levels__basic__conditions__vpc_network_sources__vpc_subnetwork

[@@@deriving.end]

type access_levels__basic__conditions__vpc_network_sources = {
  vpc_subnetwork :
    access_levels__basic__conditions__vpc_network_sources__vpc_subnetwork
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : access_levels__basic__conditions__vpc_network_sources) ->
  ()

let yojson_of_access_levels__basic__conditions__vpc_network_sources =
  (function
   | { vpc_subnetwork = v_vpc_subnetwork } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_access_levels__basic__conditions__vpc_network_sources__vpc_subnetwork
             v_vpc_subnetwork
         in
         ("vpc_subnetwork", arg) :: bnds
       in
       `Assoc bnds
    : access_levels__basic__conditions__vpc_network_sources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_access_levels__basic__conditions__vpc_network_sources

[@@@deriving.end]

type access_levels__basic__conditions = {
  ip_subnetworks : string prop list option; [@option]
  members : string prop list option; [@option]
  negate : bool prop option; [@option]
  regions : string prop list option; [@option]
  required_access_levels : string prop list option; [@option]
  device_policy :
    access_levels__basic__conditions__device_policy list;
  vpc_network_sources :
    access_levels__basic__conditions__vpc_network_sources list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_levels__basic__conditions) -> ()

let yojson_of_access_levels__basic__conditions =
  (function
   | {
       ip_subnetworks = v_ip_subnetworks;
       members = v_members;
       negate = v_negate;
       regions = v_regions;
       required_access_levels = v_required_access_levels;
       device_policy = v_device_policy;
       vpc_network_sources = v_vpc_network_sources;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_access_levels__basic__conditions__vpc_network_sources
             v_vpc_network_sources
         in
         ("vpc_network_sources", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_access_levels__basic__conditions__device_policy
             v_device_policy
         in
         ("device_policy", arg) :: bnds
       in
       let bnds =
         match v_required_access_levels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "required_access_levels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_regions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "regions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_negate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_members with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "members", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_subnetworks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ip_subnetworks", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : access_levels__basic__conditions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_levels__basic__conditions

[@@@deriving.end]

type access_levels__basic = {
  combining_function : string prop option; [@option]
  conditions : access_levels__basic__conditions list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_levels__basic) -> ()

let yojson_of_access_levels__basic =
  (function
   | {
       combining_function = v_combining_function;
       conditions = v_conditions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_access_levels__basic__conditions
             v_conditions
         in
         ("conditions", arg) :: bnds
       in
       let bnds =
         match v_combining_function with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "combining_function", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : access_levels__basic -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_levels__basic

[@@@deriving.end]

type access_levels__custom__expr = {
  description : string prop option; [@option]
  expression : string prop;
  location : string prop option; [@option]
  title : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_levels__custom__expr) -> ()

let yojson_of_access_levels__custom__expr =
  (function
   | {
       description = v_description;
       expression = v_expression;
       location = v_location;
       title = v_title;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_title with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "title", arg in
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
         let arg = yojson_of_prop yojson_of_string v_expression in
         ("expression", arg) :: bnds
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
    : access_levels__custom__expr ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_levels__custom__expr

[@@@deriving.end]

type access_levels__custom = {
  expr : access_levels__custom__expr list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_levels__custom) -> ()

let yojson_of_access_levels__custom =
  (function
   | { expr = v_expr } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_access_levels__custom__expr
             v_expr
         in
         ("expr", arg) :: bnds
       in
       `Assoc bnds
    : access_levels__custom -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_levels__custom

[@@@deriving.end]

type access_levels = {
  description : string prop option; [@option]
  name : string prop;
  title : string prop;
  basic : access_levels__basic list;
  custom : access_levels__custom list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_levels) -> ()

let yojson_of_access_levels =
  (function
   | {
       description = v_description;
       name = v_name;
       title = v_title;
       basic = v_basic;
       custom = v_custom;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_access_levels__custom v_custom
         in
         ("custom", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_access_levels__basic v_basic
         in
         ("basic", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_title in
         ("title", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : access_levels -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_levels

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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

type google_access_context_manager_access_levels = {
  id : string prop option; [@option]
  parent : string prop;
  access_levels : access_levels list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_access_context_manager_access_levels) -> ()

let yojson_of_google_access_context_manager_access_levels =
  (function
   | {
       id = v_id;
       parent = v_parent;
       access_levels = v_access_levels;
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
           yojson_of_list yojson_of_access_levels v_access_levels
         in
         ("access_levels", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent in
         ("parent", arg) :: bnds
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
    : google_access_context_manager_access_levels ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_access_context_manager_access_levels

[@@@deriving.end]

let access_levels__basic__conditions__device_policy__os_constraints
    ?minimum_version ~os_type () :
    access_levels__basic__conditions__device_policy__os_constraints =
  { minimum_version; os_type }

let access_levels__basic__conditions__device_policy
    ?allowed_device_management_levels ?allowed_encryption_statuses
    ?require_admin_approval ?require_corp_owned ?require_screen_lock
    ?(os_constraints = []) () :
    access_levels__basic__conditions__device_policy =
  {
    allowed_device_management_levels;
    allowed_encryption_statuses;
    require_admin_approval;
    require_corp_owned;
    require_screen_lock;
    os_constraints;
  }

let access_levels__basic__conditions__vpc_network_sources__vpc_subnetwork
    ?vpc_ip_subnetworks ~network () :
    access_levels__basic__conditions__vpc_network_sources__vpc_subnetwork
    =
  { network; vpc_ip_subnetworks }

let access_levels__basic__conditions__vpc_network_sources
    ?(vpc_subnetwork = []) () :
    access_levels__basic__conditions__vpc_network_sources =
  { vpc_subnetwork }

let access_levels__basic__conditions ?ip_subnetworks ?members ?negate
    ?regions ?required_access_levels ?(device_policy = [])
    ?(vpc_network_sources = []) () : access_levels__basic__conditions
    =
  {
    ip_subnetworks;
    members;
    negate;
    regions;
    required_access_levels;
    device_policy;
    vpc_network_sources;
  }

let access_levels__basic ?combining_function ~conditions () :
    access_levels__basic =
  { combining_function; conditions }

let access_levels__custom__expr ?description ?location ?title
    ~expression () : access_levels__custom__expr =
  { description; expression; location; title }

let access_levels__custom ~expr () : access_levels__custom = { expr }

let access_levels ?description ?(basic = []) ?(custom = []) ~name
    ~title () : access_levels =
  { description; name; title; basic; custom }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_access_context_manager_access_levels ?id ?timeouts ~parent
    ~access_levels () : google_access_context_manager_access_levels =
  { id; parent; access_levels; timeouts }

type t = { tf_name : string; id : string prop; parent : string prop }

let make ?id ?timeouts ~parent ~access_levels __id =
  let __type = "google_access_context_manager_access_levels" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       parent = Prop.computed __type __id "parent";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_access_context_manager_access_levels
        (google_access_context_manager_access_levels ?id ?timeouts
           ~parent ~access_levels ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~parent ~access_levels __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~parent ~access_levels __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
