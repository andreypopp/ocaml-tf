(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_idp_social = {
  id : string prop option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_idp_social) -> ()

let yojson_of_okta_idp_social =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_idp_social -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_idp_social

[@@@deriving.end]

let okta_idp_social ?id ?name () : okta_idp_social = { id; name }

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

let make ?id ?name __id =
  let __type = "okta_idp_social" in
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
    json = yojson_of_okta_idp_social (okta_idp_social ?id ?name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name __id =
  let (r : _ Tf_core.resource) = make ?id ?name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
