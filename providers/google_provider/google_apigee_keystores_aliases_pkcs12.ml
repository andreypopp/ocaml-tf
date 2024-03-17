(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_apigee_keystores_aliases_pkcs12__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_apigee_keystores_aliases_pkcs12__timeouts *)

type google_apigee_keystores_aliases_pkcs12__certs_info__cert_info = {
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

type google_apigee_keystores_aliases_pkcs12__certs_info = {
  cert_info :
    google_apigee_keystores_aliases_pkcs12__certs_info__cert_info
    list;
      (** cert_info *)
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
  timeouts : google_apigee_keystores_aliases_pkcs12__timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_keystores_aliases_pkcs12 *)

let google_apigee_keystores_aliases_pkcs12 ?id ?password ?timeouts
    ~alias ~environment ~file ~filehash ~keystore ~org_id
    __resource_id =
  let __resource_type = "google_apigee_keystores_aliases_pkcs12" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_keystores_aliases_pkcs12 __resource);
  ()
