(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_privateca_certificate_authority__config__subject_config__subject = {
  common_name : string;
      (** The common name of the distinguished name. *)
  country_code : string option; [@option]
      (** The country code of the subject. *)
  locality : string option; [@option]
      (** The locality or city of the subject. *)
  organization : string;  (** The organization of the subject. *)
  organizational_unit : string option; [@option]
      (** The organizational unit of the subject. *)
  postal_code : string option; [@option]
      (** The postal code of the subject. *)
  province : string option; [@option]
      (** The province, territory, or regional state of the subject. *)
  street_address : string option; [@option]
      (** The street address of the subject. *)
}
[@@deriving yojson_of]
(** Contains distinguished name fields such as the location and organization. *)

type google_privateca_certificate_authority__config__subject_config__subject_alt_name = {
  dns_names : string list option; [@option]
      (** Contains only valid, fully-qualified host names. *)
  email_addresses : string list option; [@option]
      (** Contains only valid RFC 2822 E-mail addresses. *)
  ip_addresses : string list option; [@option]
      (** Contains only valid 32-bit IPv4 addresses or RFC 4291 IPv6 addresses. *)
  uris : string list option; [@option]
      (** Contains only valid RFC 3986 URIs. *)
}
[@@deriving yojson_of]
(** The subject alternative name fields. *)

type google_privateca_certificate_authority__config__subject_config = {
  subject :
    google_privateca_certificate_authority__config__subject_config__subject
    list;
  subject_alt_name :
    google_privateca_certificate_authority__config__subject_config__subject_alt_name
    list;
}
[@@deriving yojson_of]
(** Specifies some of the values in a certificate that are related to the subject. *)

type google_privateca_certificate_authority__config__x509_config__additional_extensions__object_id = {
  object_id_path : float list;
      (** An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages. *)
}
[@@deriving yojson_of]
(** Describes values that are relevant in a CA certificate. *)

type google_privateca_certificate_authority__config__x509_config__additional_extensions = {
  critical : bool;
      (** Indicates whether or not this extension is critical (i.e., if the client does not know how to
handle this extension, the client should consider this to be an error). *)
  value : string;
      (** The value of this X.509 extension. A base64-encoded string. *)
  object_id :
    google_privateca_certificate_authority__config__x509_config__additional_extensions__object_id
    list;
}
[@@deriving yojson_of]
(** Specifies an X.509 extension, which may be used in different parts of X.509 objects like certificates, CSRs, and CRLs. *)

type google_privateca_certificate_authority__config__x509_config__ca_options = {
  is_ca : bool;
      (** When true, the CA in Basic Constraints extension will be set to true. *)
  max_issuer_path_length : float option; [@option]
      (** Refers to the path length constraint in Basic Constraints extension. For a CA certificate, this value describes the depth of
subordinate CA certificates that are allowed. If this value is less than 0, the request will fail. Setting the value to 0
requires setting 'zero_max_issuer_path_length = true'. *)
  non_ca : bool option; [@option]
      (** When true, the CA in Basic Constraints extension will be set to false.
If both 'is_ca' and 'non_ca' are unset, the extension will be omitted from the CA certificate. *)
  zero_max_issuer_path_length : bool option; [@option]
      (** When true, the path length constraint in Basic Constraints extension will be set to 0.
If both 'max_issuer_path_length' and 'zero_max_issuer_path_length' are unset,
the max path length will be omitted from the CA certificate. *)
}
[@@deriving yojson_of]
(** Describes values that are relevant in a CA certificate. *)

type google_privateca_certificate_authority__config__x509_config__key_usage__base_key_usage = {
  cert_sign : bool option; [@option]
      (** The key may be used to sign certificates. *)
  content_commitment : bool option; [@option]
      (** The key may be used for cryptographic commitments. Note that this may also be referred to as non-repudiation. *)
  crl_sign : bool option; [@option]
      (** The key may be used sign certificate revocation lists. *)
  data_encipherment : bool option; [@option]
      (** The key may be used to encipher data. *)
  decipher_only : bool option; [@option]
      (** The key may be used to decipher only. *)
  digital_signature : bool option; [@option]
      (** The key may be used for digital signatures. *)
  encipher_only : bool option; [@option]
      (** The key may be used to encipher only. *)
  key_agreement : bool option; [@option]
      (** The key may be used in a key agreement protocol. *)
  key_encipherment : bool option; [@option]
      (** The key may be used to encipher other keys. *)
}
[@@deriving yojson_of]
(** Describes high-level ways in which a key may be used. *)

type google_privateca_certificate_authority__config__x509_config__key_usage__extended_key_usage = {
  client_auth : bool option; [@option]
      (** Corresponds to OID 1.3.6.1.5.5.7.3.2. Officially described as TLS WWW client authentication, though regularly used for non-WWW TLS. *)
  code_signing : bool option; [@option]
      (** Corresponds to OID 1.3.6.1.5.5.7.3.3. Officially described as Signing of downloadable executable code client authentication. *)
  email_protection : bool option; [@option]
      (** Corresponds to OID 1.3.6.1.5.5.7.3.4. Officially described as Email protection. *)
  ocsp_signing : bool option; [@option]
      (** Corresponds to OID 1.3.6.1.5.5.7.3.9. Officially described as Signing OCSP responses. *)
  server_auth : bool option; [@option]
      (** Corresponds to OID 1.3.6.1.5.5.7.3.1. Officially described as TLS WWW server authentication, though regularly used for non-WWW TLS. *)
  time_stamping : bool option; [@option]
      (** Corresponds to OID 1.3.6.1.5.5.7.3.8. Officially described as Binding the hash of an object to a time. *)
}
[@@deriving yojson_of]
(** Describes high-level ways in which a key may be used. *)

type google_privateca_certificate_authority__config__x509_config__key_usage__unknown_extended_key_usages = {
  object_id_path : float list;
      (** An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages. *)
}
[@@deriving yojson_of]
(** An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages. *)

type google_privateca_certificate_authority__config__x509_config__key_usage = {
  base_key_usage :
    google_privateca_certificate_authority__config__x509_config__key_usage__base_key_usage
    list;
  extended_key_usage :
    google_privateca_certificate_authority__config__x509_config__key_usage__extended_key_usage
    list;
  unknown_extended_key_usages :
    google_privateca_certificate_authority__config__x509_config__key_usage__unknown_extended_key_usages
    list;
}
[@@deriving yojson_of]
(** Indicates the intended use for keys that correspond to a certificate. *)

type google_privateca_certificate_authority__config__x509_config__name_constraints = {
  critical : bool;
      (** Indicates whether or not the name constraints are marked critical. *)
  excluded_dns_names : string list option; [@option]
      (** Contains excluded DNS names. Any DNS name that can be
constructed by simply adding zero or more labels to
the left-hand side of the name satisfies the name constraint.
For example, 'example.com', 'www.example.com', 'www.sub.example.com'
would satisfy 'example.com' while 'example1.com' does not. *)
  excluded_email_addresses : string list option; [@option]
      (** Contains the excluded email addresses. The value can be a particular
email address, a hostname to indicate all email addresses on that host or
a domain with a leading period (e.g. '.example.com') to indicate
all email addresses in that domain. *)
  excluded_ip_ranges : string list option; [@option]
      (** Contains the excluded IP ranges. For IPv4 addresses, the ranges
are expressed using CIDR notation as specified in RFC 4632.
For IPv6 addresses, the ranges are expressed in similar encoding as IPv4
addresses. *)
  excluded_uris : string list option; [@option]
      (** Contains the excluded URIs that apply to the host part of the name.
The value can be a hostname or a domain with a
leading period (like '.example.com') *)
  permitted_dns_names : string list option; [@option]
      (** Contains permitted DNS names. Any DNS name that can be
constructed by simply adding zero or more labels to
the left-hand side of the name satisfies the name constraint.
For example, 'example.com', 'www.example.com', 'www.sub.example.com'
would satisfy 'example.com' while 'example1.com' does not. *)
  permitted_email_addresses : string list option; [@option]
      (** Contains the permitted email addresses. The value can be a particular
email address, a hostname to indicate all email addresses on that host or
a domain with a leading period (e.g. '.example.com') to indicate
all email addresses in that domain. *)
  permitted_ip_ranges : string list option; [@option]
      (** Contains the permitted IP ranges. For IPv4 addresses, the ranges
are expressed using CIDR notation as specified in RFC 4632.
For IPv6 addresses, the ranges are expressed in similar encoding as IPv4
addresses. *)
  permitted_uris : string list option; [@option]
      (** Contains the permitted URIs that apply to the host part of the name.
The value can be a hostname or a domain with a
leading period (like '.example.com') *)
}
[@@deriving yojson_of]
(** Describes the X.509 name constraints extension. *)

type google_privateca_certificate_authority__config__x509_config__policy_ids = {
  object_id_path : float list;
      (** An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages. *)
}
[@@deriving yojson_of]
(** Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4. *)

type google_privateca_certificate_authority__config__x509_config = {
  aia_ocsp_servers : string list option; [@option]
      (** Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the
Authority Information Access extension in the certificate. *)
  additional_extensions :
    google_privateca_certificate_authority__config__x509_config__additional_extensions
    list;
  ca_options :
    google_privateca_certificate_authority__config__x509_config__ca_options
    list;
  key_usage :
    google_privateca_certificate_authority__config__x509_config__key_usage
    list;
  name_constraints :
    google_privateca_certificate_authority__config__x509_config__name_constraints
    list;
  policy_ids :
    google_privateca_certificate_authority__config__x509_config__policy_ids
    list;
}
[@@deriving yojson_of]
(** Describes how some of the technical X.509 fields in a certificate should be populated. *)

type google_privateca_certificate_authority__config = {
  subject_config :
    google_privateca_certificate_authority__config__subject_config
    list;
  x509_config :
    google_privateca_certificate_authority__config__x509_config list;
}
[@@deriving yojson_of]
(** The config used to create a self-signed X.509 certificate or CSR. *)

type google_privateca_certificate_authority__key_spec = {
  algorithm : string option; [@option]
      (** The algorithm to use for creating a managed Cloud KMS key for a for a simplified
experience. All managed keys will be have their ProtectionLevel as HSM. Possible values: [SIGN_HASH_ALGORITHM_UNSPECIFIED, RSA_PSS_2048_SHA256, RSA_PSS_3072_SHA256, RSA_PSS_4096_SHA256, RSA_PKCS1_2048_SHA256, RSA_PKCS1_3072_SHA256, RSA_PKCS1_4096_SHA256, EC_P256_SHA256, EC_P384_SHA384] *)
  cloud_kms_key_version : string option; [@option]
      (** The resource name for an existing Cloud KMS CryptoKeyVersion in the format
'projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*'. *)
}
[@@deriving yojson_of]
(** Used when issuing certificates for this CertificateAuthority. If this CertificateAuthority
is a self-signed CertificateAuthority, this key is also used to sign the self-signed CA
certificate. Otherwise, it is used to sign a CSR. *)

type google_privateca_certificate_authority__subordinate_config__pem_issuer_chain = {
  pem_certificates : string list option; [@option]
      (** Expected to be in leaf-to-root order according to RFC 5246. *)
}
[@@deriving yojson_of]
(** Contains the PEM certificate chain for the issuers of this CertificateAuthority,
but not pem certificate for this CA itself. *)

type google_privateca_certificate_authority__subordinate_config = {
  certificate_authority : string option; [@option]
      (** This can refer to a CertificateAuthority that was used to create a
subordinate CertificateAuthority. This field is used for information
and usability purposes only. The resource name is in the format
'projects/*/locations/*/caPools/*/certificateAuthorities/*'. *)
  pem_issuer_chain :
    google_privateca_certificate_authority__subordinate_config__pem_issuer_chain
    list;
}
[@@deriving yojson_of]
(** If this is a subordinate CertificateAuthority, this field will be set
with the subordinate configuration, which describes its issuers. *)

type google_privateca_certificate_authority__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_privateca_certificate_authority__timeouts *)

type google_privateca_certificate_authority__access_urls = {
  ca_certificate_access_url : string;
      (** ca_certificate_access_url *)
  crl_access_urls : string list;  (** crl_access_urls *)
}
[@@deriving yojson_of]

type google_privateca_certificate_authority = {
  certificate_authority_id : string;
      (** The user provided Resource ID for this Certificate Authority. *)
  deletion_protection : bool option; [@option]
      (** Whether or not to allow Terraform to destroy the CertificateAuthority. Unless this field is set to false
in Terraform state, a 'terraform destroy' or 'terraform apply' that would delete the instance will fail. *)
  desired_state : string option; [@option]
      (** Desired state of the CertificateAuthority. Set this field to 'STAGED' to create a 'STAGED' root CA. *)
  gcs_bucket : string option; [@option]
      (** The name of a Cloud Storage bucket where this CertificateAuthority will publish content,
such as the CA certificate and CRLs. This must be a bucket name, without any prefixes
(such as 'gs://') or suffixes (such as '.googleapis.com'). For example, to use a bucket named
my-bucket, you would simply specify 'my-bucket'. If not specified, a managed bucket will be
created. *)
  ignore_active_certificates_on_deletion : bool option; [@option]
      (** This field allows the CA to be deleted even if the CA has active certs. Active certs include both unrevoked and unexpired certs.
Use with care. Defaults to 'false'. *)
  labels : (string * string) list option; [@option]
      (** Labels with user-defined metadata.

An object containing a list of key: value pairs. Example: { name: wrench, mass:
1.3kg, count: 3 }.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  lifetime : string option; [@option]
      (** The desired lifetime of the CA certificate. Used to create the notBeforeTime and
notAfterTime fields inside an X.509 certificate. A duration in seconds with up to nine
fractional digits, terminated by 's'. Example: 3.5s. *)
  location : string;
      (** Location of the CertificateAuthority. A full list of valid locations can be found by
running 'gcloud privateca locations list'. *)
  pem_ca_certificate : string option; [@option]
      (** The signed CA certificate issued from the subordinated CA's CSR. This is needed when activating the subordiante CA with a third party issuer. *)
  pool : string;
      (** The name of the CaPool this Certificate Authority belongs to. *)
  skip_grace_period : bool option; [@option]
      (** If this flag is set, the Certificate Authority will be deleted as soon as
possible without a 30-day grace period where undeletion would have been
allowed. If you proceed, there will be no way to recover this CA.
Use with care. Defaults to 'false'. *)
  type_ : string option; [@option] [@key "type"]
      (** The Type of this CertificateAuthority.

~> **Note:** For 'SUBORDINATE' Certificate Authorities, they need to
be activated before they can issue certificates. Default value: SELF_SIGNED Possible values: [SELF_SIGNED, SUBORDINATE] *)
  config : google_privateca_certificate_authority__config list;
  key_spec : google_privateca_certificate_authority__key_spec list;
  subordinate_config :
    google_privateca_certificate_authority__subordinate_config list;
  timeouts : google_privateca_certificate_authority__timeouts option;
}
[@@deriving yojson_of]
(** google_privateca_certificate_authority *)

let google_privateca_certificate_authority ?deletion_protection
    ?desired_state ?gcs_bucket
    ?ignore_active_certificates_on_deletion ?labels ?lifetime
    ?pem_ca_certificate ?skip_grace_period ?type_ ?timeouts
    ~certificate_authority_id ~location ~pool ~config ~key_spec
    ~subordinate_config __resource_id =
  let __resource_type = "google_privateca_certificate_authority" in
  let __resource =
    {
      certificate_authority_id;
      deletion_protection;
      desired_state;
      gcs_bucket;
      ignore_active_certificates_on_deletion;
      labels;
      lifetime;
      location;
      pem_ca_certificate;
      pool;
      skip_grace_period;
      type_;
      config;
      key_spec;
      subordinate_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_privateca_certificate_authority __resource);
  ()
