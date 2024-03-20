(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type single_cluster_routing = {
  allow_transactional_writes : bool prop option; [@option]
  cluster_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : single_cluster_routing) -> ()

let yojson_of_single_cluster_routing =
  (function
   | {
       allow_transactional_writes = v_allow_transactional_writes;
       cluster_id = v_cluster_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_id in
         ("cluster_id", arg) :: bnds
       in
       let bnds =
         match v_allow_transactional_writes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_transactional_writes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : single_cluster_routing -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_single_cluster_routing

[@@@deriving.end]

type standard_isolation = { priority : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : standard_isolation) -> ()

let yojson_of_standard_isolation =
  (function
   | { priority = v_priority } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_priority in
         ("priority", arg) :: bnds
       in
       `Assoc bnds
    : standard_isolation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_standard_isolation

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

type google_bigtable_app_profile = {
  app_profile_id : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  ignore_warnings : bool prop option; [@option]
  instance : string prop option; [@option]
  multi_cluster_routing_cluster_ids : string prop list option;
      [@option]
  multi_cluster_routing_use_any : bool prop option; [@option]
  project : string prop option; [@option]
  single_cluster_routing : single_cluster_routing list;
  standard_isolation : standard_isolation list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_bigtable_app_profile) -> ()

let yojson_of_google_bigtable_app_profile =
  (function
   | {
       app_profile_id = v_app_profile_id;
       description = v_description;
       id = v_id;
       ignore_warnings = v_ignore_warnings;
       instance = v_instance;
       multi_cluster_routing_cluster_ids =
         v_multi_cluster_routing_cluster_ids;
       multi_cluster_routing_use_any =
         v_multi_cluster_routing_use_any;
       project = v_project;
       single_cluster_routing = v_single_cluster_routing;
       standard_isolation = v_standard_isolation;
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
           yojson_of_list yojson_of_standard_isolation
             v_standard_isolation
         in
         ("standard_isolation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_single_cluster_routing
             v_single_cluster_routing
         in
         ("single_cluster_routing", arg) :: bnds
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
         match v_multi_cluster_routing_use_any with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "multi_cluster_routing_use_any", arg in
             bnd :: bnds
       in
       let bnds =
         match v_multi_cluster_routing_cluster_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "multi_cluster_routing_cluster_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ignore_warnings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ignore_warnings", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_app_profile_id
         in
         ("app_profile_id", arg) :: bnds
       in
       `Assoc bnds
    : google_bigtable_app_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_bigtable_app_profile

[@@@deriving.end]

let single_cluster_routing ?allow_transactional_writes ~cluster_id ()
    : single_cluster_routing =
  { allow_transactional_writes; cluster_id }

let standard_isolation ~priority () : standard_isolation =
  { priority }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_bigtable_app_profile ?description ?id ?ignore_warnings
    ?instance ?multi_cluster_routing_cluster_ids
    ?multi_cluster_routing_use_any ?project ?timeouts ~app_profile_id
    ~single_cluster_routing ~standard_isolation () :
    google_bigtable_app_profile =
  {
    app_profile_id;
    description;
    id;
    ignore_warnings;
    instance;
    multi_cluster_routing_cluster_ids;
    multi_cluster_routing_use_any;
    project;
    single_cluster_routing;
    standard_isolation;
    timeouts;
  }

type t = {
  app_profile_id : string prop;
  description : string prop;
  id : string prop;
  ignore_warnings : bool prop;
  instance : string prop;
  multi_cluster_routing_cluster_ids : string list prop;
  multi_cluster_routing_use_any : bool prop;
  name : string prop;
  project : string prop;
}

let make ?description ?id ?ignore_warnings ?instance
    ?multi_cluster_routing_cluster_ids ?multi_cluster_routing_use_any
    ?project ?timeouts ~app_profile_id ~single_cluster_routing
    ~standard_isolation __id =
  let __type = "google_bigtable_app_profile" in
  let __attrs =
    ({
       app_profile_id = Prop.computed __type __id "app_profile_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       ignore_warnings = Prop.computed __type __id "ignore_warnings";
       instance = Prop.computed __type __id "instance";
       multi_cluster_routing_cluster_ids =
         Prop.computed __type __id
           "multi_cluster_routing_cluster_ids";
       multi_cluster_routing_use_any =
         Prop.computed __type __id "multi_cluster_routing_use_any";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigtable_app_profile
        (google_bigtable_app_profile ?description ?id
           ?ignore_warnings ?instance
           ?multi_cluster_routing_cluster_ids
           ?multi_cluster_routing_use_any ?project ?timeouts
           ~app_profile_id ~single_cluster_routing
           ~standard_isolation ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?ignore_warnings ?instance
    ?multi_cluster_routing_cluster_ids ?multi_cluster_routing_use_any
    ?project ?timeouts ~app_profile_id ~single_cluster_routing
    ~standard_isolation __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?ignore_warnings ?instance
      ?multi_cluster_routing_cluster_ids
      ?multi_cluster_routing_use_any ?project ?timeouts
      ~app_profile_id ~single_cluster_routing ~standard_isolation
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
