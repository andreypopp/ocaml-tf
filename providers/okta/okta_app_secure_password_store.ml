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

type okta_app_secure_password_store = {
  accessibility_error_redirect_url : string prop option; [@option]
  accessibility_login_redirect_url : string prop option; [@option]
  accessibility_self_service : bool prop option; [@option]
  admin_note : string prop option; [@option]
  app_links_json : string prop option; [@option]
  auto_submit_toolbar : bool prop option; [@option]
  credentials_scheme : string prop option; [@option]
  enduser_note : string prop option; [@option]
  hide_ios : bool prop option; [@option]
  hide_web : bool prop option; [@option]
  id : string prop option; [@option]
  label : string prop;
  logo : string prop option; [@option]
  optional_field1 : string prop option; [@option]
  optional_field1_value : string prop option; [@option]
  optional_field2 : string prop option; [@option]
  optional_field2_value : string prop option; [@option]
  optional_field3 : string prop option; [@option]
  optional_field3_value : string prop option; [@option]
  password_field : string prop;
  reveal_password : bool prop option; [@option]
  shared_password : string prop option; [@option]
  shared_username : string prop option; [@option]
  status : string prop option; [@option]
  url : string prop;
  user_name_template : string prop option; [@option]
  user_name_template_push_status : string prop option; [@option]
  user_name_template_suffix : string prop option; [@option]
  user_name_template_type : string prop option; [@option]
  username_field : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_app_secure_password_store) -> ()

let yojson_of_okta_app_secure_password_store =
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
       credentials_scheme = v_credentials_scheme;
       enduser_note = v_enduser_note;
       hide_ios = v_hide_ios;
       hide_web = v_hide_web;
       id = v_id;
       label = v_label;
       logo = v_logo;
       optional_field1 = v_optional_field1;
       optional_field1_value = v_optional_field1_value;
       optional_field2 = v_optional_field2;
       optional_field2_value = v_optional_field2_value;
       optional_field3 = v_optional_field3;
       optional_field3_value = v_optional_field3_value;
       password_field = v_password_field;
       reveal_password = v_reveal_password;
       shared_password = v_shared_password;
       shared_username = v_shared_username;
       status = v_status;
       url = v_url;
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
         let arg =
           yojson_of_prop yojson_of_string v_username_field
         in
         ("username_field", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
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
         match v_shared_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "shared_username", arg in
             bnd :: bnds
       in
       let bnds =
         match v_shared_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "shared_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_reveal_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "reveal_password", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_password_field
         in
         ("password_field", arg) :: bnds
       in
       let bnds =
         match v_optional_field3_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "optional_field3_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_optional_field3 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "optional_field3", arg in
             bnd :: bnds
       in
       let bnds =
         match v_optional_field2_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "optional_field2_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_optional_field2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "optional_field2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_optional_field1_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "optional_field1_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_optional_field1 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "optional_field1", arg in
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
         match v_credentials_scheme with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "credentials_scheme", arg in
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
    : okta_app_secure_password_store ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_app_secure_password_store

[@@@deriving.end]

let timeouts ?create ?read ?update () : timeouts =
  { create; read; update }

let okta_app_secure_password_store ?accessibility_error_redirect_url
    ?accessibility_login_redirect_url ?accessibility_self_service
    ?admin_note ?app_links_json ?auto_submit_toolbar
    ?credentials_scheme ?enduser_note ?hide_ios ?hide_web ?id ?logo
    ?optional_field1 ?optional_field1_value ?optional_field2
    ?optional_field2_value ?optional_field3 ?optional_field3_value
    ?reveal_password ?shared_password ?shared_username ?status
    ?user_name_template ?user_name_template_push_status
    ?user_name_template_suffix ?user_name_template_type ?timeouts
    ~label ~password_field ~url ~username_field () :
    okta_app_secure_password_store =
  {
    accessibility_error_redirect_url;
    accessibility_login_redirect_url;
    accessibility_self_service;
    admin_note;
    app_links_json;
    auto_submit_toolbar;
    credentials_scheme;
    enduser_note;
    hide_ios;
    hide_web;
    id;
    label;
    logo;
    optional_field1;
    optional_field1_value;
    optional_field2;
    optional_field2_value;
    optional_field3;
    optional_field3_value;
    password_field;
    reveal_password;
    shared_password;
    shared_username;
    status;
    url;
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
  credentials_scheme : string prop;
  enduser_note : string prop;
  hide_ios : bool prop;
  hide_web : bool prop;
  id : string prop;
  label : string prop;
  logo : string prop;
  logo_url : string prop;
  name : string prop;
  optional_field1 : string prop;
  optional_field1_value : string prop;
  optional_field2 : string prop;
  optional_field2_value : string prop;
  optional_field3 : string prop;
  optional_field3_value : string prop;
  password_field : string prop;
  reveal_password : bool prop;
  shared_password : string prop;
  shared_username : string prop;
  sign_on_mode : string prop;
  status : string prop;
  url : string prop;
  user_name_template : string prop;
  user_name_template_push_status : string prop;
  user_name_template_suffix : string prop;
  user_name_template_type : string prop;
  username_field : string prop;
}

let make ?accessibility_error_redirect_url
    ?accessibility_login_redirect_url ?accessibility_self_service
    ?admin_note ?app_links_json ?auto_submit_toolbar
    ?credentials_scheme ?enduser_note ?hide_ios ?hide_web ?id ?logo
    ?optional_field1 ?optional_field1_value ?optional_field2
    ?optional_field2_value ?optional_field3 ?optional_field3_value
    ?reveal_password ?shared_password ?shared_username ?status
    ?user_name_template ?user_name_template_push_status
    ?user_name_template_suffix ?user_name_template_type ?timeouts
    ~label ~password_field ~url ~username_field __id =
  let __type = "okta_app_secure_password_store" in
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
       credentials_scheme =
         Prop.computed __type __id "credentials_scheme";
       enduser_note = Prop.computed __type __id "enduser_note";
       hide_ios = Prop.computed __type __id "hide_ios";
       hide_web = Prop.computed __type __id "hide_web";
       id = Prop.computed __type __id "id";
       label = Prop.computed __type __id "label";
       logo = Prop.computed __type __id "logo";
       logo_url = Prop.computed __type __id "logo_url";
       name = Prop.computed __type __id "name";
       optional_field1 = Prop.computed __type __id "optional_field1";
       optional_field1_value =
         Prop.computed __type __id "optional_field1_value";
       optional_field2 = Prop.computed __type __id "optional_field2";
       optional_field2_value =
         Prop.computed __type __id "optional_field2_value";
       optional_field3 = Prop.computed __type __id "optional_field3";
       optional_field3_value =
         Prop.computed __type __id "optional_field3_value";
       password_field = Prop.computed __type __id "password_field";
       reveal_password = Prop.computed __type __id "reveal_password";
       shared_password = Prop.computed __type __id "shared_password";
       shared_username = Prop.computed __type __id "shared_username";
       sign_on_mode = Prop.computed __type __id "sign_on_mode";
       status = Prop.computed __type __id "status";
       url = Prop.computed __type __id "url";
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
      yojson_of_okta_app_secure_password_store
        (okta_app_secure_password_store
           ?accessibility_error_redirect_url
           ?accessibility_login_redirect_url
           ?accessibility_self_service ?admin_note ?app_links_json
           ?auto_submit_toolbar ?credentials_scheme ?enduser_note
           ?hide_ios ?hide_web ?id ?logo ?optional_field1
           ?optional_field1_value ?optional_field2
           ?optional_field2_value ?optional_field3
           ?optional_field3_value ?reveal_password ?shared_password
           ?shared_username ?status ?user_name_template
           ?user_name_template_push_status ?user_name_template_suffix
           ?user_name_template_type ?timeouts ~label ~password_field
           ~url ~username_field ());
    attrs = __attrs;
  }

let register ?tf_module ?accessibility_error_redirect_url
    ?accessibility_login_redirect_url ?accessibility_self_service
    ?admin_note ?app_links_json ?auto_submit_toolbar
    ?credentials_scheme ?enduser_note ?hide_ios ?hide_web ?id ?logo
    ?optional_field1 ?optional_field1_value ?optional_field2
    ?optional_field2_value ?optional_field3 ?optional_field3_value
    ?reveal_password ?shared_password ?shared_username ?status
    ?user_name_template ?user_name_template_push_status
    ?user_name_template_suffix ?user_name_template_type ?timeouts
    ~label ~password_field ~url ~username_field __id =
  let (r : _ Tf_core.resource) =
    make ?accessibility_error_redirect_url
      ?accessibility_login_redirect_url ?accessibility_self_service
      ?admin_note ?app_links_json ?auto_submit_toolbar
      ?credentials_scheme ?enduser_note ?hide_ios ?hide_web ?id ?logo
      ?optional_field1 ?optional_field1_value ?optional_field2
      ?optional_field2_value ?optional_field3 ?optional_field3_value
      ?reveal_password ?shared_password ?shared_username ?status
      ?user_name_template ?user_name_template_push_status
      ?user_name_template_suffix ?user_name_template_type ?timeouts
      ~label ~password_field ~url ~username_field __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
