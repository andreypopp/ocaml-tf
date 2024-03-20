(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ides = {
  name : string prop option; [@option]
  runtime : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ides) -> ()

let yojson_of_ides =
  (function
   | { name = v_name; runtime = v_runtime } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_runtime with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "runtime", arg in
             bnd :: bnds
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
    : ides -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ides

[@@@deriving.end]

type persistent_storage = { size : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : persistent_storage) -> ()

let yojson_of_persistent_storage =
  (function
   | { size = v_size } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_size in
         ("size", arg) :: bnds
       in
       `Assoc bnds
    : persistent_storage -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_persistent_storage

[@@@deriving.end]

type repositories = {
  branch_name : string prop option; [@option]
  repository_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : repositories) -> ()

let yojson_of_repositories =
  (function
   | {
       branch_name = v_branch_name;
       repository_name = v_repository_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_repository_name
         in
         ("repository_name", arg) :: bnds
       in
       let bnds =
         match v_branch_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "branch_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : repositories -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_repositories

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

type aws_codecatalyst_dev_environment = {
  alias : string prop option; [@option]
  id : string prop option; [@option]
  inactivity_timeout_minutes : float prop option; [@option]
  instance_type : string prop;
  project_name : string prop;
  space_name : string prop;
  ides : ides list;
  persistent_storage : persistent_storage list;
  repositories : repositories list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_codecatalyst_dev_environment) -> ()

let yojson_of_aws_codecatalyst_dev_environment =
  (function
   | {
       alias = v_alias;
       id = v_id;
       inactivity_timeout_minutes = v_inactivity_timeout_minutes;
       instance_type = v_instance_type;
       project_name = v_project_name;
       space_name = v_space_name;
       ides = v_ides;
       persistent_storage = v_persistent_storage;
       repositories = v_repositories;
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
           yojson_of_list yojson_of_repositories v_repositories
         in
         ("repositories", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_persistent_storage
             v_persistent_storage
         in
         ("persistent_storage", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_ides v_ides in
         ("ides", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_space_name in
         ("space_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_name in
         ("project_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_type in
         ("instance_type", arg) :: bnds
       in
       let bnds =
         match v_inactivity_timeout_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "inactivity_timeout_minutes", arg in
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
         match v_alias with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "alias", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_codecatalyst_dev_environment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_codecatalyst_dev_environment

[@@@deriving.end]

let ides ?name ?runtime () : ides = { name; runtime }
let persistent_storage ~size () : persistent_storage = { size }

let repositories ?branch_name ~repository_name () : repositories =
  { branch_name; repository_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_codecatalyst_dev_environment ?alias ?id
    ?inactivity_timeout_minutes ?timeouts ~instance_type
    ~project_name ~space_name ~ides ~persistent_storage ~repositories
    () : aws_codecatalyst_dev_environment =
  {
    alias;
    id;
    inactivity_timeout_minutes;
    instance_type;
    project_name;
    space_name;
    ides;
    persistent_storage;
    repositories;
    timeouts;
  }

type t = {
  alias : string prop;
  id : string prop;
  inactivity_timeout_minutes : float prop;
  instance_type : string prop;
  project_name : string prop;
  space_name : string prop;
}

let make ?alias ?id ?inactivity_timeout_minutes ?timeouts
    ~instance_type ~project_name ~space_name ~ides
    ~persistent_storage ~repositories __id =
  let __type = "aws_codecatalyst_dev_environment" in
  let __attrs =
    ({
       alias = Prop.computed __type __id "alias";
       id = Prop.computed __type __id "id";
       inactivity_timeout_minutes =
         Prop.computed __type __id "inactivity_timeout_minutes";
       instance_type = Prop.computed __type __id "instance_type";
       project_name = Prop.computed __type __id "project_name";
       space_name = Prop.computed __type __id "space_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codecatalyst_dev_environment
        (aws_codecatalyst_dev_environment ?alias ?id
           ?inactivity_timeout_minutes ?timeouts ~instance_type
           ~project_name ~space_name ~ides ~persistent_storage
           ~repositories ());
    attrs = __attrs;
  }

let register ?tf_module ?alias ?id ?inactivity_timeout_minutes
    ?timeouts ~instance_type ~project_name ~space_name ~ides
    ~persistent_storage ~repositories __id =
  let (r : _ Tf_core.resource) =
    make ?alias ?id ?inactivity_timeout_minutes ?timeouts
      ~instance_type ~project_name ~space_name ~ides
      ~persistent_storage ~repositories __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
