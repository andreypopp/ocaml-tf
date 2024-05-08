(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type device_policy__os_constraints = {
  minimum_version : string prop option; [@option]
  os_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : device_policy__os_constraints) -> ()

let yojson_of_device_policy__os_constraints =
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
    : device_policy__os_constraints ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_device_policy__os_constraints

[@@@deriving.end]

type device_policy = {
  allowed_device_management_levels : string prop list option;
      [@option]
  allowed_encryption_statuses : string prop list option; [@option]
  require_admin_approval : bool prop option; [@option]
  require_corp_owned : bool prop option; [@option]
  require_screen_lock : bool prop option; [@option]
  os_constraints : device_policy__os_constraints list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : device_policy) -> ()

let yojson_of_device_policy =
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
         if Stdlib.( = ) [] v_os_constraints then bnds
         else
           let arg =
             (yojson_of_list yojson_of_device_policy__os_constraints)
               v_os_constraints
           in
           let bnd = "os_constraints", arg in
           bnd :: bnds
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
    : device_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_device_policy

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type vpc_network_sources__vpc_subnetwork = {
  network : string prop;
  vpc_ip_subnetworks : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_network_sources__vpc_subnetwork) -> ()

let yojson_of_vpc_network_sources__vpc_subnetwork =
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
    : vpc_network_sources__vpc_subnetwork ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_network_sources__vpc_subnetwork

[@@@deriving.end]

type vpc_network_sources = {
  vpc_subnetwork : vpc_network_sources__vpc_subnetwork list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_network_sources) -> ()

let yojson_of_vpc_network_sources =
  (function
   | { vpc_subnetwork = v_vpc_subnetwork } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_vpc_subnetwork then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_vpc_network_sources__vpc_subnetwork)
               v_vpc_subnetwork
           in
           let bnd = "vpc_subnetwork", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : vpc_network_sources -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_network_sources

[@@@deriving.end]

type google_access_context_manager_access_level_condition = {
  access_level : string prop;
  id : string prop option; [@option]
  ip_subnetworks : string prop list option; [@option]
  members : string prop list option; [@option]
  negate : bool prop option; [@option]
  regions : string prop list option; [@option]
  required_access_levels : string prop list option; [@option]
  device_policy : device_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  vpc_network_sources : vpc_network_sources list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_access_context_manager_access_level_condition) -> ()

let yojson_of_google_access_context_manager_access_level_condition =
  (function
   | {
       access_level = v_access_level;
       id = v_id;
       ip_subnetworks = v_ip_subnetworks;
       members = v_members;
       negate = v_negate;
       regions = v_regions;
       required_access_levels = v_required_access_levels;
       device_policy = v_device_policy;
       timeouts = v_timeouts;
       vpc_network_sources = v_vpc_network_sources;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_vpc_network_sources then bnds
         else
           let arg =
             (yojson_of_list yojson_of_vpc_network_sources)
               v_vpc_network_sources
           in
           let bnd = "vpc_network_sources", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_device_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_device_policy) v_device_policy
           in
           let bnd = "device_policy", arg in
           bnd :: bnds
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
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_access_level in
         ("access_level", arg) :: bnds
       in
       `Assoc bnds
    : google_access_context_manager_access_level_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_google_access_context_manager_access_level_condition

[@@@deriving.end]

let device_policy__os_constraints ?minimum_version ~os_type () :
    device_policy__os_constraints =
  { minimum_version; os_type }

let device_policy ?allowed_device_management_levels
    ?allowed_encryption_statuses ?require_admin_approval
    ?require_corp_owned ?require_screen_lock ?(os_constraints = [])
    () : device_policy =
  {
    allowed_device_management_levels;
    allowed_encryption_statuses;
    require_admin_approval;
    require_corp_owned;
    require_screen_lock;
    os_constraints;
  }

let timeouts ?create ?delete () : timeouts = { create; delete }

let vpc_network_sources__vpc_subnetwork ?vpc_ip_subnetworks ~network
    () : vpc_network_sources__vpc_subnetwork =
  { network; vpc_ip_subnetworks }

let vpc_network_sources ?(vpc_subnetwork = []) () :
    vpc_network_sources =
  { vpc_subnetwork }

let google_access_context_manager_access_level_condition ?id
    ?ip_subnetworks ?members ?negate ?regions ?required_access_levels
    ?(device_policy = []) ?timeouts ?(vpc_network_sources = [])
    ~access_level () :
    google_access_context_manager_access_level_condition =
  {
    access_level;
    id;
    ip_subnetworks;
    members;
    negate;
    regions;
    required_access_levels;
    device_policy;
    timeouts;
    vpc_network_sources;
  }

type t = {
  tf_name : string;
  access_level : string prop;
  id : string prop;
  ip_subnetworks : string list prop;
  members : string list prop;
  negate : bool prop;
  regions : string list prop;
  required_access_levels : string list prop;
}

let make ?id ?ip_subnetworks ?members ?negate ?regions
    ?required_access_levels ?(device_policy = []) ?timeouts
    ?(vpc_network_sources = []) ~access_level __id =
  let __type =
    "google_access_context_manager_access_level_condition"
  in
  let __attrs =
    ({
       tf_name = __id;
       access_level = Prop.computed __type __id "access_level";
       id = Prop.computed __type __id "id";
       ip_subnetworks = Prop.computed __type __id "ip_subnetworks";
       members = Prop.computed __type __id "members";
       negate = Prop.computed __type __id "negate";
       regions = Prop.computed __type __id "regions";
       required_access_levels =
         Prop.computed __type __id "required_access_levels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_access_context_manager_access_level_condition
        (google_access_context_manager_access_level_condition ?id
           ?ip_subnetworks ?members ?negate ?regions
           ?required_access_levels ~device_policy ?timeouts
           ~vpc_network_sources ~access_level ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?ip_subnetworks ?members ?negate ?regions
    ?required_access_levels ?(device_policy = []) ?timeouts
    ?(vpc_network_sources = []) ~access_level __id =
  let (r : _ Tf_core.resource) =
    make ?id ?ip_subnetworks ?members ?negate ?regions
      ?required_access_levels ~device_policy ?timeouts
      ~vpc_network_sources ~access_level __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
