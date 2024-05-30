(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; read = v_read; update = v_update } ->
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
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type okta_app_swa = {
  accessibility_error_redirect_url : string prop option; [@option]
  accessibility_login_redirect_url : string prop option; [@option]
  accessibility_self_service : bool prop option; [@option]
  admin_note : string prop option; [@option]
  app_links_json : string prop option; [@option]
  auto_submit_toolbar : bool prop option; [@option]
  button_field : string prop option; [@option]
  checkbox : string prop option; [@option]
  enduser_note : string prop option; [@option]
  hide_ios : bool prop option; [@option]
  hide_web : bool prop option; [@option]
  id : string prop option; [@option]
  label : string prop;
  logo : string prop option; [@option]
  password_field : string prop option; [@option]
  preconfigured_app : string prop option; [@option]
  redirect_url : string prop option; [@option]
  status : string prop option; [@option]
  url : string prop option; [@option]
  url_regex : string prop option; [@option]
  user_name_template : string prop option; [@option]
  user_name_template_push_status : string prop option; [@option]
  user_name_template_suffix : string prop option; [@option]
  user_name_template_type : string prop option; [@option]
  username_field : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_app_swa) -> ()

let yojson_of_okta_app_swa =
  (function
   | {
       accessibility_error_redirect_url =
         v_accessibility_error_redirect_url;
       accessibility_login_redirect_url =
         v_accessibility_login_redirect_url;
       accessibility_self_service = v_accessibility_self_service;
       admin_note = v_admin_note;
       app_links_json = v_app_links_json;
       auto_submit_toolbar = v_auto_submit_toolbar;
       button_field = v_button_field;
       checkbox = v_checkbox;
       enduser_note = v_enduser_note;
       hide_ios = v_hide_ios;
       hide_web = v_hide_web;
       id = v_id;
       label = v_label;
       logo = v_logo;
       password_field = v_password_field;
       preconfigured_app = v_preconfigured_app;
       redirect_url = v_redirect_url;
       status = v_status;
       url = v_url;
       url_regex = v_url_regex;
       user_name_template = v_user_name_template;
       user_name_template_push_status =
         v_user_name_template_push_status;
       user_name_template_suffix = v_user_name_template_suffix;
       user_name_template_type = v_user_name_template_type;
       username_field = v_username_field;
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
         match v_username_field with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "username_field", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_name_template_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_name_template_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_name_template_suffix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_name_template_suffix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_name_template_push_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_name_template_push_status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_name_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_name_template", arg in
             bnd :: bnds
       in
       let bnds =
         match v_url_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "url_regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "url", arg in
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
         match v_redirect_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redirect_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preconfigured_app with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preconfigured_app", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_field with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password_field", arg in
             bnd :: bnds
       in
       let bnds =
         match v_logo with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logo", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_label in
         ("label", arg) :: bnds
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
         match v_hide_web with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "hide_web", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hide_ios with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "hide_ios", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enduser_note with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "enduser_note", arg in
             bnd :: bnds
       in
       let bnds =
         match v_checkbox with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "checkbox", arg in
             bnd :: bnds
       in
       let bnds =
         match v_button_field with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "button_field", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_submit_toolbar with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_submit_toolbar", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_links_json with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "app_links_json", arg in
             bnd :: bnds
       in
       let bnds =
         match v_admin_note with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "admin_note", arg in
             bnd :: bnds
       in
       let bnds =
         match v_accessibility_self_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "accessibility_self_service", arg in
             bnd :: bnds
       in
       let bnds =
         match v_accessibility_login_redirect_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "accessibility_login_redirect_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_accessibility_error_redirect_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "accessibility_error_redirect_url", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_app_swa -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_app_swa

[@@@deriving.end]

let timeouts ?create ?read ?update () : timeouts =
  { create; read; update }

let okta_app_swa ?accessibility_error_redirect_url
    ?accessibility_login_redirect_url ?accessibility_self_service
    ?admin_note ?app_links_json ?auto_submit_toolbar ?button_field
    ?checkbox ?enduser_note ?hide_ios ?hide_web ?id ?logo
    ?password_field ?preconfigured_app ?redirect_url ?status ?url
    ?url_regex ?user_name_template ?user_name_template_push_status
    ?user_name_template_suffix ?user_name_template_type
    ?username_field ?timeouts ~label () : okta_app_swa =
  {
    accessibility_error_redirect_url;
    accessibility_login_redirect_url;
    accessibility_self_service;
    admin_note;
    app_links_json;
    auto_submit_toolbar;
    button_field;
    checkbox;
    enduser_note;
    hide_ios;
    hide_web;
    id;
    label;
    logo;
    password_field;
    preconfigured_app;
    redirect_url;
    status;
    url;
    url_regex;
    user_name_template;
    user_name_template_push_status;
    user_name_template_suffix;
    user_name_template_type;
    username_field;
    timeouts;
  }

type t = {
  tf_name : string;
  accessibility_error_redirect_url : string prop;
  accessibility_login_redirect_url : string prop;
  accessibility_self_service : bool prop;
  admin_note : string prop;
  app_links_json : string prop;
  auto_submit_toolbar : bool prop;
  button_field : string prop;
  checkbox : string prop;
  enduser_note : string prop;
  hide_ios : bool prop;
  hide_web : bool prop;
  id : string prop;
  label : string prop;
  logo : string prop;
  logo_url : string prop;
  name : string prop;
  password_field : string prop;
  preconfigured_app : string prop;
  redirect_url : string prop;
  sign_on_mode : string prop;
  status : string prop;
  url : string prop;
  url_regex : string prop;
  user_name_template : string prop;
  user_name_template_push_status : string prop;
  user_name_template_suffix : string prop;
  user_name_template_type : string prop;
  username_field : string prop;
}

let make ?accessibility_error_redirect_url
    ?accessibility_login_redirect_url ?accessibility_self_service
    ?admin_note ?app_links_json ?auto_submit_toolbar ?button_field
    ?checkbox ?enduser_note ?hide_ios ?hide_web ?id ?logo
    ?password_field ?preconfigured_app ?redirect_url ?status ?url
    ?url_regex ?user_name_template ?user_name_template_push_status
    ?user_name_template_suffix ?user_name_template_type
    ?username_field ?timeouts ~label __id =
  let __type = "okta_app_swa" in
  let __attrs =
    ({
       tf_name = __id;
       accessibility_error_redirect_url =
         Prop.computed __type __id "accessibility_error_redirect_url";
       accessibility_login_redirect_url =
         Prop.computed __type __id "accessibility_login_redirect_url";
       accessibility_self_service =
         Prop.computed __type __id "accessibility_self_service";
       admin_note = Prop.computed __type __id "admin_note";
       app_links_json = Prop.computed __type __id "app_links_json";
       auto_submit_toolbar =
         Prop.computed __type __id "auto_submit_toolbar";
       button_field = Prop.computed __type __id "button_field";
       checkbox = Prop.computed __type __id "checkbox";
       enduser_note = Prop.computed __type __id "enduser_note";
       hide_ios = Prop.computed __type __id "hide_ios";
       hide_web = Prop.computed __type __id "hide_web";
       id = Prop.computed __type __id "id";
       label = Prop.computed __type __id "label";
       logo = Prop.computed __type __id "logo";
       logo_url = Prop.computed __type __id "logo_url";
       name = Prop.computed __type __id "name";
       password_field = Prop.computed __type __id "password_field";
       preconfigured_app =
         Prop.computed __type __id "preconfigured_app";
       redirect_url = Prop.computed __type __id "redirect_url";
       sign_on_mode = Prop.computed __type __id "sign_on_mode";
       status = Prop.computed __type __id "status";
       url = Prop.computed __type __id "url";
       url_regex = Prop.computed __type __id "url_regex";
       user_name_template =
         Prop.computed __type __id "user_name_template";
       user_name_template_push_status =
         Prop.computed __type __id "user_name_template_push_status";
       user_name_template_suffix =
         Prop.computed __type __id "user_name_template_suffix";
       user_name_template_type =
         Prop.computed __type __id "user_name_template_type";
       username_field = Prop.computed __type __id "username_field";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_app_swa
        (okta_app_swa ?accessibility_error_redirect_url
           ?accessibility_login_redirect_url
           ?accessibility_self_service ?admin_note ?app_links_json
           ?auto_submit_toolbar ?button_field ?checkbox ?enduser_note
           ?hide_ios ?hide_web ?id ?logo ?password_field
           ?preconfigured_app ?redirect_url ?status ?url ?url_regex
           ?user_name_template ?user_name_template_push_status
           ?user_name_template_suffix ?user_name_template_type
           ?username_field ?timeouts ~label ());
    attrs = __attrs;
  }

let register ?tf_module ?accessibility_error_redirect_url
    ?accessibility_login_redirect_url ?accessibility_self_service
    ?admin_note ?app_links_json ?auto_submit_toolbar ?button_field
    ?checkbox ?enduser_note ?hide_ios ?hide_web ?id ?logo
    ?password_field ?preconfigured_app ?redirect_url ?status ?url
    ?url_regex ?user_name_template ?user_name_template_push_status
    ?user_name_template_suffix ?user_name_template_type
    ?username_field ?timeouts ~label __id =
  let (r : _ Tf_core.resource) =
    make ?accessibility_error_redirect_url
      ?accessibility_login_redirect_url ?accessibility_self_service
      ?admin_note ?app_links_json ?auto_submit_toolbar ?button_field
      ?checkbox ?enduser_note ?hide_ios ?hide_web ?id ?logo
      ?password_field ?preconfigured_app ?redirect_url ?status ?url
      ?url_regex ?user_name_template ?user_name_template_push_status
      ?user_name_template_suffix ?user_name_template_type
      ?username_field ?timeouts ~label __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
