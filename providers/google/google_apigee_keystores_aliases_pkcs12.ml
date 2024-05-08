(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_subject_alternative_names then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subject_alternative_names
           in
           let bnd = "subject_alternative_names", arg in
           bnd :: bnds
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

type certs_info = {
  cert_info : certs_info__cert_info list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certs_info) -> ()

let yojson_of_certs_info =
  (function
   | { cert_info = v_cert_info } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_cert_info then bnds
         else
           let arg =
             (yojson_of_list yojson_of_certs_info__cert_info)
               v_cert_info
           in
           let bnd = "cert_info", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : certs_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certs_info

[@@@deriving.end]

type google_apigee_keystores_aliases_pkcs12 = {
  alias : string prop;
  environment : string prop;
  file : string prop;
  filehash : string prop;
  id : string prop option; [@option]
  keystore : string prop;
  org_id : string prop;
  password : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_apigee_keystores_aliases_pkcs12) -> ()

let yojson_of_google_apigee_keystores_aliases_pkcs12 =
  (function
   | {
       alias = v_alias;
       environment = v_environment;
       file = v_file;
       filehash = v_filehash;
       id = v_id;
       keystore = v_keystore;
       org_id = v_org_id;
       password = v_password;
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
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_filehash in
         ("filehash", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_file in
         ("file", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_environment in
         ("environment", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_alias in
         ("alias", arg) :: bnds
       in
       `Assoc bnds
    : google_apigee_keystores_aliases_pkcs12 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_apigee_keystores_aliases_pkcs12

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_apigee_keystores_aliases_pkcs12 ?id ?password ?timeouts
    ~alias ~environment ~file ~filehash ~keystore ~org_id () :
    google_apigee_keystores_aliases_pkcs12 =
  {
    alias;
    environment;
    file;
    filehash;
    id;
    keystore;
    org_id;
    password;
    timeouts;
  }

type t = {
  tf_name : string;
  alias : string prop;
  certs_info : certs_info list prop;
  environment : string prop;
  file : string prop;
  filehash : string prop;
  id : string prop;
  keystore : string prop;
  org_id : string prop;
  password : string prop;
  type_ : string prop;
}

let make ?id ?password ?timeouts ~alias ~environment ~file ~filehash
    ~keystore ~org_id __id =
  let __type = "google_apigee_keystores_aliases_pkcs12" in
  let __attrs =
    ({
       tf_name = __id;
       alias = Prop.computed __type __id "alias";
       certs_info = Prop.computed __type __id "certs_info";
       environment = Prop.computed __type __id "environment";
       file = Prop.computed __type __id "file";
       filehash = Prop.computed __type __id "filehash";
       id = Prop.computed __type __id "id";
       keystore = Prop.computed __type __id "keystore";
       org_id = Prop.computed __type __id "org_id";
       password = Prop.computed __type __id "password";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apigee_keystores_aliases_pkcs12
        (google_apigee_keystores_aliases_pkcs12 ?id ?password
           ?timeouts ~alias ~environment ~file ~filehash ~keystore
           ~org_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?password ?timeouts ~alias ~environment
    ~file ~filehash ~keystore ~org_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?password ?timeouts ~alias ~environment ~file ~filehash
      ~keystore ~org_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
