(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws = { account_id : string prop } [@@deriving_inline yojson_of]

let _ = fun (_ : aws) -> ()

let yojson_of_aws =
  (function
   | { account_id = v_account_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : aws -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws

[@@@deriving.end]

type oidc = {
  allowed_audiences : string prop list option; [@option]
  issuer_uri : string prop;
  jwks_json : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : oidc) -> ()

let yojson_of_oidc =
  (function
   | {
       allowed_audiences = v_allowed_audiences;
       issuer_uri = v_issuer_uri;
       jwks_json = v_jwks_json;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_jwks_json with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "jwks_json", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_issuer_uri in
         ("issuer_uri", arg) :: bnds
       in
       let bnds =
         match v_allowed_audiences with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_audiences", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : oidc -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_oidc

[@@@deriving.end]

type saml = { idp_metadata_xml : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : saml) -> ()

let yojson_of_saml =
  (function
   | { idp_metadata_xml = v_idp_metadata_xml } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_idp_metadata_xml
         in
         ("idp_metadata_xml", arg) :: bnds
       in
       `Assoc bnds
    : saml -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_saml

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
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

type google_iam_workload_identity_pool_provider = {
  attribute_condition : string prop option; [@option]
  attribute_mapping : (string * string prop) list option; [@option]
  description : string prop option; [@option]
  disabled : bool prop option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  project : string prop option; [@option]
  workload_identity_pool_id : string prop;
  workload_identity_pool_provider_id : string prop;
  aws : aws list; [@default []] [@yojson_drop_default ( = )]
  oidc : oidc list; [@default []] [@yojson_drop_default ( = )]
  saml : saml list; [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_iam_workload_identity_pool_provider) -> ()

let yojson_of_google_iam_workload_identity_pool_provider =
  (function
   | {
       attribute_condition = v_attribute_condition;
       attribute_mapping = v_attribute_mapping;
       description = v_description;
       disabled = v_disabled;
       display_name = v_display_name;
       id = v_id;
       project = v_project;
       workload_identity_pool_id = v_workload_identity_pool_id;
       workload_identity_pool_provider_id =
         v_workload_identity_pool_provider_id;
       aws = v_aws;
       oidc = v_oidc;
       saml = v_saml;
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
         if [] = v_saml then bnds
         else
           let arg = (yojson_of_list yojson_of_saml) v_saml in
           let bnd = "saml", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_oidc then bnds
         else
           let arg = (yojson_of_list yojson_of_oidc) v_oidc in
           let bnd = "oidc", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_aws then bnds
         else
           let arg = (yojson_of_list yojson_of_aws) v_aws in
           let bnd = "aws", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_workload_identity_pool_provider_id
         in
         ("workload_identity_pool_provider_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_workload_identity_pool_id
         in
         ("workload_identity_pool_id", arg) :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_attribute_mapping with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "attribute_mapping", arg in
             bnd :: bnds
       in
       let bnds =
         match v_attribute_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "attribute_condition", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_iam_workload_identity_pool_provider ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_iam_workload_identity_pool_provider

[@@@deriving.end]

let aws ~account_id () : aws = { account_id }

let oidc ?allowed_audiences ?jwks_json ~issuer_uri () : oidc =
  { allowed_audiences; issuer_uri; jwks_json }

let saml ~idp_metadata_xml () : saml = { idp_metadata_xml }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_iam_workload_identity_pool_provider ?attribute_condition
    ?attribute_mapping ?description ?disabled ?display_name ?id
    ?project ?(aws = []) ?(oidc = []) ?(saml = []) ?timeouts
    ~workload_identity_pool_id ~workload_identity_pool_provider_id ()
    : google_iam_workload_identity_pool_provider =
  {
    attribute_condition;
    attribute_mapping;
    description;
    disabled;
    display_name;
    id;
    project;
    workload_identity_pool_id;
    workload_identity_pool_provider_id;
    aws;
    oidc;
    saml;
    timeouts;
  }

type t = {
  tf_name : string;
  attribute_condition : string prop;
  attribute_mapping : (string * string) list prop;
  description : string prop;
  disabled : bool prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  workload_identity_pool_id : string prop;
  workload_identity_pool_provider_id : string prop;
}

let make ?attribute_condition ?attribute_mapping ?description
    ?disabled ?display_name ?id ?project ?(aws = []) ?(oidc = [])
    ?(saml = []) ?timeouts ~workload_identity_pool_id
    ~workload_identity_pool_provider_id __id =
  let __type = "google_iam_workload_identity_pool_provider" in
  let __attrs =
    ({
       tf_name = __id;
       attribute_condition =
         Prop.computed __type __id "attribute_condition";
       attribute_mapping =
         Prop.computed __type __id "attribute_mapping";
       description = Prop.computed __type __id "description";
       disabled = Prop.computed __type __id "disabled";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
       workload_identity_pool_id =
         Prop.computed __type __id "workload_identity_pool_id";
       workload_identity_pool_provider_id =
         Prop.computed __type __id
           "workload_identity_pool_provider_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_iam_workload_identity_pool_provider
        (google_iam_workload_identity_pool_provider
           ?attribute_condition ?attribute_mapping ?description
           ?disabled ?display_name ?id ?project ~aws ~oidc ~saml
           ?timeouts ~workload_identity_pool_id
           ~workload_identity_pool_provider_id ());
    attrs = __attrs;
  }

let register ?tf_module ?attribute_condition ?attribute_mapping
    ?description ?disabled ?display_name ?id ?project ?(aws = [])
    ?(oidc = []) ?(saml = []) ?timeouts ~workload_identity_pool_id
    ~workload_identity_pool_provider_id __id =
  let (r : _ Tf_core.resource) =
    make ?attribute_condition ?attribute_mapping ?description
      ?disabled ?display_name ?id ?project ~aws ~oidc ~saml ?timeouts
      ~workload_identity_pool_id ~workload_identity_pool_provider_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
