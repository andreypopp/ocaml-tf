(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_apigee_keystores_aliases_key_cert_file__certs_info__cert_info = {
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

type google_apigee_keystores_aliases_key_cert_file__certs_info = {
  cert_info :
    google_apigee_keystores_aliases_key_cert_file__certs_info__cert_info
    list;
}
[@@deriving yojson_of]
(** Chain of certificates under this alias. *)

type google_apigee_keystores_aliases_key_cert_file__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_apigee_keystores_aliases_key_cert_file__timeouts *)

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
  certs_info :
    google_apigee_keystores_aliases_key_cert_file__certs_info list;
  timeouts :
    google_apigee_keystores_aliases_key_cert_file__timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_keystores_aliases_key_cert_file *)

let google_apigee_keystores_aliases_key_cert_file ?id ?key ?password
    ?timeouts ~alias ~cert ~environment ~keystore ~org_id ~certs_info
    __resource_id =
  let __resource_type =
    "google_apigee_keystores_aliases_key_cert_file"
  in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_keystores_aliases_key_cert_file
       __resource);
  ()
