(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_idp_oidc = {
  account_link_action : string prop option; [@option]
  account_link_group_include : string prop list option; [@option]
  authorization_binding : string prop;
  authorization_url : string prop;
  client_id : string prop;
  client_secret : string prop;
  deprovisioned_action : string prop option; [@option]
  groups_action : string prop option; [@option]
  groups_assignment : string prop list option; [@option]
  groups_attribute : string prop option; [@option]
  groups_filter : string prop list option; [@option]
  id : string prop option; [@option]
  issuer_mode : string prop option; [@option]
  issuer_url : string prop;
  jwks_binding : string prop;
  jwks_url : string prop;
  max_clock_skew : float prop option; [@option]
  name : string prop;
  profile_master : bool prop option; [@option]
  protocol_type : string prop option; [@option]
  provisioning_action : string prop option; [@option]
  request_signature_algorithm : string prop option; [@option]
  request_signature_scope : string prop option; [@option]
  scopes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  status : string prop option; [@option]
  subject_match_attribute : string prop option; [@option]
  subject_match_type : string prop option; [@option]
  suspended_action : string prop option; [@option]
  token_binding : string prop;
  token_url : string prop;
  user_info_binding : string prop option; [@option]
  user_info_url : string prop option; [@option]
  username_template : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_idp_oidc) -> ()

let yojson_of_okta_idp_oidc =
  (function
   | {
       account_link_action = v_account_link_action;
       account_link_group_include = v_account_link_group_include;
       authorization_binding = v_authorization_binding;
       authorization_url = v_authorization_url;
       client_id = v_client_id;
       client_secret = v_client_secret;
       deprovisioned_action = v_deprovisioned_action;
       groups_action = v_groups_action;
       groups_assignment = v_groups_assignment;
       groups_attribute = v_groups_attribute;
       groups_filter = v_groups_filter;
       id = v_id;
       issuer_mode = v_issuer_mode;
       issuer_url = v_issuer_url;
       jwks_binding = v_jwks_binding;
       jwks_url = v_jwks_url;
       max_clock_skew = v_max_clock_skew;
       name = v_name;
       profile_master = v_profile_master;
       protocol_type = v_protocol_type;
       provisioning_action = v_provisioning_action;
       request_signature_algorithm = v_request_signature_algorithm;
       request_signature_scope = v_request_signature_scope;
       scopes = v_scopes;
       status = v_status;
       subject_match_attribute = v_subject_match_attribute;
       subject_match_type = v_subject_match_type;
       suspended_action = v_suspended_action;
       token_binding = v_token_binding;
       token_url = v_token_url;
       user_info_binding = v_user_info_binding;
       user_info_url = v_user_info_url;
       username_template = v_username_template;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_username_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "username_template", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_info_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_info_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_info_binding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_info_binding", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_token_url in
         ("token_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_token_binding in
         ("token_binding", arg) :: bnds
       in
       let bnds =
         match v_suspended_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "suspended_action", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subject_match_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subject_match_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subject_match_attribute with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subject_match_attribute", arg in
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
         if Stdlib.( = ) [] v_scopes then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_scopes
           in
           let bnd = "scopes", arg in
           bnd :: bnds
       in
       let bnds =
         match v_request_signature_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "request_signature_scope", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request_signature_algorithm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "request_signature_algorithm", arg in
             bnd :: bnds
       in
       let bnds =
         match v_provisioning_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "provisioning_action", arg in
             bnd :: bnds
       in
       let bnds =
         match v_protocol_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_profile_master with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "profile_master", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_max_clock_skew with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_clock_skew", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_jwks_url in
         ("jwks_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_jwks_binding in
         ("jwks_binding", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_issuer_url in
         ("issuer_url", arg) :: bnds
       in
       let bnds =
         match v_issuer_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "issuer_mode", arg in
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
         match v_groups_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "groups_filter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_groups_attribute with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "groups_attribute", arg in
             bnd :: bnds
       in
       let bnds =
         match v_groups_assignment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "groups_assignment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_groups_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "groups_action", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deprovisioned_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deprovisioned_action", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_secret in
         ("client_secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_authorization_url
         in
         ("authorization_url", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_authorization_binding
         in
         ("authorization_binding", arg) :: bnds
       in
       let bnds =
         match v_account_link_group_include with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "account_link_group_include", arg in
             bnd :: bnds
       in
       let bnds =
         match v_account_link_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_link_action", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_idp_oidc -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_idp_oidc

[@@@deriving.end]

let okta_idp_oidc ?account_link_action ?account_link_group_include
    ?deprovisioned_action ?groups_action ?groups_assignment
    ?groups_attribute ?groups_filter ?id ?issuer_mode ?max_clock_skew
    ?profile_master ?protocol_type ?provisioning_action
    ?request_signature_algorithm ?request_signature_scope ?status
    ?subject_match_attribute ?subject_match_type ?suspended_action
    ?user_info_binding ?user_info_url ?username_template
    ~authorization_binding ~authorization_url ~client_id
    ~client_secret ~issuer_url ~jwks_binding ~jwks_url ~name ~scopes
    ~token_binding ~token_url () : okta_idp_oidc =
  {
    account_link_action;
    account_link_group_include;
    authorization_binding;
    authorization_url;
    client_id;
    client_secret;
    deprovisioned_action;
    groups_action;
    groups_assignment;
    groups_attribute;
    groups_filter;
    id;
    issuer_mode;
    issuer_url;
    jwks_binding;
    jwks_url;
    max_clock_skew;
    name;
    profile_master;
    protocol_type;
    provisioning_action;
    request_signature_algorithm;
    request_signature_scope;
    scopes;
    status;
    subject_match_attribute;
    subject_match_type;
    suspended_action;
    token_binding;
    token_url;
    user_info_binding;
    user_info_url;
    username_template;
  }

type t = {
  tf_name : string;
  account_link_action : string prop;
  account_link_group_include : string list prop;
  authorization_binding : string prop;
  authorization_url : string prop;
  client_id : string prop;
  client_secret : string prop;
  deprovisioned_action : string prop;
  groups_action : string prop;
  groups_assignment : string list prop;
  groups_attribute : string prop;
  groups_filter : string list prop;
  id : string prop;
  issuer_mode : string prop;
  issuer_url : string prop;
  jwks_binding : string prop;
  jwks_url : string prop;
  max_clock_skew : float prop;
  name : string prop;
  profile_master : bool prop;
  protocol_type : string prop;
  provisioning_action : string prop;
  request_signature_algorithm : string prop;
  request_signature_scope : string prop;
  scopes : string list prop;
  status : string prop;
  subject_match_attribute : string prop;
  subject_match_type : string prop;
  suspended_action : string prop;
  token_binding : string prop;
  token_url : string prop;
  type_ : string prop;
  user_info_binding : string prop;
  user_info_url : string prop;
  user_type_id : string prop;
  username_template : string prop;
}

let make ?account_link_action ?account_link_group_include
    ?deprovisioned_action ?groups_action ?groups_assignment
    ?groups_attribute ?groups_filter ?id ?issuer_mode ?max_clock_skew
    ?profile_master ?protocol_type ?provisioning_action
    ?request_signature_algorithm ?request_signature_scope ?status
    ?subject_match_attribute ?subject_match_type ?suspended_action
    ?user_info_binding ?user_info_url ?username_template
    ~authorization_binding ~authorization_url ~client_id
    ~client_secret ~issuer_url ~jwks_binding ~jwks_url ~name ~scopes
    ~token_binding ~token_url __id =
  let __type = "okta_idp_oidc" in
  let __attrs =
    ({
       tf_name = __id;
       account_link_action =
         Prop.computed __type __id "account_link_action";
       account_link_group_include =
         Prop.computed __type __id "account_link_group_include";
       authorization_binding =
         Prop.computed __type __id "authorization_binding";
       authorization_url =
         Prop.computed __type __id "authorization_url";
       client_id = Prop.computed __type __id "client_id";
       client_secret = Prop.computed __type __id "client_secret";
       deprovisioned_action =
         Prop.computed __type __id "deprovisioned_action";
       groups_action = Prop.computed __type __id "groups_action";
       groups_assignment =
         Prop.computed __type __id "groups_assignment";
       groups_attribute =
         Prop.computed __type __id "groups_attribute";
       groups_filter = Prop.computed __type __id "groups_filter";
       id = Prop.computed __type __id "id";
       issuer_mode = Prop.computed __type __id "issuer_mode";
       issuer_url = Prop.computed __type __id "issuer_url";
       jwks_binding = Prop.computed __type __id "jwks_binding";
       jwks_url = Prop.computed __type __id "jwks_url";
       max_clock_skew = Prop.computed __type __id "max_clock_skew";
       name = Prop.computed __type __id "name";
       profile_master = Prop.computed __type __id "profile_master";
       protocol_type = Prop.computed __type __id "protocol_type";
       provisioning_action =
         Prop.computed __type __id "provisioning_action";
       request_signature_algorithm =
         Prop.computed __type __id "request_signature_algorithm";
       request_signature_scope =
         Prop.computed __type __id "request_signature_scope";
       scopes = Prop.computed __type __id "scopes";
       status = Prop.computed __type __id "status";
       subject_match_attribute =
         Prop.computed __type __id "subject_match_attribute";
       subject_match_type =
         Prop.computed __type __id "subject_match_type";
       suspended_action =
         Prop.computed __type __id "suspended_action";
       token_binding = Prop.computed __type __id "token_binding";
       token_url = Prop.computed __type __id "token_url";
       type_ = Prop.computed __type __id "type";
       user_info_binding =
         Prop.computed __type __id "user_info_binding";
       user_info_url = Prop.computed __type __id "user_info_url";
       user_type_id = Prop.computed __type __id "user_type_id";
       username_template =
         Prop.computed __type __id "username_template";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_idp_oidc
        (okta_idp_oidc ?account_link_action
           ?account_link_group_include ?deprovisioned_action
           ?groups_action ?groups_assignment ?groups_attribute
           ?groups_filter ?id ?issuer_mode ?max_clock_skew
           ?profile_master ?protocol_type ?provisioning_action
           ?request_signature_algorithm ?request_signature_scope
           ?status ?subject_match_attribute ?subject_match_type
           ?suspended_action ?user_info_binding ?user_info_url
           ?username_template ~authorization_binding
           ~authorization_url ~client_id ~client_secret ~issuer_url
           ~jwks_binding ~jwks_url ~name ~scopes ~token_binding
           ~token_url ());
    attrs = __attrs;
  }

let register ?tf_module ?account_link_action
    ?account_link_group_include ?deprovisioned_action ?groups_action
    ?groups_assignment ?groups_attribute ?groups_filter ?id
    ?issuer_mode ?max_clock_skew ?profile_master ?protocol_type
    ?provisioning_action ?request_signature_algorithm
    ?request_signature_scope ?status ?subject_match_attribute
    ?subject_match_type ?suspended_action ?user_info_binding
    ?user_info_url ?username_template ~authorization_binding
    ~authorization_url ~client_id ~client_secret ~issuer_url
    ~jwks_binding ~jwks_url ~name ~scopes ~token_binding ~token_url
    __id =
  let (r : _ Tf_core.resource) =
    make ?account_link_action ?account_link_group_include
      ?deprovisioned_action ?groups_action ?groups_assignment
      ?groups_attribute ?groups_filter ?id ?issuer_mode
      ?max_clock_skew ?profile_master ?protocol_type
      ?provisioning_action ?request_signature_algorithm
      ?request_signature_scope ?status ?subject_match_attribute
      ?subject_match_type ?suspended_action ?user_info_binding
      ?user_info_url ?username_template ~authorization_binding
      ~authorization_url ~client_id ~client_secret ~issuer_url
      ~jwks_binding ~jwks_url ~name ~scopes ~token_binding ~token_url
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
