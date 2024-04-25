(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type oidc__client_secret__value = { plain_text : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : oidc__client_secret__value) -> ()

let yojson_of_oidc__client_secret__value =
  (function
   | { plain_text = v_plain_text } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_plain_text in
         ("plain_text", arg) :: bnds
       in
       `Assoc bnds
    : oidc__client_secret__value -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_oidc__client_secret__value

[@@@deriving.end]

type oidc__client_secret = {
  value : oidc__client_secret__value list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : oidc__client_secret) -> ()

let yojson_of_oidc__client_secret =
  (function
   | { value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_oidc__client_secret__value
             v_value
         in
         ("value", arg) :: bnds
       in
       `Assoc bnds
    : oidc__client_secret -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_oidc__client_secret

[@@@deriving.end]

type oidc__web_sso_config = {
  additional_scopes : string prop list option; [@option]
  assertion_claims_behavior : string prop;
  response_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : oidc__web_sso_config) -> ()

let yojson_of_oidc__web_sso_config =
  (function
   | {
       additional_scopes = v_additional_scopes;
       assertion_claims_behavior = v_assertion_claims_behavior;
       response_type = v_response_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_response_type in
         ("response_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_assertion_claims_behavior
         in
         ("assertion_claims_behavior", arg) :: bnds
       in
       let bnds =
         match v_additional_scopes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "additional_scopes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : oidc__web_sso_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_oidc__web_sso_config

[@@@deriving.end]

type oidc = {
  client_id : string prop;
  issuer_uri : string prop;
  jwks_json : string prop option; [@option]
  client_secret : oidc__client_secret list;
  web_sso_config : oidc__web_sso_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : oidc) -> ()

let yojson_of_oidc =
  (function
   | {
       client_id = v_client_id;
       issuer_uri = v_issuer_uri;
       jwks_json = v_jwks_json;
       client_secret = v_client_secret;
       web_sso_config = v_web_sso_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_oidc__web_sso_config
             v_web_sso_config
         in
         ("web_sso_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_oidc__client_secret
             v_client_secret
         in
         ("client_secret", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
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

type google_iam_workforce_pool_provider = {
  attribute_condition : string prop option; [@option]
  attribute_mapping : (string * string prop) list option; [@option]
  description : string prop option; [@option]
  disabled : bool prop option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  provider_id : string prop;
  workforce_pool_id : string prop;
  oidc : oidc list;
  saml : saml list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_iam_workforce_pool_provider) -> ()

let yojson_of_google_iam_workforce_pool_provider =
  (function
   | {
       attribute_condition = v_attribute_condition;
       attribute_mapping = v_attribute_mapping;
       description = v_description;
       disabled = v_disabled;
       display_name = v_display_name;
       id = v_id;
       location = v_location;
       provider_id = v_provider_id;
       workforce_pool_id = v_workforce_pool_id;
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
         let arg = yojson_of_list yojson_of_saml v_saml in
         ("saml", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_oidc v_oidc in
         ("oidc", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_workforce_pool_id
         in
         ("workforce_pool_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_provider_id in
         ("provider_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
    : google_iam_workforce_pool_provider ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_iam_workforce_pool_provider

[@@@deriving.end]

let oidc__client_secret__value ~plain_text () :
    oidc__client_secret__value =
  { plain_text }

let oidc__client_secret ?(value = []) () : oidc__client_secret =
  { value }

let oidc__web_sso_config ?additional_scopes
    ~assertion_claims_behavior ~response_type () :
    oidc__web_sso_config =
  { additional_scopes; assertion_claims_behavior; response_type }

let oidc ?jwks_json ?(client_secret = []) ?(web_sso_config = [])
    ~client_id ~issuer_uri () : oidc =
  { client_id; issuer_uri; jwks_json; client_secret; web_sso_config }

let saml ~idp_metadata_xml () : saml = { idp_metadata_xml }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_iam_workforce_pool_provider ?attribute_condition
    ?attribute_mapping ?description ?disabled ?display_name ?id
    ?(oidc = []) ?(saml = []) ?timeouts ~location ~provider_id
    ~workforce_pool_id () : google_iam_workforce_pool_provider =
  {
    attribute_condition;
    attribute_mapping;
    description;
    disabled;
    display_name;
    id;
    location;
    provider_id;
    workforce_pool_id;
    oidc;
    saml;
    timeouts;
  }

type t = {
  attribute_condition : string prop;
  attribute_mapping : (string * string) list prop;
  description : string prop;
  disabled : bool prop;
  display_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  provider_id : string prop;
  state : string prop;
  workforce_pool_id : string prop;
}

let make ?attribute_condition ?attribute_mapping ?description
    ?disabled ?display_name ?id ?(oidc = []) ?(saml = []) ?timeouts
    ~location ~provider_id ~workforce_pool_id __id =
  let __type = "google_iam_workforce_pool_provider" in
  let __attrs =
    ({
       attribute_condition =
         Prop.computed __type __id "attribute_condition";
       attribute_mapping =
         Prop.computed __type __id "attribute_mapping";
       description = Prop.computed __type __id "description";
       disabled = Prop.computed __type __id "disabled";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       provider_id = Prop.computed __type __id "provider_id";
       state = Prop.computed __type __id "state";
       workforce_pool_id =
         Prop.computed __type __id "workforce_pool_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_iam_workforce_pool_provider
        (google_iam_workforce_pool_provider ?attribute_condition
           ?attribute_mapping ?description ?disabled ?display_name
           ?id ~oidc ~saml ?timeouts ~location ~provider_id
           ~workforce_pool_id ());
    attrs = __attrs;
  }

let register ?tf_module ?attribute_condition ?attribute_mapping
    ?description ?disabled ?display_name ?id ?(oidc = [])
    ?(saml = []) ?timeouts ~location ~provider_id ~workforce_pool_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?attribute_condition ?attribute_mapping ?description
      ?disabled ?display_name ?id ~oidc ~saml ?timeouts ~location
      ~provider_id ~workforce_pool_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
