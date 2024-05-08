(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type repositories = unit [@@deriving_inline yojson_of]

let _ = fun (_ : repositories) -> ()

let yojson_of_repositories =
  (yojson_of_unit
    : repositories -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_repositories

[@@@deriving.end]

type ides = { name : string prop; runtime : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : ides) -> ()

let yojson_of_ides =
  (function
   | { name = v_name; runtime = v_runtime } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_runtime in
         ("runtime", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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

type aws_codecatalyst_dev_environment = {
  alias : string prop option; [@option]
  creator_id : string prop option; [@option]
  env_id : string prop;
  id : string prop option; [@option]
  project_name : string prop;
  space_name : string prop;
  tags : (string * string prop) list option; [@option]
  repositories : repositories list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_codecatalyst_dev_environment) -> ()

let yojson_of_aws_codecatalyst_dev_environment =
  (function
   | {
       alias = v_alias;
       creator_id = v_creator_id;
       env_id = v_env_id;
       id = v_id;
       project_name = v_project_name;
       space_name = v_space_name;
       tags = v_tags;
       repositories = v_repositories;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_repositories then bnds
         else
           let arg =
             (yojson_of_list yojson_of_repositories) v_repositories
           in
           let bnd = "repositories", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
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
             let bnd = "tags", arg in
             bnd :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_env_id in
         ("env_id", arg) :: bnds
       in
       let bnds =
         match v_creator_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "creator_id", arg in
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

let repositories () = ()

let aws_codecatalyst_dev_environment ?alias ?creator_id ?id ?tags
    ?(repositories = []) ~env_id ~project_name ~space_name () :
    aws_codecatalyst_dev_environment =
  {
    alias;
    creator_id;
    env_id;
    id;
    project_name;
    space_name;
    tags;
    repositories;
  }

type t = {
  tf_name : string;
  alias : string prop;
  creator_id : string prop;
  env_id : string prop;
  id : string prop;
  ides : ides list prop;
  inactivity_timeout_minutes : float prop;
  instance_type : string prop;
  last_updated_time : string prop;
  persistent_storage : persistent_storage list prop;
  project_name : string prop;
  space_name : string prop;
  status : string prop;
  status_reason : string prop;
  tags : (string * string) list prop;
}

let make ?alias ?creator_id ?id ?tags ?(repositories = []) ~env_id
    ~project_name ~space_name __id =
  let __type = "aws_codecatalyst_dev_environment" in
  let __attrs =
    ({
       tf_name = __id;
       alias = Prop.computed __type __id "alias";
       creator_id = Prop.computed __type __id "creator_id";
       env_id = Prop.computed __type __id "env_id";
       id = Prop.computed __type __id "id";
       ides = Prop.computed __type __id "ides";
       inactivity_timeout_minutes =
         Prop.computed __type __id "inactivity_timeout_minutes";
       instance_type = Prop.computed __type __id "instance_type";
       last_updated_time =
         Prop.computed __type __id "last_updated_time";
       persistent_storage =
         Prop.computed __type __id "persistent_storage";
       project_name = Prop.computed __type __id "project_name";
       space_name = Prop.computed __type __id "space_name";
       status = Prop.computed __type __id "status";
       status_reason = Prop.computed __type __id "status_reason";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codecatalyst_dev_environment
        (aws_codecatalyst_dev_environment ?alias ?creator_id ?id
           ?tags ~repositories ~env_id ~project_name ~space_name ());
    attrs = __attrs;
  }

let register ?tf_module ?alias ?creator_id ?id ?tags
    ?(repositories = []) ~env_id ~project_name ~space_name __id =
  let (r : _ Tf_core.resource) =
    make ?alias ?creator_id ?id ?tags ~repositories ~env_id
      ~project_name ~space_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
