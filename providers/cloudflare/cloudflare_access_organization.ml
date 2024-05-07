(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type custom_pages = {
  forbidden : string prop option; [@option]
  identity_denied : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_pages) -> ()

let yojson_of_custom_pages =
  (function
   | { forbidden = v_forbidden; identity_denied = v_identity_denied }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_identity_denied with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_denied", arg in
             bnd :: bnds
       in
       let bnds =
         match v_forbidden with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "forbidden", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : custom_pages -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_pages

[@@@deriving.end]

type login_design = {
  background_color : string prop option; [@option]
  footer_text : string prop option; [@option]
  header_text : string prop option; [@option]
  logo_path : string prop option; [@option]
  text_color : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : login_design) -> ()

let yojson_of_login_design =
  (function
   | {
       background_color = v_background_color;
       footer_text = v_footer_text;
       header_text = v_header_text;
       logo_path = v_logo_path;
       text_color = v_text_color;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_text_color with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "text_color", arg in
             bnd :: bnds
       in
       let bnds =
         match v_logo_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logo_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_header_text with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "header_text", arg in
             bnd :: bnds
       in
       let bnds =
         match v_footer_text with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "footer_text", arg in
             bnd :: bnds
       in
       let bnds =
         match v_background_color with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "background_color", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : login_design -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_login_design

[@@@deriving.end]

type cloudflare_access_organization = {
  account_id : string prop option; [@option]
  allow_authenticate_via_warp : bool prop option; [@option]
  auth_domain : string prop;
  auto_redirect_to_identity : bool prop option; [@option]
  id : string prop option; [@option]
  is_ui_read_only : bool prop option; [@option]
  name : string prop option; [@option]
  session_duration : string prop option; [@option]
  ui_read_only_toggle_reason : string prop option; [@option]
  user_seat_expiration_inactive_time : string prop option; [@option]
  warp_auth_session_duration : string prop option; [@option]
  zone_id : string prop option; [@option]
  custom_pages : custom_pages list;
  login_design : login_design list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_access_organization) -> ()

let yojson_of_cloudflare_access_organization =
  (function
   | {
       account_id = v_account_id;
       allow_authenticate_via_warp = v_allow_authenticate_via_warp;
       auth_domain = v_auth_domain;
       auto_redirect_to_identity = v_auto_redirect_to_identity;
       id = v_id;
       is_ui_read_only = v_is_ui_read_only;
       name = v_name;
       session_duration = v_session_duration;
       ui_read_only_toggle_reason = v_ui_read_only_toggle_reason;
       user_seat_expiration_inactive_time =
         v_user_seat_expiration_inactive_time;
       warp_auth_session_duration = v_warp_auth_session_duration;
       zone_id = v_zone_id;
       custom_pages = v_custom_pages;
       login_design = v_login_design;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_login_design v_login_design
         in
         ("login_design", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_custom_pages v_custom_pages
         in
         ("custom_pages", arg) :: bnds
       in
       let bnds =
         match v_zone_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_warp_auth_session_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "warp_auth_session_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_seat_expiration_inactive_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_seat_expiration_inactive_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ui_read_only_toggle_reason with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ui_read_only_toggle_reason", arg in
             bnd :: bnds
       in
       let bnds =
         match v_session_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "session_duration", arg in
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
       let bnds =
         match v_is_ui_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_ui_read_only", arg in
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
         match v_auto_redirect_to_identity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_redirect_to_identity", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_auth_domain in
         ("auth_domain", arg) :: bnds
       in
       let bnds =
         match v_allow_authenticate_via_warp with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_authenticate_via_warp", arg in
             bnd :: bnds
       in
       let bnds =
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudflare_access_organization ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_access_organization

[@@@deriving.end]

let custom_pages ?forbidden ?identity_denied () : custom_pages =
  { forbidden; identity_denied }

let login_design ?background_color ?footer_text ?header_text
    ?logo_path ?text_color () : login_design =
  {
    background_color;
    footer_text;
    header_text;
    logo_path;
    text_color;
  }

let cloudflare_access_organization ?account_id
    ?allow_authenticate_via_warp ?auto_redirect_to_identity ?id
    ?is_ui_read_only ?name ?session_duration
    ?ui_read_only_toggle_reason ?user_seat_expiration_inactive_time
    ?warp_auth_session_duration ?zone_id ?(custom_pages = [])
    ?(login_design = []) ~auth_domain () :
    cloudflare_access_organization =
  {
    account_id;
    allow_authenticate_via_warp;
    auth_domain;
    auto_redirect_to_identity;
    id;
    is_ui_read_only;
    name;
    session_duration;
    ui_read_only_toggle_reason;
    user_seat_expiration_inactive_time;
    warp_auth_session_duration;
    zone_id;
    custom_pages;
    login_design;
  }

type t = {
  tf_name : string;
  account_id : string prop;
  allow_authenticate_via_warp : bool prop;
  auth_domain : string prop;
  auto_redirect_to_identity : bool prop;
  id : string prop;
  is_ui_read_only : bool prop;
  name : string prop;
  session_duration : string prop;
  ui_read_only_toggle_reason : string prop;
  user_seat_expiration_inactive_time : string prop;
  warp_auth_session_duration : string prop;
  zone_id : string prop;
}

let make ?account_id ?allow_authenticate_via_warp
    ?auto_redirect_to_identity ?id ?is_ui_read_only ?name
    ?session_duration ?ui_read_only_toggle_reason
    ?user_seat_expiration_inactive_time ?warp_auth_session_duration
    ?zone_id ?(custom_pages = []) ?(login_design = []) ~auth_domain
    __id =
  let __type = "cloudflare_access_organization" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       allow_authenticate_via_warp =
         Prop.computed __type __id "allow_authenticate_via_warp";
       auth_domain = Prop.computed __type __id "auth_domain";
       auto_redirect_to_identity =
         Prop.computed __type __id "auto_redirect_to_identity";
       id = Prop.computed __type __id "id";
       is_ui_read_only = Prop.computed __type __id "is_ui_read_only";
       name = Prop.computed __type __id "name";
       session_duration =
         Prop.computed __type __id "session_duration";
       ui_read_only_toggle_reason =
         Prop.computed __type __id "ui_read_only_toggle_reason";
       user_seat_expiration_inactive_time =
         Prop.computed __type __id
           "user_seat_expiration_inactive_time";
       warp_auth_session_duration =
         Prop.computed __type __id "warp_auth_session_duration";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_access_organization
        (cloudflare_access_organization ?account_id
           ?allow_authenticate_via_warp ?auto_redirect_to_identity
           ?id ?is_ui_read_only ?name ?session_duration
           ?ui_read_only_toggle_reason
           ?user_seat_expiration_inactive_time
           ?warp_auth_session_duration ?zone_id ~custom_pages
           ~login_design ~auth_domain ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?allow_authenticate_via_warp
    ?auto_redirect_to_identity ?id ?is_ui_read_only ?name
    ?session_duration ?ui_read_only_toggle_reason
    ?user_seat_expiration_inactive_time ?warp_auth_session_duration
    ?zone_id ?(custom_pages = []) ?(login_design = []) ~auth_domain
    __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?allow_authenticate_via_warp
      ?auto_redirect_to_identity ?id ?is_ui_read_only ?name
      ?session_duration ?ui_read_only_toggle_reason
      ?user_seat_expiration_inactive_time ?warp_auth_session_duration
      ?zone_id ~custom_pages ~login_design ~auth_domain __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
