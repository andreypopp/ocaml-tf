(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type basic__conditions__device_policy__os_constraints = {
  minimum_version : string prop option; [@option]
  os_type : string prop;
  require_verified_chrome_os : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : basic__conditions__device_policy__os_constraints) -> ()

let yojson_of_basic__conditions__device_policy__os_constraints =
  (function
   | {
       minimum_version = v_minimum_version;
       os_type = v_os_type;
       require_verified_chrome_os = v_require_verified_chrome_os;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_require_verified_chrome_os with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_verified_chrome_os", arg in
             bnd :: bnds
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
    : basic__conditions__device_policy__os_constraints ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_basic__conditions__device_policy__os_constraints

[@@@deriving.end]

type basic__conditions__device_policy = {
  allowed_device_management_levels : string prop list option;
      [@option]
  allowed_encryption_statuses : string prop list option; [@option]
  require_admin_approval : bool prop option; [@option]
  require_corp_owned : bool prop option; [@option]
  require_screen_lock : bool prop option; [@option]
  os_constraints :
    basic__conditions__device_policy__os_constraints list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : basic__conditions__device_policy) -> ()

let yojson_of_basic__conditions__device_policy =
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
             yojson_of_basic__conditions__device_policy__os_constraints
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
    : basic__conditions__device_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_basic__conditions__device_policy

[@@@deriving.end]

type basic__conditions__vpc_network_sources__vpc_subnetwork = {
  network : string prop;
  vpc_ip_subnetworks : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : basic__conditions__vpc_network_sources__vpc_subnetwork) ->
  ()

let yojson_of_basic__conditions__vpc_network_sources__vpc_subnetwork
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
    : basic__conditions__vpc_network_sources__vpc_subnetwork ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_basic__conditions__vpc_network_sources__vpc_subnetwork

[@@@deriving.end]

type basic__conditions__vpc_network_sources = {
  vpc_subnetwork :
    basic__conditions__vpc_network_sources__vpc_subnetwork list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : basic__conditions__vpc_network_sources) -> ()

let yojson_of_basic__conditions__vpc_network_sources =
  (function
   | { vpc_subnetwork = v_vpc_subnetwork } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_basic__conditions__vpc_network_sources__vpc_subnetwork
             v_vpc_subnetwork
         in
         ("vpc_subnetwork", arg) :: bnds
       in
       `Assoc bnds
    : basic__conditions__vpc_network_sources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_basic__conditions__vpc_network_sources

[@@@deriving.end]

type basic__conditions = {
  ip_subnetworks : string prop list option; [@option]
  members : string prop list option; [@option]
  negate : bool prop option; [@option]
  regions : string prop list option; [@option]
  required_access_levels : string prop list option; [@option]
  device_policy : basic__conditions__device_policy list;
  vpc_network_sources : basic__conditions__vpc_network_sources list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : basic__conditions) -> ()

let yojson_of_basic__conditions =
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
             yojson_of_basic__conditions__vpc_network_sources
             v_vpc_network_sources
         in
         ("vpc_network_sources", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_basic__conditions__device_policy
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
    : basic__conditions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_basic__conditions

[@@@deriving.end]

type basic = {
  combining_function : string prop option; [@option]
  conditions : basic__conditions list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : basic) -> ()

let yojson_of_basic =
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
           yojson_of_list yojson_of_basic__conditions v_conditions
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
    : basic -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_basic

[@@@deriving.end]

type custom__expr = {
  description : string prop option; [@option]
  expression : string prop;
  location : string prop option; [@option]
  title : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom__expr) -> ()

let yojson_of_custom__expr =
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
    : custom__expr -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom__expr

[@@@deriving.end]

type custom = { expr : custom__expr list }
[@@deriving_inline yojson_of]

let _ = fun (_ : custom) -> ()

let yojson_of_custom =
  (function
   | { expr = v_expr } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_custom__expr v_expr in
         ("expr", arg) :: bnds
       in
       `Assoc bnds
    : custom -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom

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

type google_access_context_manager_access_level = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  parent : string prop;
  title : string prop;
  basic : basic list;
  custom : custom list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_access_context_manager_access_level) -> ()

let yojson_of_google_access_context_manager_access_level =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       parent = v_parent;
       title = v_title;
       basic = v_basic;
       custom = v_custom;
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
         let arg = yojson_of_list yojson_of_custom v_custom in
         ("custom", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_basic v_basic in
         ("basic", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_title in
         ("title", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent in
         ("parent", arg) :: bnds
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
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_access_context_manager_access_level ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_access_context_manager_access_level

[@@@deriving.end]

let basic__conditions__device_policy__os_constraints ?minimum_version
    ?require_verified_chrome_os ~os_type () :
    basic__conditions__device_policy__os_constraints =
  { minimum_version; os_type; require_verified_chrome_os }

let basic__conditions__device_policy
    ?allowed_device_management_levels ?allowed_encryption_statuses
    ?require_admin_approval ?require_corp_owned ?require_screen_lock
    ?(os_constraints = []) () : basic__conditions__device_policy =
  {
    allowed_device_management_levels;
    allowed_encryption_statuses;
    require_admin_approval;
    require_corp_owned;
    require_screen_lock;
    os_constraints;
  }

let basic__conditions__vpc_network_sources__vpc_subnetwork
    ?vpc_ip_subnetworks ~network () :
    basic__conditions__vpc_network_sources__vpc_subnetwork =
  { network; vpc_ip_subnetworks }

let basic__conditions__vpc_network_sources ?(vpc_subnetwork = []) ()
    : basic__conditions__vpc_network_sources =
  { vpc_subnetwork }

let basic__conditions ?ip_subnetworks ?members ?negate ?regions
    ?required_access_levels ?(device_policy = [])
    ?(vpc_network_sources = []) () : basic__conditions =
  {
    ip_subnetworks;
    members;
    negate;
    regions;
    required_access_levels;
    device_policy;
    vpc_network_sources;
  }

let basic ?combining_function ~conditions () : basic =
  { combining_function; conditions }

let custom__expr ?description ?location ?title ~expression () :
    custom__expr =
  { description; expression; location; title }

let custom ~expr () : custom = { expr }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_access_context_manager_access_level ?description ?id
    ?(basic = []) ?(custom = []) ?timeouts ~name ~parent ~title () :
    google_access_context_manager_access_level =
  { description; id; name; parent; title; basic; custom; timeouts }

type t = {
  tf_name : string;
  description : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
  title : string prop;
}

let make ?description ?id ?(basic = []) ?(custom = []) ?timeouts
    ~name ~parent ~title __id =
  let __type = "google_access_context_manager_access_level" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       title = Prop.computed __type __id "title";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_access_context_manager_access_level
        (google_access_context_manager_access_level ?description ?id
           ~basic ~custom ?timeouts ~name ~parent ~title ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?(basic = []) ?(custom = [])
    ?timeouts ~name ~parent ~title __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~basic ~custom ?timeouts ~name ~parent
      ~title __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
