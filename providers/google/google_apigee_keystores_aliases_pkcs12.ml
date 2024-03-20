(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type certs_info__cert_info = {
  basic_constraints : string prop;  (** basic_constraints *)
  expiry_date : string prop;  (** expiry_date *)
  is_valid : string prop;  (** is_valid *)
  issuer : string prop;  (** issuer *)
  public_key : string prop;  (** public_key *)
  serial_number : string prop;  (** serial_number *)
  sig_alg_name : string prop;  (** sig_alg_name *)
  subject : string prop;  (** subject *)
  subject_alternative_names : string prop list;
      (** subject_alternative_names *)
  valid_from : string prop;  (** valid_from *)
  version : float prop;  (** version *)
}
[@@deriving yojson_of]

type certs_info = {
  cert_info : certs_info__cert_info list;  (** cert_info *)
}
[@@deriving yojson_of]

type google_apigee_keystores_aliases_pkcs12 = {
  alias : string prop;  (** Alias Name *)
  environment : string prop;
      (** Environment associated with the alias *)
  file : string prop;  (** Cert content *)
  filehash : string prop;  (** Hash of the pkcs file *)
  id : string prop option; [@option]  (** id *)
  keystore : string prop;  (** Keystore Name *)
  org_id : string prop;
      (** Organization ID associated with the alias *)
  password : string prop option; [@option]
      (** Password for the Private Key if it's encrypted *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_keystores_aliases_pkcs12 *)

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
