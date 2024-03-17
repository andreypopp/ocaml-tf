(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_apigee_keystores_aliases_pkcs12__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_apigee_keystores_aliases_pkcs12__timeouts *)

type google_apigee_keystores_aliases_pkcs12__certs_info__cert_info = {
  basic_constraints : string;  (** basic_constraints *)
  expiry_date : string;  (** expiry_date *)
  is_valid : string;  (** is_valid *)
  issuer : string;  (** issuer *)
  public_key : string;  (** public_key *)
  serial_number : string;  (** serial_number *)
  sig_alg_name : string;  (** sig_alg_name *)
  subject : string;  (** subject *)
  subject_alternative_names : string list;
      (** subject_alternative_names *)
  valid_from : string;  (** valid_from *)
  version : float;  (** version *)
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
  alias : string;  (** Alias Name *)
  environment : string;  (** Environment associated with the alias *)
  file : string;  (** Cert content *)
  filehash : string;  (** Hash of the pkcs file *)
  id : string option; [@option]  (** id *)
  keystore : string;  (** Keystore Name *)
  org_id : string;  (** Organization ID associated with the alias *)
  password : string option; [@option]
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
