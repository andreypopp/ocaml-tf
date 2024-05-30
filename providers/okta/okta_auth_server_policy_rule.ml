(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_auth_server_policy_rule = {
  access_token_lifetime_minutes : float prop option; [@option]
  auth_server_id : string prop;
  grant_type_whitelist : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  group_blacklist : string prop list option; [@option]
  group_whitelist : string prop list option; [@option]
  id : string prop option; [@option]
  inline_hook_id : string prop option; [@option]
  name : string prop;
  policy_id : string prop;
  priority : float prop;
  refresh_token_lifetime_minutes : float prop option; [@option]
  refresh_token_window_minutes : float prop option; [@option]
  scope_whitelist : string prop list option; [@option]
  status : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  user_blacklist : string prop list option; [@option]
  user_whitelist : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_auth_server_policy_rule) -> ()

let yojson_of_okta_auth_server_policy_rule =
  (function
   | {
       access_token_lifetime_minutes =
         v_access_token_lifetime_minutes;
       auth_server_id = v_auth_server_id;
       grant_type_whitelist = v_grant_type_whitelist;
       group_blacklist = v_group_blacklist;
       group_whitelist = v_group_whitelist;
       id = v_id;
       inline_hook_id = v_inline_hook_id;
       name = v_name;
       policy_id = v_policy_id;
       priority = v_priority;
       refresh_token_lifetime_minutes =
         v_refresh_token_lifetime_minutes;
       refresh_token_window_minutes = v_refresh_token_window_minutes;
       scope_whitelist = v_scope_whitelist;
       status = v_status;
       type_ = v_type_;
       user_blacklist = v_user_blacklist;
       user_whitelist = v_user_whitelist;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_whitelist with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "user_whitelist", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_blacklist with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "user_blacklist", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scope_whitelist with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "scope_whitelist", arg in
             bnd :: bnds
       in
       let bnds =
         match v_refresh_token_window_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "refresh_token_window_minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_refresh_token_lifetime_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "refresh_token_lifetime_minutes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_id in
         ("policy_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_inline_hook_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "inline_hook_id", arg in
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
         match v_group_whitelist with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "group_whitelist", arg in
             bnd :: bnds
       in
       let bnds =
         match v_group_blacklist with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "group_blacklist", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_grant_type_whitelist then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_grant_type_whitelist
           in
           let bnd = "grant_type_whitelist", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_auth_server_id
         in
         ("auth_server_id", arg) :: bnds
       in
       let bnds =
         match v_access_token_lifetime_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "access_token_lifetime_minutes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_auth_server_policy_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_auth_server_policy_rule

[@@@deriving.end]

let okta_auth_server_policy_rule ?access_token_lifetime_minutes
    ?group_blacklist ?group_whitelist ?id ?inline_hook_id
    ?refresh_token_lifetime_minutes ?refresh_token_window_minutes
    ?scope_whitelist ?status ?type_ ?user_blacklist ?user_whitelist
    ~auth_server_id ~grant_type_whitelist ~name ~policy_id ~priority
    () : okta_auth_server_policy_rule =
  {
    access_token_lifetime_minutes;
    auth_server_id;
    grant_type_whitelist;
    group_blacklist;
    group_whitelist;
    id;
    inline_hook_id;
    name;
    policy_id;
    priority;
    refresh_token_lifetime_minutes;
    refresh_token_window_minutes;
    scope_whitelist;
    status;
    type_;
    user_blacklist;
    user_whitelist;
  }

type t = {
  tf_name : string;
  access_token_lifetime_minutes : float prop;
  auth_server_id : string prop;
  grant_type_whitelist : string list prop;
  group_blacklist : string list prop;
  group_whitelist : string list prop;
  id : string prop;
  inline_hook_id : string prop;
  name : string prop;
  policy_id : string prop;
  priority : float prop;
  refresh_token_lifetime_minutes : float prop;
  refresh_token_window_minutes : float prop;
  scope_whitelist : string list prop;
  status : string prop;
  system : bool prop;
  type_ : string prop;
  user_blacklist : string list prop;
  user_whitelist : string list prop;
}

let make ?access_token_lifetime_minutes ?group_blacklist
    ?group_whitelist ?id ?inline_hook_id
    ?refresh_token_lifetime_minutes ?refresh_token_window_minutes
    ?scope_whitelist ?status ?type_ ?user_blacklist ?user_whitelist
    ~auth_server_id ~grant_type_whitelist ~name ~policy_id ~priority
    __id =
  let __type = "okta_auth_server_policy_rule" in
  let __attrs =
    ({
       tf_name = __id;
       access_token_lifetime_minutes =
         Prop.computed __type __id "access_token_lifetime_minutes";
       auth_server_id = Prop.computed __type __id "auth_server_id";
       grant_type_whitelist =
         Prop.computed __type __id "grant_type_whitelist";
       group_blacklist = Prop.computed __type __id "group_blacklist";
       group_whitelist = Prop.computed __type __id "group_whitelist";
       id = Prop.computed __type __id "id";
       inline_hook_id = Prop.computed __type __id "inline_hook_id";
       name = Prop.computed __type __id "name";
       policy_id = Prop.computed __type __id "policy_id";
       priority = Prop.computed __type __id "priority";
       refresh_token_lifetime_minutes =
         Prop.computed __type __id "refresh_token_lifetime_minutes";
       refresh_token_window_minutes =
         Prop.computed __type __id "refresh_token_window_minutes";
       scope_whitelist = Prop.computed __type __id "scope_whitelist";
       status = Prop.computed __type __id "status";
       system = Prop.computed __type __id "system";
       type_ = Prop.computed __type __id "type";
       user_blacklist = Prop.computed __type __id "user_blacklist";
       user_whitelist = Prop.computed __type __id "user_whitelist";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_auth_server_policy_rule
        (okta_auth_server_policy_rule ?access_token_lifetime_minutes
           ?group_blacklist ?group_whitelist ?id ?inline_hook_id
           ?refresh_token_lifetime_minutes
           ?refresh_token_window_minutes ?scope_whitelist ?status
           ?type_ ?user_blacklist ?user_whitelist ~auth_server_id
           ~grant_type_whitelist ~name ~policy_id ~priority ());
    attrs = __attrs;
  }

let register ?tf_module ?access_token_lifetime_minutes
    ?group_blacklist ?group_whitelist ?id ?inline_hook_id
    ?refresh_token_lifetime_minutes ?refresh_token_window_minutes
    ?scope_whitelist ?status ?type_ ?user_blacklist ?user_whitelist
    ~auth_server_id ~grant_type_whitelist ~name ~policy_id ~priority
    __id =
  let (r : _ Tf_core.resource) =
    make ?access_token_lifetime_minutes ?group_blacklist
      ?group_whitelist ?id ?inline_hook_id
      ?refresh_token_lifetime_minutes ?refresh_token_window_minutes
      ?scope_whitelist ?status ?type_ ?user_blacklist ?user_whitelist
      ~auth_server_id ~grant_type_whitelist ~name ~policy_id
      ~priority __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
