(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type allowed_actions_config = {
  github_owned_allowed : bool prop;
  patterns_allowed : string prop list option; [@option]
  verified_allowed : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : allowed_actions_config) -> ()

let yojson_of_allowed_actions_config =
  (function
   | {
       github_owned_allowed = v_github_owned_allowed;
       patterns_allowed = v_patterns_allowed;
       verified_allowed = v_verified_allowed;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_verified_allowed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "verified_allowed", arg in
             bnd :: bnds
       in
       let bnds =
         match v_patterns_allowed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "patterns_allowed", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_github_owned_allowed
         in
         ("github_owned_allowed", arg) :: bnds
       in
       `Assoc bnds
    : allowed_actions_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_allowed_actions_config

[@@@deriving.end]

type github_actions_repository_permissions = {
  allowed_actions : string prop option; [@option]
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  repository : string prop;
  allowed_actions_config : allowed_actions_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_actions_repository_permissions) -> ()

let yojson_of_github_actions_repository_permissions =
  (function
   | {
       allowed_actions = v_allowed_actions;
       enabled = v_enabled;
       id = v_id;
       repository = v_repository;
       allowed_actions_config = v_allowed_actions_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_allowed_actions_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_allowed_actions_config)
               v_allowed_actions_config
           in
           let bnd = "allowed_actions_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_actions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "allowed_actions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : github_actions_repository_permissions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_actions_repository_permissions

[@@@deriving.end]

let allowed_actions_config ?patterns_allowed ?verified_allowed
    ~github_owned_allowed () : allowed_actions_config =
  { github_owned_allowed; patterns_allowed; verified_allowed }

let github_actions_repository_permissions ?allowed_actions ?enabled
    ?id ?(allowed_actions_config = []) ~repository () :
    github_actions_repository_permissions =
  {
    allowed_actions;
    enabled;
    id;
    repository;
    allowed_actions_config;
  }

type t = {
  tf_name : string;
  allowed_actions : string prop;
  enabled : bool prop;
  id : string prop;
  repository : string prop;
}

let make ?allowed_actions ?enabled ?id ?(allowed_actions_config = [])
    ~repository __id =
  let __type = "github_actions_repository_permissions" in
  let __attrs =
    ({
       tf_name = __id;
       allowed_actions = Prop.computed __type __id "allowed_actions";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       repository = Prop.computed __type __id "repository";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_actions_repository_permissions
        (github_actions_repository_permissions ?allowed_actions
           ?enabled ?id ~allowed_actions_config ~repository ());
    attrs = __attrs;
  }

let register ?tf_module ?allowed_actions ?enabled ?id
    ?(allowed_actions_config = []) ~repository __id =
  let (r : _ Tf_core.resource) =
    make ?allowed_actions ?enabled ?id ~allowed_actions_config
      ~repository __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
