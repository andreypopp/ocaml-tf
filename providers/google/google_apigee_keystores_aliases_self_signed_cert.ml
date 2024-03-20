(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type subject = {
  common_name : string prop option; [@option]
  country_code : string prop option; [@option]
  email : string prop option; [@option]
  locality : string prop option; [@option]
  org : string prop option; [@option]
  org_unit : string prop option; [@option]
  state : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : subject) -> ()

let yojson_of_subject =
  (function
   | {
       common_name = v_common_name;
       country_code = v_country_code;
       email = v_email;
       locality = v_locality;
       org = v_org;
       org_unit = v_org_unit;
       state = v_state;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_org_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "org_unit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_org with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "org", arg in
             bnd :: bnds
       in
       let bnds =
         match v_locality with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "locality", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email", arg in
             bnd :: bnds
       in
       let bnds =
         match v_country_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "country_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_common_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "common_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : subject -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_subject

[@@@deriving.end]

type subject_alternative_dns_names = {
  subject_alternative_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : subject_alternative_dns_names) -> ()

let yojson_of_subject_alternative_dns_names =
  (function
   | { subject_alternative_name = v_subject_alternative_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_subject_alternative_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subject_alternative_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : subject_alternative_dns_names ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_subject_alternative_dns_names

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type certs_info__cert_info = {
  basic_constraints : string prop;
  expiry_date : string prop;
  is_valid : string prop;
  issuer : string prop;
  public_key : string prop;
  serial_number : string prop;
  sig_alg_name : string prop;
  subject : string prop;
  subject_alternative_names : string prop list;
  valid_from : string prop;
  version : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certs_info__cert_info) -> ()

let yojson_of_certs_info__cert_info =
  (function
   | {
       basic_constraints = v_basic_constraints;
       expiry_date = v_expiry_date;
       is_valid = v_is_valid;
       issuer = v_issuer;
       public_key = v_public_key;
       serial_number = v_serial_number;
       sig_alg_name = v_sig_alg_name;
       subject = v_subject;
       subject_alternative_names = v_subject_alternative_names;
       valid_from = v_valid_from;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_valid_from in
         ("valid_from", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_subject_alternative_names
         in
         ("subject_alternative_names", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subject in
         ("subject", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sig_alg_name in
         ("sig_alg_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_serial_number in
         ("serial_number", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_public_key in
         ("public_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_issuer in
         ("issuer", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_is_valid in
         ("is_valid", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expiry_date in
         ("expiry_date", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_basic_constraints
         in
         ("basic_constraints", arg) :: bnds
       in
       `Assoc bnds
    : certs_info__cert_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certs_info__cert_info

[@@@deriving.end]

type certs_info = { cert_info : certs_info__cert_info list }
[@@deriving_inline yojson_of]

let _ = fun (_ : certs_info) -> ()

let yojson_of_certs_info =
  (function
   | { cert_info = v_cert_info } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_certs_info__cert_info v_cert_info
         in
         ("cert_info", arg) :: bnds
       in
       `Assoc bnds
    : certs_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certs_info

[@@@deriving.end]

type google_apigee_keystores_aliases_self_signed_cert = {
  alias : string prop;
  cert_validity_in_days : float prop option; [@option]
  environment : string prop;
  id : string prop option; [@option]
  key_size : string prop option; [@option]
  keystore : string prop;
  org_id : string prop;
  sig_alg : string prop;
  subject : subject list;
  subject_alternative_dns_names : subject_alternative_dns_names list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_apigee_keystores_aliases_self_signed_cert) -> ()

let yojson_of_google_apigee_keystores_aliases_self_signed_cert =
  (function
   | {
       alias = v_alias;
       cert_validity_in_days = v_cert_validity_in_days;
       environment = v_environment;
       id = v_id;
       key_size = v_key_size;
       keystore = v_keystore;
       org_id = v_org_id;
       sig_alg = v_sig_alg;
       subject = v_subject;
       subject_alternative_dns_names =
         v_subject_alternative_dns_names;
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
           yojson_of_list yojson_of_subject_alternative_dns_names
             v_subject_alternative_dns_names
         in
         ("subject_alternative_dns_names", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_subject v_subject in
         ("subject", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sig_alg in
         ("sig_alg", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_org_id in
         ("org_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_keystore in
         ("keystore", arg) :: bnds
       in
       let bnds =
         match v_key_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_size", arg in
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
         let arg = yojson_of_prop yojson_of_string v_environment in
         ("environment", arg) :: bnds
       in
       let bnds =
         match v_cert_validity_in_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cert_validity_in_days", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_alias in
         ("alias", arg) :: bnds
       in
       `Assoc bnds
    : google_apigee_keystores_aliases_self_signed_cert ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_apigee_keystores_aliases_self_signed_cert

[@@@deriving.end]

let subject ?common_name ?country_code ?email ?locality ?org
    ?org_unit ?state () : subject =
  {
    common_name;
    country_code;
    email;
    locality;
    org;
    org_unit;
    state;
  }

let subject_alternative_dns_names ?subject_alternative_name () :
    subject_alternative_dns_names =
  { subject_alternative_name }

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_apigee_keystores_aliases_self_signed_cert
    ?cert_validity_in_days ?id ?key_size ?timeouts ~alias
    ~environment ~keystore ~org_id ~sig_alg ~subject
    ~subject_alternative_dns_names () :
    google_apigee_keystores_aliases_self_signed_cert =
  {
    alias;
    cert_validity_in_days;
    environment;
    id;
    key_size;
    keystore;
    org_id;
    sig_alg;
    subject;
    subject_alternative_dns_names;
    timeouts;
  }

type t = {
  alias : string prop;
  cert_validity_in_days : float prop;
  certs_info : certs_info list prop;
  environment : string prop;
  id : string prop;
  key_size : string prop;
  keystore : string prop;
  org_id : string prop;
  sig_alg : string prop;
  type_ : string prop;
}

let make ?cert_validity_in_days ?id ?key_size ?timeouts ~alias
    ~environment ~keystore ~org_id ~sig_alg ~subject
    ~subject_alternative_dns_names __id =
  let __type = "google_apigee_keystores_aliases_self_signed_cert" in
  let __attrs =
    ({
       alias = Prop.computed __type __id "alias";
       cert_validity_in_days =
         Prop.computed __type __id "cert_validity_in_days";
       certs_info = Prop.computed __type __id "certs_info";
       environment = Prop.computed __type __id "environment";
       id = Prop.computed __type __id "id";
       key_size = Prop.computed __type __id "key_size";
       keystore = Prop.computed __type __id "keystore";
       org_id = Prop.computed __type __id "org_id";
       sig_alg = Prop.computed __type __id "sig_alg";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apigee_keystores_aliases_self_signed_cert
        (google_apigee_keystores_aliases_self_signed_cert
           ?cert_validity_in_days ?id ?key_size ?timeouts ~alias
           ~environment ~keystore ~org_id ~sig_alg ~subject
           ~subject_alternative_dns_names ());
    attrs = __attrs;
  }

let register ?tf_module ?cert_validity_in_days ?id ?key_size
    ?timeouts ~alias ~environment ~keystore ~org_id ~sig_alg ~subject
    ~subject_alternative_dns_names __id =
  let (r : _ Tf_core.resource) =
    make ?cert_validity_in_days ?id ?key_size ?timeouts ~alias
      ~environment ~keystore ~org_id ~sig_alg ~subject
      ~subject_alternative_dns_names __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
