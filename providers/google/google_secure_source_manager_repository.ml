(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type initial_config = {
  default_branch : string prop option; [@option]
  gitignores : string prop list option; [@option]
  license : string prop option; [@option]
  readme : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : initial_config) -> ()

let yojson_of_initial_config =
  (function
   | {
       default_branch = v_default_branch;
       gitignores = v_gitignores;
       license = v_license;
       readme = v_readme;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_readme with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "readme", arg in
             bnd :: bnds
       in
       let bnds =
         match v_license with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "license", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gitignores with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "gitignores", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_branch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_branch", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : initial_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_initial_config

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

type uris = {
  api : string prop;
  git_https : string prop;
  html : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : uris) -> ()

let yojson_of_uris =
  (function
   | { api = v_api; git_https = v_git_https; html = v_html } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_html in
         ("html", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_git_https in
         ("git_https", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api in
         ("api", arg) :: bnds
       in
       `Assoc bnds
    : uris -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_uris

[@@@deriving.end]

type google_secure_source_manager_repository = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  instance : string prop;
  location : string prop;
  project : string prop option; [@option]
  repository_id : string prop;
  initial_config : initial_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_secure_source_manager_repository) -> ()

let yojson_of_google_secure_source_manager_repository =
  (function
   | {
       description = v_description;
       id = v_id;
       instance = v_instance;
       location = v_location;
       project = v_project;
       repository_id = v_repository_id;
       initial_config = v_initial_config;
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
         if Stdlib.( = ) [] v_initial_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_initial_config)
               v_initial_config
           in
           let bnd = "initial_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository_id in
         ("repository_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance in
         ("instance", arg) :: bnds
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
    : google_secure_source_manager_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_secure_source_manager_repository

[@@@deriving.end]

let initial_config ?default_branch ?gitignores ?license ?readme () :
    initial_config =
  { default_branch; gitignores; license; readme }

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_secure_source_manager_repository ?description ?id ?project
    ?(initial_config = []) ?timeouts ~instance ~location
    ~repository_id () : google_secure_source_manager_repository =
  {
    description;
    id;
    instance;
    location;
    project;
    repository_id;
    initial_config;
    timeouts;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  id : string prop;
  instance : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  repository_id : string prop;
  uid : string prop;
  update_time : string prop;
  uris : uris list prop;
}

let make ?description ?id ?project ?(initial_config = []) ?timeouts
    ~instance ~location ~repository_id __id =
  let __type = "google_secure_source_manager_repository" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       instance = Prop.computed __type __id "instance";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       repository_id = Prop.computed __type __id "repository_id";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
       uris = Prop.computed __type __id "uris";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_secure_source_manager_repository
        (google_secure_source_manager_repository ?description ?id
           ?project ~initial_config ?timeouts ~instance ~location
           ~repository_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?project
    ?(initial_config = []) ?timeouts ~instance ~location
    ~repository_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?project ~initial_config ?timeouts
      ~instance ~location ~repository_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
