(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type content_security_policy_setting = {
  mode : string prop option; [@option]
  report_uri : string prop option; [@option]
  src_list : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : content_security_policy_setting) -> ()

let yojson_of_content_security_policy_setting =
  (function
   | {
       mode = v_mode;
       report_uri = v_report_uri;
       src_list = v_src_list;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_src_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "src_list", arg in
             bnd :: bnds
       in
       let bnds =
         match v_report_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "report_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : content_security_policy_setting ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_content_security_policy_setting

[@@@deriving.end]

type widget_customizations = {
  authenticator_page_custom_link_label : string prop option;
      [@option]
  authenticator_page_custom_link_url : string prop option; [@option]
  classic_recovery_flow_email_or_username_label : string prop option;
      [@option]
  custom_link_1_label : string prop option; [@option]
  custom_link_1_url : string prop option; [@option]
  custom_link_2_label : string prop option; [@option]
  custom_link_2_url : string prop option; [@option]
  forgot_password_label : string prop option; [@option]
  forgot_password_url : string prop option; [@option]
  help_label : string prop option; [@option]
  help_url : string prop option; [@option]
  password_info_tip : string prop option; [@option]
  password_label : string prop option; [@option]
  show_password_visibility_toggle : bool prop option; [@option]
  show_user_identifier : bool prop option; [@option]
  sign_in_label : string prop option; [@option]
  unlock_account_label : string prop option; [@option]
  unlock_account_url : string prop option; [@option]
  username_info_tip : string prop option; [@option]
  username_label : string prop option; [@option]
  widget_generation : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : widget_customizations) -> ()

let yojson_of_widget_customizations =
  (function
   | {
       authenticator_page_custom_link_label =
         v_authenticator_page_custom_link_label;
       authenticator_page_custom_link_url =
         v_authenticator_page_custom_link_url;
       classic_recovery_flow_email_or_username_label =
         v_classic_recovery_flow_email_or_username_label;
       custom_link_1_label = v_custom_link_1_label;
       custom_link_1_url = v_custom_link_1_url;
       custom_link_2_label = v_custom_link_2_label;
       custom_link_2_url = v_custom_link_2_url;
       forgot_password_label = v_forgot_password_label;
       forgot_password_url = v_forgot_password_url;
       help_label = v_help_label;
       help_url = v_help_url;
       password_info_tip = v_password_info_tip;
       password_label = v_password_label;
       show_password_visibility_toggle =
         v_show_password_visibility_toggle;
       show_user_identifier = v_show_user_identifier;
       sign_in_label = v_sign_in_label;
       unlock_account_label = v_unlock_account_label;
       unlock_account_url = v_unlock_account_url;
       username_info_tip = v_username_info_tip;
       username_label = v_username_label;
       widget_generation = v_widget_generation;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_widget_generation
         in
         ("widget_generation", arg) :: bnds
       in
       let bnds =
         match v_username_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "username_label", arg in
             bnd :: bnds
       in
       let bnds =
         match v_username_info_tip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "username_info_tip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_unlock_account_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "unlock_account_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_unlock_account_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "unlock_account_label", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sign_in_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sign_in_label", arg in
             bnd :: bnds
       in
       let bnds =
         match v_show_user_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "show_user_identifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_show_password_visibility_toggle with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "show_password_visibility_toggle", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password_label", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_info_tip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password_info_tip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_help_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "help_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_help_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "help_label", arg in
             bnd :: bnds
       in
       let bnds =
         match v_forgot_password_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "forgot_password_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_forgot_password_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "forgot_password_label", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_link_2_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_link_2_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_link_2_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_link_2_label", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_link_1_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_link_1_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_link_1_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_link_1_label", arg in
             bnd :: bnds
       in
       let bnds =
         match v_classic_recovery_flow_email_or_username_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "classic_recovery_flow_email_or_username_label", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_authenticator_page_custom_link_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authenticator_page_custom_link_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authenticator_page_custom_link_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authenticator_page_custom_link_label", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : widget_customizations -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_widget_customizations

[@@@deriving.end]

type okta_preview_signin_page = {
  brand_id : string prop;
  page_content : string prop;
  widget_version : string prop;
  content_security_policy_setting : content_security_policy_setting;
  widget_customizations : widget_customizations;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_preview_signin_page) -> ()

let yojson_of_okta_preview_signin_page =
  (function
   | {
       brand_id = v_brand_id;
       page_content = v_page_content;
       widget_version = v_widget_version;
       content_security_policy_setting =
         v_content_security_policy_setting;
       widget_customizations = v_widget_customizations;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_widget_customizations v_widget_customizations
         in
         ("widget_customizations", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_content_security_policy_setting
             v_content_security_policy_setting
         in
         ("content_security_policy_setting", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_widget_version
         in
         ("widget_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_page_content in
         ("page_content", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_brand_id in
         ("brand_id", arg) :: bnds
       in
       `Assoc bnds
    : okta_preview_signin_page -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_preview_signin_page

[@@@deriving.end]

let content_security_policy_setting ?mode ?report_uri ?src_list () :
    content_security_policy_setting =
  { mode; report_uri; src_list }

let widget_customizations ?authenticator_page_custom_link_label
    ?authenticator_page_custom_link_url
    ?classic_recovery_flow_email_or_username_label
    ?custom_link_1_label ?custom_link_1_url ?custom_link_2_label
    ?custom_link_2_url ?forgot_password_label ?forgot_password_url
    ?help_label ?help_url ?password_info_tip ?password_label
    ?show_password_visibility_toggle ?show_user_identifier
    ?sign_in_label ?unlock_account_label ?unlock_account_url
    ?username_info_tip ?username_label ~widget_generation () :
    widget_customizations =
  {
    authenticator_page_custom_link_label;
    authenticator_page_custom_link_url;
    classic_recovery_flow_email_or_username_label;
    custom_link_1_label;
    custom_link_1_url;
    custom_link_2_label;
    custom_link_2_url;
    forgot_password_label;
    forgot_password_url;
    help_label;
    help_url;
    password_info_tip;
    password_label;
    show_password_visibility_toggle;
    show_user_identifier;
    sign_in_label;
    unlock_account_label;
    unlock_account_url;
    username_info_tip;
    username_label;
    widget_generation;
  }

let okta_preview_signin_page ~brand_id ~page_content ~widget_version
    ~content_security_policy_setting ~widget_customizations () :
    okta_preview_signin_page =
  {
    brand_id;
    page_content;
    widget_version;
    content_security_policy_setting;
    widget_customizations;
  }

type t = {
  tf_name : string;
  brand_id : string prop;
  id : string prop;
  page_content : string prop;
  widget_version : string prop;
}

let make ~brand_id ~page_content ~widget_version
    ~content_security_policy_setting ~widget_customizations __id =
  let __type = "okta_preview_signin_page" in
  let __attrs =
    ({
       tf_name = __id;
       brand_id = Prop.computed __type __id "brand_id";
       id = Prop.computed __type __id "id";
       page_content = Prop.computed __type __id "page_content";
       widget_version = Prop.computed __type __id "widget_version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_preview_signin_page
        (okta_preview_signin_page ~brand_id ~page_content
           ~widget_version ~content_security_policy_setting
           ~widget_customizations ());
    attrs = __attrs;
  }

let register ?tf_module ~brand_id ~page_content ~widget_version
    ~content_security_policy_setting ~widget_customizations __id =
  let (r : _ Tf_core.resource) =
    make ~brand_id ~page_content ~widget_version
      ~content_security_policy_setting ~widget_customizations __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
