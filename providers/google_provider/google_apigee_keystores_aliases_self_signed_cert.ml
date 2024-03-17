(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_apigee_keystores_aliases_self_signed_cert__subject = {
  common_name : string option; [@option]
      (** Common name of the organization. Maximum length is 64 characters. *)
  country_code : string option; [@option]
      (** Two-letter country code. Example, IN for India, US for United States of America. *)
  email : string option; [@option]
      (** Email address. Max 255 characters. *)
  locality : string option; [@option]
      (** City or town name. Maximum length is 128 characters. *)
  org : string option; [@option]
      (** Organization name. Maximum length is 64 characters. *)
  org_unit : string option; [@option]
      (** Organization team name. Maximum length is 64 characters. *)
  state : string option; [@option]
      (** State or district name. Maximum length is 128 characters. *)
}
[@@deriving yojson_of]
(** Subject details. *)

type google_apigee_keystores_aliases_self_signed_cert__subject_alternative_dns_names = {
  subject_alternative_name : string option; [@option]
      (** Subject Alternative Name *)
}
[@@deriving yojson_of]
(** List of alternative host names. Maximum length is 255 characters for each value. *)

type google_apigee_keystores_aliases_self_signed_cert__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_apigee_keystores_aliases_self_signed_cert__timeouts *)

type google_apigee_keystores_aliases_self_signed_cert__certs_info__cert_info = {
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

type google_apigee_keystores_aliases_self_signed_cert__certs_info = {
  cert_info :
    google_apigee_keystores_aliases_self_signed_cert__certs_info__cert_info
    list;
      (** cert_info *)
}
[@@deriving yojson_of]

type google_apigee_keystores_aliases_self_signed_cert = {
  alias : string;
      (** Alias for the key/certificate pair. Values must match the regular expression [\w\s-.]{1,255}.
This must be provided for all formats except selfsignedcert; self-signed certs may specify the alias in either
this parameter or the JSON body. *)
  cert_validity_in_days : float option; [@option]
      (** Validity duration of certificate, in days. Accepts positive non-zero value. Defaults to 365. *)
  environment : string;  (** The Apigee environment name *)
  key_size : string option; [@option]
      (** Key size. Default and maximum value is 2048 bits. *)
  keystore : string;
      (** The Apigee keystore name associated in an Apigee environment *)
  org_id : string;
      (** The Apigee Organization name associated with the Apigee environment *)
  sig_alg : string;
      (** Signature algorithm to generate private key. Valid values are SHA512withRSA, SHA384withRSA, and SHA256withRSA *)
  subject :
    google_apigee_keystores_aliases_self_signed_cert__subject list;
  subject_alternative_dns_names :
    google_apigee_keystores_aliases_self_signed_cert__subject_alternative_dns_names
    list;
  timeouts :
    google_apigee_keystores_aliases_self_signed_cert__timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_keystores_aliases_self_signed_cert *)

let google_apigee_keystores_aliases_self_signed_cert
    ?cert_validity_in_days ?key_size ?timeouts ~alias ~environment
    ~keystore ~org_id ~sig_alg ~subject
    ~subject_alternative_dns_names __resource_id =
  let __resource_type =
    "google_apigee_keystores_aliases_self_signed_cert"
  in
  let __resource =
    {
      alias;
      cert_validity_in_days;
      environment;
      key_size;
      keystore;
      org_id;
      sig_alg;
      subject;
      subject_alternative_dns_names;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_keystores_aliases_self_signed_cert
       __resource);
  ()
