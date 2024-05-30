(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type attribute_statements = {
  filter_type : string prop;
  filter_value : string prop;
  name : string prop;
  namespace : string prop;
  type_ : string prop; [@key "type"]
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : attribute_statements) -> ()

let yojson_of_attribute_statements =
  (function
   | {
       filter_type = v_filter_type;
       filter_value = v_filter_value;
       name = v_name;
       namespace = v_namespace;
       type_ = v_type_;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_filter_value in
         ("filter_value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_filter_type in
         ("filter_type", arg) :: bnds
       in
       `Assoc bnds
    : attribute_statements -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attribute_statements

[@@@deriving.end]

type okta_app_saml = {
  active_only : bool prop option; [@option]
  id : string prop option; [@option]
  label : string prop option; [@option]
  label_prefix : string prop option; [@option]
  request_compressed : bool prop option; [@option]
  skip_groups : bool prop option; [@option]
  skip_users : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_app_saml) -> ()

let yojson_of_okta_app_saml =
  (function
   | {
       active_only = v_active_only;
       id = v_id;
       label = v_label;
       label_prefix = v_label_prefix;
       request_compressed = v_request_compressed;
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
         match v_request_compressed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "request_compressed", arg in
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
    : okta_app_saml -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_app_saml

[@@@deriving.end]

let okta_app_saml ?active_only ?id ?label ?label_prefix
    ?request_compressed ?skip_groups ?skip_users () : okta_app_saml =
  {
    active_only;
    id;
    label;
    label_prefix;
    request_compressed;
    skip_groups;
    skip_users;
  }

type t = {
  tf_name : string;
  accessibility_error_redirect_url : string prop;
  accessibility_login_redirect_url : string prop;
  accessibility_self_service : bool prop;
  acs_endpoints : string list prop;
  active_only : bool prop;
  app_settings_json : string prop;
  assertion_signed : bool prop;
  attribute_statements : attribute_statements list prop;
  audience : string prop;
  authn_context_class_ref : string prop;
  auto_submit_toolbar : bool prop;
  default_relay_state : string prop;
  destination : string prop;
  digest_algorithm : string prop;
  features : string list prop;
  groups : string list prop;
  hide_ios : bool prop;
  hide_web : bool prop;
  honor_force_authn : bool prop;
  id : string prop;
  idp_issuer : string prop;
  inline_hook_id : string prop;
  key_id : string prop;
  label : string prop;
  label_prefix : string prop;
  links : string prop;
  name : string prop;
  recipient : string prop;
  request_compressed : bool prop;
  response_signed : bool prop;
  saml_signed_request_enabled : bool prop;
  signature_algorithm : string prop;
  single_logout_certificate : string prop;
  single_logout_issuer : string prop;
  single_logout_url : string prop;
  skip_groups : bool prop;
  skip_users : bool prop;
  sp_issuer : string prop;
  sso_url : string prop;
  status : string prop;
  subject_name_id_format : string prop;
  subject_name_id_template : string prop;
  user_name_template : string prop;
  user_name_template_push_status : string prop;
  user_name_template_suffix : string prop;
  user_name_template_type : string prop;
  users : string list prop;
}

let make ?active_only ?id ?label ?label_prefix ?request_compressed
    ?skip_groups ?skip_users __id =
  let __type = "okta_app_saml" in
  let __attrs =
    ({
       tf_name = __id;
       accessibility_error_redirect_url =
         Prop.computed __type __id "accessibility_error_redirect_url";
       accessibility_login_redirect_url =
         Prop.computed __type __id "accessibility_login_redirect_url";
       accessibility_self_service =
         Prop.computed __type __id "accessibility_self_service";
       acs_endpoints = Prop.computed __type __id "acs_endpoints";
       active_only = Prop.computed __type __id "active_only";
       app_settings_json =
         Prop.computed __type __id "app_settings_json";
       assertion_signed =
         Prop.computed __type __id "assertion_signed";
       attribute_statements =
         Prop.computed __type __id "attribute_statements";
       audience = Prop.computed __type __id "audience";
       authn_context_class_ref =
         Prop.computed __type __id "authn_context_class_ref";
       auto_submit_toolbar =
         Prop.computed __type __id "auto_submit_toolbar";
       default_relay_state =
         Prop.computed __type __id "default_relay_state";
       destination = Prop.computed __type __id "destination";
       digest_algorithm =
         Prop.computed __type __id "digest_algorithm";
       features = Prop.computed __type __id "features";
       groups = Prop.computed __type __id "groups";
       hide_ios = Prop.computed __type __id "hide_ios";
       hide_web = Prop.computed __type __id "hide_web";
       honor_force_authn =
         Prop.computed __type __id "honor_force_authn";
       id = Prop.computed __type __id "id";
       idp_issuer = Prop.computed __type __id "idp_issuer";
       inline_hook_id = Prop.computed __type __id "inline_hook_id";
       key_id = Prop.computed __type __id "key_id";
       label = Prop.computed __type __id "label";
       label_prefix = Prop.computed __type __id "label_prefix";
       links = Prop.computed __type __id "links";
       name = Prop.computed __type __id "name";
       recipient = Prop.computed __type __id "recipient";
       request_compressed =
         Prop.computed __type __id "request_compressed";
       response_signed = Prop.computed __type __id "response_signed";
       saml_signed_request_enabled =
         Prop.computed __type __id "saml_signed_request_enabled";
       signature_algorithm =
         Prop.computed __type __id "signature_algorithm";
       single_logout_certificate =
         Prop.computed __type __id "single_logout_certificate";
       single_logout_issuer =
         Prop.computed __type __id "single_logout_issuer";
       single_logout_url =
         Prop.computed __type __id "single_logout_url";
       skip_groups = Prop.computed __type __id "skip_groups";
       skip_users = Prop.computed __type __id "skip_users";
       sp_issuer = Prop.computed __type __id "sp_issuer";
       sso_url = Prop.computed __type __id "sso_url";
       status = Prop.computed __type __id "status";
       subject_name_id_format =
         Prop.computed __type __id "subject_name_id_format";
       subject_name_id_template =
         Prop.computed __type __id "subject_name_id_template";
       user_name_template =
         Prop.computed __type __id "user_name_template";
       user_name_template_push_status =
         Prop.computed __type __id "user_name_template_push_status";
       user_name_template_suffix =
         Prop.computed __type __id "user_name_template_suffix";
       user_name_template_type =
         Prop.computed __type __id "user_name_template_type";
       users = Prop.computed __type __id "users";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_app_saml
        (okta_app_saml ?active_only ?id ?label ?label_prefix
           ?request_compressed ?skip_groups ?skip_users ());
    attrs = __attrs;
  }

let register ?tf_module ?active_only ?id ?label ?label_prefix
    ?request_compressed ?skip_groups ?skip_users __id =
  let (r : _ Tf_core.resource) =
    make ?active_only ?id ?label ?label_prefix ?request_compressed
      ?skip_groups ?skip_users __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
