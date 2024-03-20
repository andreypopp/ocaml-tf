(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type certs_info__cert_info = {
  basic_constraints : string prop option; [@option]
      (** X.509 basic constraints extension. *)
  expiry_date : string prop option; [@option]
      (** X.509 notAfter validity period in milliseconds since epoch. *)
  is_valid : string prop option; [@option]
      (** Flag that specifies whether the certificate is valid. 
Flag is set to Yes if the certificate is valid, No if expired, or Not yet if not yet valid. *)
  issuer : string prop option; [@option]  (** X.509 issuer. *)
  public_key : string prop option; [@option]
      (** Public key component of the X.509 subject public key info. *)
  serial_number : string prop option; [@option]
      (** X.509 serial number. *)
  sig_alg_name : string prop option; [@option]
      (** X.509 signatureAlgorithm. *)
  subject : string prop option; [@option]  (** X.509 subject. *)
  subject_alternative_names : string prop list option; [@option]
      (** X.509 subject alternative names (SANs) extension. *)
  valid_from : string prop option; [@option]
      (** X.509 notBefore validity period in milliseconds since epoch. *)
  version : float prop option; [@option]  (** X.509 version. *)
}
[@@deriving yojson_of]
(** List of all properties in the object. *)

type certs_info = { cert_info : certs_info__cert_info list }
[@@deriving yojson_of]
(** Chain of certificates under this alias. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_apigee_keystores_aliases_key_cert_file = {
  alias : string prop;  (** Alias Name *)
  cert : string prop;  (** Cert content *)
  environment : string prop;
      (** Environment associated with the alias *)
  id : string prop option; [@option]  (** id *)
  key : string prop option; [@option]
      (** Private Key content, omit if uploading to truststore *)
  keystore : string prop;  (** Keystore Name *)
  org_id : string prop;
      (** Organization ID associated with the alias *)
  password : string prop option; [@option]
      (** Password for the Private Key if it's encrypted *)
  certs_info : certs_info list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_keystores_aliases_key_cert_file *)

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
