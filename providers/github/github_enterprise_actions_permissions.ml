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

type enabled_organizations_config = {
  organization_ids : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : enabled_organizations_config) -> ()

let yojson_of_enabled_organizations_config =
  (function
   | { organization_ids = v_organization_ids } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_organization_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_float))
               v_organization_ids
           in
           let bnd = "organization_ids", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : enabled_organizations_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_enabled_organizations_config

[@@@deriving.end]

type github_enterprise_actions_permissions = {
  allowed_actions : string prop option; [@option]
  enabled_organizations : string prop;
  enterprise_slug : string prop;
  id : string prop option; [@option]
  allowed_actions_config : allowed_actions_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  enabled_organizations_config : enabled_organizations_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_enterprise_actions_permissions) -> ()

let yojson_of_github_enterprise_actions_permissions =
  (function
   | {
       allowed_actions = v_allowed_actions;
       enabled_organizations = v_enabled_organizations;
       enterprise_slug = v_enterprise_slug;
       id = v_id;
       allowed_actions_config = v_allowed_actions_config;
       enabled_organizations_config = v_enabled_organizations_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_enabled_organizations_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_enabled_organizations_config)
               v_enabled_organizations_config
           in
           let bnd = "enabled_organizations_config", arg in
           bnd :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_enterprise_slug
         in
         ("enterprise_slug", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_enabled_organizations
         in
         ("enabled_organizations", arg) :: bnds
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
    : github_enterprise_actions_permissions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_enterprise_actions_permissions

[@@@deriving.end]

let allowed_actions_config ?patterns_allowed ?verified_allowed
    ~github_owned_allowed () : allowed_actions_config =
  { github_owned_allowed; patterns_allowed; verified_allowed }

let enabled_organizations_config ~organization_ids () :
    enabled_organizations_config =
  { organization_ids }

let github_enterprise_actions_permissions ?allowed_actions ?id
    ?(allowed_actions_config = [])
    ?(enabled_organizations_config = []) ~enabled_organizations
    ~enterprise_slug () : github_enterprise_actions_permissions =
  {
    allowed_actions;
    enabled_organizations;
    enterprise_slug;
    id;
    allowed_actions_config;
    enabled_organizations_config;
  }

type t = {
  tf_name : string;
  allowed_actions : string prop;
  enabled_organizations : string prop;
  enterprise_slug : string prop;
  id : string prop;
}

let make ?allowed_actions ?id ?(allowed_actions_config = [])
    ?(enabled_organizations_config = []) ~enabled_organizations
    ~enterprise_slug __id =
  let __type = "github_enterprise_actions_permissions" in
  let __attrs =
    ({
       tf_name = __id;
       allowed_actions = Prop.computed __type __id "allowed_actions";
       enabled_organizations =
         Prop.computed __type __id "enabled_organizations";
       enterprise_slug = Prop.computed __type __id "enterprise_slug";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_enterprise_actions_permissions
        (github_enterprise_actions_permissions ?allowed_actions ?id
           ~allowed_actions_config ~enabled_organizations_config
           ~enabled_organizations ~enterprise_slug ());
    attrs = __attrs;
  }

let register ?tf_module ?allowed_actions ?id
    ?(allowed_actions_config = [])
    ?(enabled_organizations_config = []) ~enabled_organizations
    ~enterprise_slug __id =
  let (r : _ Tf_core.resource) =
    make ?allowed_actions ?id ~allowed_actions_config
      ~enabled_organizations_config ~enabled_organizations
      ~enterprise_slug __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
