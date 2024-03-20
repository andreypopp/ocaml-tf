(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type certs_info__cert_info = {
  basic_constraints : string prop option; [@option]
  expiry_date : string prop option; [@option]
  is_valid : string prop option; [@option]
  issuer : string prop option; [@option]
  public_key : string prop option; [@option]
  serial_number : string prop option; [@option]
  sig_alg_name : string prop option; [@option]
  subject : string prop option; [@option]
  subject_alternative_names : string prop list option; [@option]
  valid_from : string prop option; [@option]
  version : float prop option; [@option]
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
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_valid_from with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "valid_from", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subject_alternative_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "subject_alternative_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subject with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subject", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sig_alg_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sig_alg_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_serial_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "serial_number", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_issuer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "issuer", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_valid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "is_valid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expiry_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expiry_date", arg in
             bnd :: bnds
       in
       let bnds =
         match v_basic_constraints with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "basic_constraints", arg in
             bnd :: bnds
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

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type google_apigee_keystores_aliases_key_cert_file = {
  alias : string prop;
  cert : string prop;
  environment : string prop;
  id : string prop option; [@option]
  key : string prop option; [@option]
  keystore : string prop;
  org_id : string prop;
  password : string prop option; [@option]
  certs_info : certs_info list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_apigee_keystores_aliases_key_cert_file) -> ()

let yojson_of_google_apigee_keystores_aliases_key_cert_file =
  (function
   | {
       alias = v_alias;
       cert = v_cert;
       environment = v_environment;
       id = v_id;
       key = v_key;
       keystore = v_keystore;
       org_id = v_org_id;
       password = v_password;
       certs_info = v_certs_info;
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
           yojson_of_list yojson_of_certs_info v_certs_info
         in
         ("certs_info", arg) :: bnds
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
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
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
         let arg = yojson_of_prop yojson_of_string v_cert in
         ("cert", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_alias in
         ("alias", arg) :: bnds
       in
       `Assoc bnds
    : google_apigee_keystores_aliases_key_cert_file ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_apigee_keystores_aliases_key_cert_file

[@@@deriving.end]

let certs_info__cert_info ?basic_constraints ?expiry_date ?is_valid
    ?issuer ?public_key ?serial_number ?sig_alg_name ?subject
    ?subject_alternative_names ?valid_from ?version () :
    certs_info__cert_info =
  {
    basic_constraints;
    expiry_date;
    is_valid;
    issuer;
    public_key;
    serial_number;
    sig_alg_name;
    subject;
    subject_alternative_names;
    valid_from;
    version;
  }

let certs_info ~cert_info () : certs_info = { cert_info }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let google_apigee_keystores_aliases_key_cert_file ?id ?key ?password
    ?timeouts ~alias ~cert ~environment ~keystore ~org_id ~certs_info
    () : google_apigee_keystores_aliases_key_cert_file =
  {
    alias;
    cert;
    environment;
    id;
    key;
    keystore;
    org_id;
    password;
    certs_info;
    timeouts;
  }

type t = {
  alias : string prop;
  cert : string prop;
  environment : string prop;
  id : string prop;
  key : string prop;
  keystore : string prop;
  org_id : string prop;
  password : string prop;
  type_ : string prop;
}

let make ?id ?key ?password ?timeouts ~alias ~cert ~environment
    ~keystore ~org_id ~certs_info __id =
  let __type = "google_apigee_keystores_aliases_key_cert_file" in
  let __attrs =
    ({
       alias = Prop.computed __type __id "alias";
       cert = Prop.computed __type __id "cert";
       environment = Prop.computed __type __id "environment";
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
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
      yojson_of_google_apigee_keystores_aliases_key_cert_file
        (google_apigee_keystores_aliases_key_cert_file ?id ?key
           ?password ?timeouts ~alias ~cert ~environment ~keystore
           ~org_id ~certs_info ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?key ?password ?timeouts ~alias ~cert
    ~environment ~keystore ~org_id ~certs_info __id =
  let (r : _ Tf_core.resource) =
    make ?id ?key ?password ?timeouts ~alias ~cert ~environment
      ~keystore ~org_id ~certs_info __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
