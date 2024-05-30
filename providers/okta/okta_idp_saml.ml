(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_idp_saml = {
  account_link_action : string prop option; [@option]
  account_link_group_include : string prop list option; [@option]
  acs_type : string prop option; [@option]
  deprovisioned_action : string prop option; [@option]
  groups_action : string prop option; [@option]
  groups_assignment : string prop list option; [@option]
  groups_attribute : string prop option; [@option]
  groups_filter : string prop list option; [@option]
  id : string prop option; [@option]
  issuer : string prop;
  issuer_mode : string prop option; [@option]
  kid : string prop;
  max_clock_skew : float prop option; [@option]
  name : string prop;
  name_format : string prop option; [@option]
  profile_master : bool prop option; [@option]
  provisioning_action : string prop option; [@option]
  request_signature_algorithm : string prop option; [@option]
  request_signature_scope : string prop option; [@option]
  response_signature_algorithm : string prop option; [@option]
  response_signature_scope : string prop option; [@option]
  sso_binding : string prop option; [@option]
  sso_destination : string prop option; [@option]
  sso_url : string prop;
  status : string prop option; [@option]
  subject_filter : string prop option; [@option]
  subject_format : string prop list option; [@option]
  subject_match_attribute : string prop option; [@option]
  subject_match_type : string prop option; [@option]
  suspended_action : string prop option; [@option]
  username_template : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_idp_saml) -> ()

let yojson_of_okta_idp_saml =
  (function
   | {
       account_link_action = v_account_link_action;
       account_link_group_include = v_account_link_group_include;
       acs_type = v_acs_type;
       deprovisioned_action = v_deprovisioned_action;
       groups_action = v_groups_action;
       groups_assignment = v_groups_assignment;
       groups_attribute = v_groups_attribute;
       groups_filter = v_groups_filter;
       id = v_id;
       issuer = v_issuer;
       issuer_mode = v_issuer_mode;
       kid = v_kid;
       max_clock_skew = v_max_clock_skew;
       name = v_name;
       name_format = v_name_format;
       profile_master = v_profile_master;
       provisioning_action = v_provisioning_action;
       request_signature_algorithm = v_request_signature_algorithm;
       request_signature_scope = v_request_signature_scope;
       response_signature_algorithm = v_response_signature_algorithm;
       response_signature_scope = v_response_signature_scope;
       sso_binding = v_sso_binding;
       sso_destination = v_sso_destination;
       sso_url = v_sso_url;
       status = v_status;
       subject_filter = v_subject_filter;
       subject_format = v_subject_format;
       subject_match_attribute = v_subject_match_attribute;
       subject_match_type = v_subject_match_type;
       suspended_action = v_suspended_action;
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
         match v_subject_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "subject_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subject_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subject_filter", arg in
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
         let arg = yojson_of_prop yojson_of_string v_sso_url in
         ("sso_url", arg) :: bnds
       in
       let bnds =
         match v_sso_destination with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sso_destination", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sso_binding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sso_binding", arg in
             bnd :: bnds
       in
       let bnds =
         match v_response_signature_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "response_signature_scope", arg in
             bnd :: bnds
       in
       let bnds =
         match v_response_signature_algorithm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "response_signature_algorithm", arg in
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
         match v_profile_master with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "profile_master", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_format", arg in
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
         let arg = yojson_of_prop yojson_of_string v_kid in
         ("kid", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_issuer in
         ("issuer", arg) :: bnds
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
         match v_acs_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "acs_type", arg in
             bnd :: bnds
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
    : okta_idp_saml -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_idp_saml

[@@@deriving.end]

let okta_idp_saml ?account_link_action ?account_link_group_include
    ?acs_type ?deprovisioned_action ?groups_action ?groups_assignment
    ?groups_attribute ?groups_filter ?id ?issuer_mode ?max_clock_skew
    ?name_format ?profile_master ?provisioning_action
    ?request_signature_algorithm ?request_signature_scope
    ?response_signature_algorithm ?response_signature_scope
    ?sso_binding ?sso_destination ?status ?subject_filter
    ?subject_format ?subject_match_attribute ?subject_match_type
    ?suspended_action ?username_template ~issuer ~kid ~name ~sso_url
    () : okta_idp_saml =
  {
    account_link_action;
    account_link_group_include;
    acs_type;
    deprovisioned_action;
    groups_action;
    groups_assignment;
    groups_attribute;
    groups_filter;
    id;
    issuer;
    issuer_mode;
    kid;
    max_clock_skew;
    name;
    name_format;
    profile_master;
    provisioning_action;
    request_signature_algorithm;
    request_signature_scope;
    response_signature_algorithm;
    response_signature_scope;
    sso_binding;
    sso_destination;
    sso_url;
    status;
    subject_filter;
    subject_format;
    subject_match_attribute;
    subject_match_type;
    suspended_action;
    username_template;
  }

type t = {
  tf_name : string;
  account_link_action : string prop;
  account_link_group_include : string list prop;
  acs_binding : string prop;
  acs_type : string prop;
  audience : string prop;
  deprovisioned_action : string prop;
  groups_action : string prop;
  groups_assignment : string list prop;
  groups_attribute : string prop;
  groups_filter : string list prop;
  id : string prop;
  issuer : string prop;
  issuer_mode : string prop;
  kid : string prop;
  max_clock_skew : float prop;
  name : string prop;
  name_format : string prop;
  profile_master : bool prop;
  provisioning_action : string prop;
  request_signature_algorithm : string prop;
  request_signature_scope : string prop;
  response_signature_algorithm : string prop;
  response_signature_scope : string prop;
  sso_binding : string prop;
  sso_destination : string prop;
  sso_url : string prop;
  status : string prop;
  subject_filter : string prop;
  subject_format : string list prop;
  subject_match_attribute : string prop;
  subject_match_type : string prop;
  suspended_action : string prop;
  type_ : string prop;
  user_type_id : string prop;
  username_template : string prop;
}

let make ?account_link_action ?account_link_group_include ?acs_type
    ?deprovisioned_action ?groups_action ?groups_assignment
    ?groups_attribute ?groups_filter ?id ?issuer_mode ?max_clock_skew
    ?name_format ?profile_master ?provisioning_action
    ?request_signature_algorithm ?request_signature_scope
    ?response_signature_algorithm ?response_signature_scope
    ?sso_binding ?sso_destination ?status ?subject_filter
    ?subject_format ?subject_match_attribute ?subject_match_type
    ?suspended_action ?username_template ~issuer ~kid ~name ~sso_url
    __id =
  let __type = "okta_idp_saml" in
  let __attrs =
    ({
       tf_name = __id;
       account_link_action =
         Prop.computed __type __id "account_link_action";
       account_link_group_include =
         Prop.computed __type __id "account_link_group_include";
       acs_binding = Prop.computed __type __id "acs_binding";
       acs_type = Prop.computed __type __id "acs_type";
       audience = Prop.computed __type __id "audience";
       deprovisioned_action =
         Prop.computed __type __id "deprovisioned_action";
       groups_action = Prop.computed __type __id "groups_action";
       groups_assignment =
         Prop.computed __type __id "groups_assignment";
       groups_attribute =
         Prop.computed __type __id "groups_attribute";
       groups_filter = Prop.computed __type __id "groups_filter";
       id = Prop.computed __type __id "id";
       issuer = Prop.computed __type __id "issuer";
       issuer_mode = Prop.computed __type __id "issuer_mode";
       kid = Prop.computed __type __id "kid";
       max_clock_skew = Prop.computed __type __id "max_clock_skew";
       name = Prop.computed __type __id "name";
       name_format = Prop.computed __type __id "name_format";
       profile_master = Prop.computed __type __id "profile_master";
       provisioning_action =
         Prop.computed __type __id "provisioning_action";
       request_signature_algorithm =
         Prop.computed __type __id "request_signature_algorithm";
       request_signature_scope =
         Prop.computed __type __id "request_signature_scope";
       response_signature_algorithm =
         Prop.computed __type __id "response_signature_algorithm";
       response_signature_scope =
         Prop.computed __type __id "response_signature_scope";
       sso_binding = Prop.computed __type __id "sso_binding";
       sso_destination = Prop.computed __type __id "sso_destination";
       sso_url = Prop.computed __type __id "sso_url";
       status = Prop.computed __type __id "status";
       subject_filter = Prop.computed __type __id "subject_filter";
       subject_format = Prop.computed __type __id "subject_format";
       subject_match_attribute =
         Prop.computed __type __id "subject_match_attribute";
       subject_match_type =
         Prop.computed __type __id "subject_match_type";
       suspended_action =
         Prop.computed __type __id "suspended_action";
       type_ = Prop.computed __type __id "type";
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
      yojson_of_okta_idp_saml
        (okta_idp_saml ?account_link_action
           ?account_link_group_include ?acs_type
           ?deprovisioned_action ?groups_action ?groups_assignment
           ?groups_attribute ?groups_filter ?id ?issuer_mode
           ?max_clock_skew ?name_format ?profile_master
           ?provisioning_action ?request_signature_algorithm
           ?request_signature_scope ?response_signature_algorithm
           ?response_signature_scope ?sso_binding ?sso_destination
           ?status ?subject_filter ?subject_format
           ?subject_match_attribute ?subject_match_type
           ?suspended_action ?username_template ~issuer ~kid ~name
           ~sso_url ());
    attrs = __attrs;
  }

let register ?tf_module ?account_link_action
    ?account_link_group_include ?acs_type ?deprovisioned_action
    ?groups_action ?groups_assignment ?groups_attribute
    ?groups_filter ?id ?issuer_mode ?max_clock_skew ?name_format
    ?profile_master ?provisioning_action ?request_signature_algorithm
    ?request_signature_scope ?response_signature_algorithm
    ?response_signature_scope ?sso_binding ?sso_destination ?status
    ?subject_filter ?subject_format ?subject_match_attribute
    ?subject_match_type ?suspended_action ?username_template ~issuer
    ~kid ~name ~sso_url __id =
  let (r : _ Tf_core.resource) =
    make ?account_link_action ?account_link_group_include ?acs_type
      ?deprovisioned_action ?groups_action ?groups_assignment
      ?groups_attribute ?groups_filter ?id ?issuer_mode
      ?max_clock_skew ?name_format ?profile_master
      ?provisioning_action ?request_signature_algorithm
      ?request_signature_scope ?response_signature_algorithm
      ?response_signature_scope ?sso_binding ?sso_destination ?status
      ?subject_filter ?subject_format ?subject_match_attribute
      ?subject_match_type ?suspended_action ?username_template
      ~issuer ~kid ~name ~sso_url __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
