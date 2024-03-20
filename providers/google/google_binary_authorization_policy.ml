(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type admission_whitelist_patterns = { name_pattern : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : admission_whitelist_patterns) -> ()

let yojson_of_admission_whitelist_patterns =
  (function
   | { name_pattern = v_name_pattern } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name_pattern in
         ("name_pattern", arg) :: bnds
       in
       `Assoc bnds
    : admission_whitelist_patterns ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_admission_whitelist_patterns

[@@@deriving.end]

type cluster_admission_rules = {
  cluster : string prop;
  enforcement_mode : string prop;
  evaluation_mode : string prop;
  require_attestations_by : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_admission_rules) -> ()

let yojson_of_cluster_admission_rules =
  (function
   | {
       cluster = v_cluster;
       enforcement_mode = v_enforcement_mode;
       evaluation_mode = v_evaluation_mode;
       require_attestations_by = v_require_attestations_by;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_require_attestations_by with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "require_attestations_by", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_evaluation_mode
         in
         ("evaluation_mode", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_enforcement_mode
         in
         ("enforcement_mode", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster in
         ("cluster", arg) :: bnds
       in
       `Assoc bnds
    : cluster_admission_rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_admission_rules

[@@@deriving.end]

type default_admission_rule = {
  enforcement_mode : string prop;
  evaluation_mode : string prop;
  require_attestations_by : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_admission_rule) -> ()

let yojson_of_default_admission_rule =
  (function
   | {
       enforcement_mode = v_enforcement_mode;
       evaluation_mode = v_evaluation_mode;
       require_attestations_by = v_require_attestations_by;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_require_attestations_by with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "require_attestations_by", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_evaluation_mode
         in
         ("evaluation_mode", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_enforcement_mode
         in
         ("enforcement_mode", arg) :: bnds
       in
       `Assoc bnds
    : default_admission_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_admission_rule

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

type google_binary_authorization_policy = {
  description : string prop option; [@option]
  global_policy_evaluation_mode : string prop option; [@option]
  id : string prop option; [@option]
  project : string prop option; [@option]
  admission_whitelist_patterns : admission_whitelist_patterns list;
  cluster_admission_rules : cluster_admission_rules list;
  default_admission_rule : default_admission_rule list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_binary_authorization_policy) -> ()

let yojson_of_google_binary_authorization_policy =
  (function
   | {
       description = v_description;
       global_policy_evaluation_mode =
         v_global_policy_evaluation_mode;
       id = v_id;
       project = v_project;
       admission_whitelist_patterns = v_admission_whitelist_patterns;
       cluster_admission_rules = v_cluster_admission_rules;
       default_admission_rule = v_default_admission_rule;
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
           yojson_of_list yojson_of_default_admission_rule
             v_default_admission_rule
         in
         ("default_admission_rule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_cluster_admission_rules
             v_cluster_admission_rules
         in
         ("cluster_admission_rules", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_admission_whitelist_patterns
             v_admission_whitelist_patterns
         in
         ("admission_whitelist_patterns", arg) :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
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
         match v_global_policy_evaluation_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "global_policy_evaluation_mode", arg in
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
    : google_binary_authorization_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_binary_authorization_policy

[@@@deriving.end]

let admission_whitelist_patterns ~name_pattern () :
    admission_whitelist_patterns =
  { name_pattern }

let cluster_admission_rules ?require_attestations_by ~cluster
    ~enforcement_mode ~evaluation_mode () : cluster_admission_rules =
  {
    cluster;
    enforcement_mode;
    evaluation_mode;
    require_attestations_by;
  }

let default_admission_rule ?require_attestations_by ~enforcement_mode
    ~evaluation_mode () : default_admission_rule =
  { enforcement_mode; evaluation_mode; require_attestations_by }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_binary_authorization_policy ?description
    ?global_policy_evaluation_mode ?id ?project ?timeouts
    ~admission_whitelist_patterns ~cluster_admission_rules
    ~default_admission_rule () : google_binary_authorization_policy =
  {
    description;
    global_policy_evaluation_mode;
    id;
    project;
    admission_whitelist_patterns;
    cluster_admission_rules;
    default_admission_rule;
    timeouts;
  }

type t = {
  description : string prop;
  global_policy_evaluation_mode : string prop;
  id : string prop;
  project : string prop;
}

let make ?description ?global_policy_evaluation_mode ?id ?project
    ?timeouts ~admission_whitelist_patterns ~cluster_admission_rules
    ~default_admission_rule __id =
  let __type = "google_binary_authorization_policy" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       global_policy_evaluation_mode =
         Prop.computed __type __id "global_policy_evaluation_mode";
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_binary_authorization_policy
        (google_binary_authorization_policy ?description
           ?global_policy_evaluation_mode ?id ?project ?timeouts
           ~admission_whitelist_patterns ~cluster_admission_rules
           ~default_admission_rule ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?global_policy_evaluation_mode
    ?id ?project ?timeouts ~admission_whitelist_patterns
    ~cluster_admission_rules ~default_admission_rule __id =
  let (r : _ Tf_core.resource) =
    make ?description ?global_policy_evaluation_mode ?id ?project
      ?timeouts ~admission_whitelist_patterns
      ~cluster_admission_rules ~default_admission_rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
