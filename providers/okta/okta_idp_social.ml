(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_idp_social = {
  account_link_action : string prop option; [@option]
  account_link_group_include : string prop list option; [@option]
  apple_kid : string prop option; [@option]
  apple_private_key : string prop option; [@option]
  apple_team_id : string prop option; [@option]
  client_id : string prop option; [@option]
  client_secret : string prop option; [@option]
  deprovisioned_action : string prop option; [@option]
  groups_action : string prop option; [@option]
  groups_assignment : string prop list option; [@option]
  groups_attribute : string prop option; [@option]
  groups_filter : string prop list option; [@option]
  id : string prop option; [@option]
  issuer_mode : string prop option; [@option]
  max_clock_skew : float prop option; [@option]
  name : string prop;
  profile_master : bool prop option; [@option]
  protocol_type : string prop option; [@option]
  provisioning_action : string prop option; [@option]
  scopes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  status : string prop option; [@option]
  subject_match_attribute : string prop option; [@option]
  subject_match_type : string prop option; [@option]
  suspended_action : string prop option; [@option]
  type_ : string prop; [@key "type"]
  username_template : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_idp_social) -> ()

let yojson_of_okta_idp_social =
  (function
   | {
       account_link_action = v_account_link_action;
       account_link_group_include = v_account_link_group_include;
       apple_kid = v_apple_kid;
       apple_private_key = v_apple_private_key;
       apple_team_id = v_apple_team_id;
       client_id = v_client_id;
       client_secret = v_client_secret;
       deprovisioned_action = v_deprovisioned_action;
       groups_action = v_groups_action;
       groups_assignment = v_groups_assignment;
       groups_attribute = v_groups_attribute;
       groups_filter = v_groups_filter;
       id = v_id;
       issuer_mode = v_issuer_mode;
       max_clock_skew = v_max_clock_skew;
       name = v_name;
       profile_master = v_profile_master;
       protocol_type = v_protocol_type;
       provisioning_action = v_provisioning_action;
       scopes = v_scopes;
       status = v_status;
       subject_match_attribute = v_subject_match_attribute;
       subject_match_type = v_subject_match_type;
       suspended_action = v_suspended_action;
       type_ = v_type_;
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
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         match v_client_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_secret", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_apple_team_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "apple_team_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_apple_private_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "apple_private_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_apple_kid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "apple_kid", arg in
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
    : okta_idp_social -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_idp_social

[@@@deriving.end]

let okta_idp_social ?account_link_action ?account_link_group_include
    ?apple_kid ?apple_private_key ?apple_team_id ?client_id
    ?client_secret ?deprovisioned_action ?groups_action
    ?groups_assignment ?groups_attribute ?groups_filter ?id
    ?issuer_mode ?max_clock_skew ?profile_master ?protocol_type
    ?provisioning_action ?status ?subject_match_attribute
    ?subject_match_type ?suspended_action ?username_template ~name
    ~scopes ~type_ () : okta_idp_social =
  {
    account_link_action;
    account_link_group_include;
    apple_kid;
    apple_private_key;
    apple_team_id;
    client_id;
    client_secret;
    deprovisioned_action;
    groups_action;
    groups_assignment;
    groups_attribute;
    groups_filter;
    id;
    issuer_mode;
    max_clock_skew;
    name;
    profile_master;
    protocol_type;
    provisioning_action;
    scopes;
    status;
    subject_match_attribute;
    subject_match_type;
    suspended_action;
    type_;
    username_template;
  }

type t = {
  tf_name : string;
  account_link_action : string prop;
  account_link_group_include : string list prop;
  apple_kid : string prop;
  apple_private_key : string prop;
  apple_team_id : string prop;
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
  max_clock_skew : float prop;
  name : string prop;
  profile_master : bool prop;
  protocol_type : string prop;
  provisioning_action : string prop;
  scopes : string list prop;
  status : string prop;
  subject_match_attribute : string prop;
  subject_match_type : string prop;
  suspended_action : string prop;
  token_binding : string prop;
  token_url : string prop;
  type_ : string prop;
  username_template : string prop;
}

let make ?account_link_action ?account_link_group_include ?apple_kid
    ?apple_private_key ?apple_team_id ?client_id ?client_secret
    ?deprovisioned_action ?groups_action ?groups_assignment
    ?groups_attribute ?groups_filter ?id ?issuer_mode ?max_clock_skew
    ?profile_master ?protocol_type ?provisioning_action ?status
    ?subject_match_attribute ?subject_match_type ?suspended_action
    ?username_template ~name ~scopes ~type_ __id =
  let __type = "okta_idp_social" in
  let __attrs =
    ({
       tf_name = __id;
       account_link_action =
         Prop.computed __type __id "account_link_action";
       account_link_group_include =
         Prop.computed __type __id "account_link_group_include";
       apple_kid = Prop.computed __type __id "apple_kid";
       apple_private_key =
         Prop.computed __type __id "apple_private_key";
       apple_team_id = Prop.computed __type __id "apple_team_id";
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
       max_clock_skew = Prop.computed __type __id "max_clock_skew";
       name = Prop.computed __type __id "name";
       profile_master = Prop.computed __type __id "profile_master";
       protocol_type = Prop.computed __type __id "protocol_type";
       provisioning_action =
         Prop.computed __type __id "provisioning_action";
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
       username_template =
         Prop.computed __type __id "username_template";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_idp_social
        (okta_idp_social ?account_link_action
           ?account_link_group_include ?apple_kid ?apple_private_key
           ?apple_team_id ?client_id ?client_secret
           ?deprovisioned_action ?groups_action ?groups_assignment
           ?groups_attribute ?groups_filter ?id ?issuer_mode
           ?max_clock_skew ?profile_master ?protocol_type
           ?provisioning_action ?status ?subject_match_attribute
           ?subject_match_type ?suspended_action ?username_template
           ~name ~scopes ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?account_link_action
    ?account_link_group_include ?apple_kid ?apple_private_key
    ?apple_team_id ?client_id ?client_secret ?deprovisioned_action
    ?groups_action ?groups_assignment ?groups_attribute
    ?groups_filter ?id ?issuer_mode ?max_clock_skew ?profile_master
    ?protocol_type ?provisioning_action ?status
    ?subject_match_attribute ?subject_match_type ?suspended_action
    ?username_template ~name ~scopes ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?account_link_action ?account_link_group_include ?apple_kid
      ?apple_private_key ?apple_team_id ?client_id ?client_secret
      ?deprovisioned_action ?groups_action ?groups_assignment
      ?groups_attribute ?groups_filter ?id ?issuer_mode
      ?max_clock_skew ?profile_master ?protocol_type
      ?provisioning_action ?status ?subject_match_attribute
      ?subject_match_type ?suspended_action ?username_template ~name
      ~scopes ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
