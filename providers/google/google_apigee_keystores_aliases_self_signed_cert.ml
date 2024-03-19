(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type subject = {
  common_name : string prop option; [@option]
      (** Common name of the organization. Maximum length is 64 characters. *)
  country_code : string prop option; [@option]
      (** Two-letter country code. Example, IN for India, US for United States of America. *)
  email : string prop option; [@option]
      (** Email address. Max 255 characters. *)
  locality : string prop option; [@option]
      (** City or town name. Maximum length is 128 characters. *)
  org : string prop option; [@option]
      (** Organization name. Maximum length is 64 characters. *)
  org_unit : string prop option; [@option]
      (** Organization team name. Maximum length is 64 characters. *)
  state : string prop option; [@option]
      (** State or district name. Maximum length is 128 characters. *)
}
[@@deriving yojson_of]
(** Subject details. *)

type subject_alternative_dns_names = {
  subject_alternative_name : string prop option; [@option]
      (** Subject Alternative Name *)
}
[@@deriving yojson_of]
(** List of alternative host names. Maximum length is 255 characters for each value. *)

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

type google_apigee_keystores_aliases_self_signed_cert = {
  alias : string prop;
      (** Alias for the key/certificate pair. Values must match the regular expression [\w\s-.]{1,255}.
This must be provided for all formats except selfsignedcert; self-signed certs may specify the alias in either
this parameter or the JSON body. *)
  cert_validity_in_days : float prop option; [@option]
      (** Validity duration of certificate, in days. Accepts positive non-zero value. Defaults to 365. *)
  environment : string prop;  (** The Apigee environment name *)
  id : string prop option; [@option]  (** id *)
  key_size : string prop option; [@option]
      (** Key size. Default and maximum value is 2048 bits. *)
  keystore : string prop;
      (** The Apigee keystore name associated in an Apigee environment *)
  org_id : string prop;
      (** The Apigee Organization name associated with the Apigee environment *)
  sig_alg : string prop;
      (** Signature algorithm to generate private key. Valid values are SHA512withRSA, SHA384withRSA, and SHA256withRSA *)
  subject : subject list;
  subject_alternative_dns_names : subject_alternative_dns_names list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_keystores_aliases_self_signed_cert *)

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

let register ?tf_module ?cert_validity_in_days ?id ?key_size
    ?timeouts ~alias ~environment ~keystore ~org_id ~sig_alg ~subject
    ~subject_alternative_dns_names __resource_id =
  let __resource_type =
    "google_apigee_keystores_aliases_self_signed_cert"
  in
  let __resource =
    google_apigee_keystores_aliases_self_signed_cert
      ?cert_validity_in_days ?id ?key_size ?timeouts ~alias
      ~environment ~keystore ~org_id ~sig_alg ~subject
      ~subject_alternative_dns_names ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_keystores_aliases_self_signed_cert
       __resource);
  let __resource_attributes =
    ({
       alias = Prop.computed __resource_type __resource_id "alias";
       cert_validity_in_days =
         Prop.computed __resource_type __resource_id
           "cert_validity_in_days";
       certs_info =
         Prop.computed __resource_type __resource_id "certs_info";
       environment =
         Prop.computed __resource_type __resource_id "environment";
       id = Prop.computed __resource_type __resource_id "id";
       key_size =
         Prop.computed __resource_type __resource_id "key_size";
       keystore =
         Prop.computed __resource_type __resource_id "keystore";
       org_id = Prop.computed __resource_type __resource_id "org_id";
       sig_alg =
         Prop.computed __resource_type __resource_id "sig_alg";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
