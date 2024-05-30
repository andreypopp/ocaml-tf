(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_app_oauth = {
  active_only : bool prop option; [@option]
  id : string prop option; [@option]
  label : string prop option; [@option]
  label_prefix : string prop option; [@option]
  skip_groups : bool prop option; [@option]
  skip_users : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_app_oauth) -> ()

let yojson_of_okta_app_oauth =
  (function
   | {
       active_only = v_active_only;
       id = v_id;
       label = v_label;
       label_prefix = v_label_prefix;
       skip_groups = v_skip_groups;
       skip_users = v_skip_users;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_skip_users with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_users", arg in
             bnd :: bnds
       in
       let bnds =
         match v_skip_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_label_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label", arg in
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
         match v_active_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "active_only", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_app_oauth -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_app_oauth

[@@@deriving.end]

let okta_app_oauth ?active_only ?id ?label ?label_prefix ?skip_groups
    ?skip_users () : okta_app_oauth =
  { active_only; id; label; label_prefix; skip_groups; skip_users }

type t = {
  tf_name : string;
  active_only : bool prop;
  auto_submit_toolbar : bool prop;
  client_id : string prop;
  client_secret : string prop;
  client_uri : string prop;
  grant_types : string list prop;
  hide_ios : bool prop;
  hide_web : bool prop;
  id : string prop;
  label : string prop;
  label_prefix : string prop;
  links : string prop;
  login_mode : string prop;
  login_scopes : string list prop;
  login_uri : string prop;
  logo_uri : string prop;
  name : string prop;
  policy_uri : string prop;
  post_logout_redirect_uris : string list prop;
  redirect_uris : string list prop;
  response_types : string list prop;
  skip_groups : bool prop;
  skip_users : bool prop;
  status : string prop;
  type_ : string prop;
  wildcard_redirect : string prop;
}

let make ?active_only ?id ?label ?label_prefix ?skip_groups
    ?skip_users __id =
  let __type = "okta_app_oauth" in
  let __attrs =
    ({
       tf_name = __id;
       active_only = Prop.computed __type __id "active_only";
       auto_submit_toolbar =
         Prop.computed __type __id "auto_submit_toolbar";
       client_id = Prop.computed __type __id "client_id";
       client_secret = Prop.computed __type __id "client_secret";
       client_uri = Prop.computed __type __id "client_uri";
       grant_types = Prop.computed __type __id "grant_types";
       hide_ios = Prop.computed __type __id "hide_ios";
       hide_web = Prop.computed __type __id "hide_web";
       id = Prop.computed __type __id "id";
       label = Prop.computed __type __id "label";
       label_prefix = Prop.computed __type __id "label_prefix";
       links = Prop.computed __type __id "links";
       login_mode = Prop.computed __type __id "login_mode";
       login_scopes = Prop.computed __type __id "login_scopes";
       login_uri = Prop.computed __type __id "login_uri";
       logo_uri = Prop.computed __type __id "logo_uri";
       name = Prop.computed __type __id "name";
       policy_uri = Prop.computed __type __id "policy_uri";
       post_logout_redirect_uris =
         Prop.computed __type __id "post_logout_redirect_uris";
       redirect_uris = Prop.computed __type __id "redirect_uris";
       response_types = Prop.computed __type __id "response_types";
       skip_groups = Prop.computed __type __id "skip_groups";
       skip_users = Prop.computed __type __id "skip_users";
       status = Prop.computed __type __id "status";
       type_ = Prop.computed __type __id "type";
       wildcard_redirect =
         Prop.computed __type __id "wildcard_redirect";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_app_oauth
        (okta_app_oauth ?active_only ?id ?label ?label_prefix
           ?skip_groups ?skip_users ());
    attrs = __attrs;
  }

let register ?tf_module ?active_only ?id ?label ?label_prefix
    ?skip_groups ?skip_users __id =
  let (r : _ Tf_core.resource) =
    make ?active_only ?id ?label ?label_prefix ?skip_groups
      ?skip_users __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
