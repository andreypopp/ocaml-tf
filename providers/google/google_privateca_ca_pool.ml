(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type issuance_policy__allowed_issuance_modes = {
  allow_config_based_issuance : bool prop;
      (** When true, allows callers to create Certificates by specifying a CertificateConfig. *)
  allow_csr_based_issuance : bool prop;
      (** When true, allows callers to create Certificates by specifying a CSR. *)
}
[@@deriving yojson_of]
(** IssuanceModes specifies the allowed ways in which Certificates may be requested from this CaPool. *)

type issuance_policy__allowed_key_types__elliptic_curve = {
  signature_algorithm : string prop;
      (** The algorithm used. Possible values: [ECDSA_P256, ECDSA_P384, EDDSA_25519] *)
}
[@@deriving yojson_of]
(** Represents an allowed Elliptic Curve key type. *)

type issuance_policy__allowed_key_types__rsa = {
  max_modulus_size : string prop option; [@option]
      (** The maximum allowed RSA modulus size, in bits. If this is not set, or if set to zero, the
service will not enforce an explicit upper bound on RSA modulus sizes. *)
  min_modulus_size : string prop option; [@option]
      (** The minimum allowed RSA modulus size, in bits. If this is not set, or if set to zero, the
service-level min RSA modulus size will continue to apply. *)
}
[@@deriving yojson_of]
(** Describes an RSA key that may be used in a Certificate issued from a CaPool. *)

type issuance_policy__allowed_key_types = {
  elliptic_curve :
    issuance_policy__allowed_key_types__elliptic_curve list;
  rsa : issuance_policy__allowed_key_types__rsa list;
}
[@@deriving yojson_of]
(** If any AllowedKeyType is specified, then the certificate request's public key must match one of the key types listed here.
Otherwise, any key may be used. *)

type issuance_policy__baseline_values__additional_extensions__object_id = {
  object_id_path : float prop list;
      (** An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages. *)
}
[@@deriving yojson_of]
(** Describes values that are relevant in a CA certificate. *)

type issuance_policy__baseline_values__additional_extensions = {
  critical : bool prop;
      (** Indicates whether or not this extension is critical (i.e., if the client does not know how to
handle this extension, the client should consider this to be an error). *)
  value : string prop;
      (** The value of this X.509 extension. A base64-encoded string. *)
  object_id :
    issuance_policy__baseline_values__additional_extensions__object_id
    list;
}
[@@deriving yojson_of]
(** Specifies an X.509 extension, which may be used in different parts of X.509 objects like certificates, CSRs, and CRLs. *)

type issuance_policy__baseline_values__ca_options = {
  is_ca : bool prop option; [@option]
      (** When true, the CA in Basic Constraints extension will be set to true. *)
  max_issuer_path_length : float prop option; [@option]
      (** Refers to the path length constraint in Basic Constraints extension. For a CA certificate, this value describes the depth of
subordinate CA certificates that are allowed. If this value is less than 0, the request will fail. *)
  non_ca : bool prop option; [@option]
      (** When true, the CA in Basic Constraints extension will be set to false.
If both 'is_ca' and 'non_ca' are unset, the extension will be omitted from the CA certificate. *)
  zero_max_issuer_path_length : bool prop option; [@option]
      (** When true, the path length constraint in Basic Constraints extension will be set to 0.
if both 'max_issuer_path_length' and 'zero_max_issuer_path_length' are unset,
the max path length will be omitted from the CA certificate. *)
}
[@@deriving yojson_of]
(** Describes values that are relevant in a CA certificate. *)

type issuance_policy__baseline_values__key_usage__base_key_usage = {
  cert_sign : bool prop option; [@option]
      (** The key may be used to sign certificates. *)
  content_commitment : bool prop option; [@option]
      (** The key may be used for cryptographic commitments. Note that this may also be referred to as non-repudiation. *)
  crl_sign : bool prop option; [@option]
      (** The key may be used sign certificate revocation lists. *)
  data_encipherment : bool prop option; [@option]
      (** The key may be used to encipher data. *)
  decipher_only : bool prop option; [@option]
      (** The key may be used to decipher only. *)
  digital_signature : bool prop option; [@option]
      (** The key may be used for digital signatures. *)
  encipher_only : bool prop option; [@option]
      (** The key may be used to encipher only. *)
  key_agreement : bool prop option; [@option]
      (** The key may be used in a key agreement protocol. *)
  key_encipherment : bool prop option; [@option]
      (** The key may be used to encipher other keys. *)
}
[@@deriving yojson_of]
(** Describes high-level ways in which a key may be used. *)

type issuance_policy__baseline_values__key_usage__extended_key_usage = {
  client_auth : bool prop option; [@option]
      (** Corresponds to OID 1.3.6.1.5.5.7.3.2. Officially described as TLS WWW client authentication, though regularly used for non-WWW TLS. *)
  code_signing : bool prop option; [@option]
      (** Corresponds to OID 1.3.6.1.5.5.7.3.3. Officially described as Signing of downloadable executable code client authentication. *)
  email_protection : bool prop option; [@option]
      (** Corresponds to OID 1.3.6.1.5.5.7.3.4. Officially described as Email protection. *)
  ocsp_signing : bool prop option; [@option]
      (** Corresponds to OID 1.3.6.1.5.5.7.3.9. Officially described as Signing OCSP responses. *)
  server_auth : bool prop option; [@option]
      (** Corresponds to OID 1.3.6.1.5.5.7.3.1. Officially described as TLS WWW server authentication, though regularly used for non-WWW TLS. *)
  time_stamping : bool prop option; [@option]
      (** Corresponds to OID 1.3.6.1.5.5.7.3.8. Officially described as Binding the hash of an object to a time. *)
}
[@@deriving yojson_of]
(** Describes high-level ways in which a key may be used. *)

type issuance_policy__baseline_values__key_usage__unknown_extended_key_usages = {
  object_id_path : float prop list;
      (** An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages. *)
}
[@@deriving yojson_of]
(** An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages. *)

type issuance_policy__baseline_values__key_usage = {
  base_key_usage :
    issuance_policy__baseline_values__key_usage__base_key_usage list;
  extended_key_usage :
    issuance_policy__baseline_values__key_usage__extended_key_usage
    list;
  unknown_extended_key_usages :
    issuance_policy__baseline_values__key_usage__unknown_extended_key_usages
    list;
}
[@@deriving yojson_of]
(** Indicates the intended use for keys that correspond to a certificate. *)

type issuance_policy__baseline_values__name_constraints = {
  critical : bool prop;
      (** Indicates whether or not the name constraints are marked critical. *)
  excluded_dns_names : string prop list option; [@option]
      (** Contains excluded DNS names. Any DNS name that can be
constructed by simply adding zero or more labels to
the left-hand side of the name satisfies the name constraint.
For example, 'example.com', 'www.example.com', 'www.sub.example.com'
would satisfy 'example.com' while 'example1.com' does not. *)
  excluded_email_addresses : string prop list option; [@option]
      (** Contains the excluded email addresses. The value can be a particular
email address, a hostname to indicate all email addresses on that host or
a domain with a leading period (e.g. '.example.com') to indicate
all email addresses in that domain. *)
  excluded_ip_ranges : string prop list option; [@option]
      (** Contains the excluded IP ranges. For IPv4 addresses, the ranges
are expressed using CIDR notation as specified in RFC 4632.
For IPv6 addresses, the ranges are expressed in similar encoding as IPv4
addresses. *)
  excluded_uris : string prop list option; [@option]
      (** Contains the excluded URIs that apply to the host part of the name.
The value can be a hostname or a domain with a
leading period (like '.example.com') *)
  permitted_dns_names : string prop list option; [@option]
      (** Contains permitted DNS names. Any DNS name that can be
constructed by simply adding zero or more labels to
the left-hand side of the name satisfies the name constraint.
For example, 'example.com', 'www.example.com', 'www.sub.example.com'
would satisfy 'example.com' while 'example1.com' does not. *)
  permitted_email_addresses : string prop list option; [@option]
      (** Contains the permitted email addresses. The value can be a particular
email address, a hostname to indicate all email addresses on that host or
a domain with a leading period (e.g. '.example.com') to indicate
all email addresses in that domain. *)
  permitted_ip_ranges : string prop list option; [@option]
      (** Contains the permitted IP ranges. For IPv4 addresses, the ranges
are expressed using CIDR notation as specified in RFC 4632.
For IPv6 addresses, the ranges are expressed in similar encoding as IPv4
addresses. *)
  permitted_uris : string prop list option; [@option]
      (** Contains the permitted URIs that apply to the host part of the name.
The value can be a hostname or a domain with a
leading period (like '.example.com') *)
}
[@@deriving yojson_of]
(** Describes the X.509 name constraints extension. *)

type issuance_policy__baseline_values__policy_ids = {
  object_id_path : float prop list;
      (** An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages. *)
}
[@@deriving yojson_of]
(** Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4. *)

type issuance_policy__baseline_values = {
  aia_ocsp_servers : string prop list option; [@option]
      (** Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the
Authority Information Access extension in the certificate. *)
  additional_extensions :
    issuance_policy__baseline_values__additional_extensions list;
  ca_options : issuance_policy__baseline_values__ca_options list;
  key_usage : issuance_policy__baseline_values__key_usage list;
  name_constraints :
    issuance_policy__baseline_values__name_constraints list;
  policy_ids : issuance_policy__baseline_values__policy_ids list;
}
[@@deriving yojson_of]
(** A set of X.509 values that will be applied to all certificates issued through this CaPool. If a certificate request
includes conflicting values for the same properties, they will be overwritten by the values defined here. If a certificate
request uses a CertificateTemplate that defines conflicting predefinedValues for the same properties, the certificate
issuance request will fail. *)

type issuance_policy__identity_constraints__cel_expression = {
  description : string prop option; [@option]
      (** Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI. *)
  expression : string prop;
      (** Textual representation of an expression in Common Expression Language syntax. *)
  location : string prop option; [@option]
      (** String indicating the location of the expression for error reporting, e.g. a file name and a position in the file. *)
  title : string prop option; [@option]
      (** Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression. *)
}
[@@deriving yojson_of]
(** A CEL expression that may be used to validate the resolved X.509 Subject and/or Subject Alternative Name before a
certificate is signed. To see the full allowed syntax and some examples,
see https://cloud.google.com/certificate-authority-service/docs/cel-guide *)

type issuance_policy__identity_constraints = {
  allow_subject_alt_names_passthrough : bool prop;
      (** If this is set, the SubjectAltNames extension may be copied from a certificate request into the signed certificate.
Otherwise, the requested SubjectAltNames will be discarded. *)
  allow_subject_passthrough : bool prop;
      (** If this is set, the Subject field may be copied from a certificate request into the signed certificate.
Otherwise, the requested Subject will be discarded. *)
  cel_expression :
    issuance_policy__identity_constraints__cel_expression list;
}
[@@deriving yojson_of]
(** Describes constraints on identities that may appear in Certificates issued through this CaPool.
If this is omitted, then this CaPool will not add restrictions on a certificate's identity. *)

type issuance_policy = {
  maximum_lifetime : string prop option; [@option]
      (** The maximum lifetime allowed for issued Certificates. Note that if the issuing CertificateAuthority
expires before a Certificate's requested maximumLifetime, the effective lifetime will be explicitly truncated to match it. *)
  allowed_issuance_modes :
    issuance_policy__allowed_issuance_modes list;
  allowed_key_types : issuance_policy__allowed_key_types list;
  baseline_values : issuance_policy__baseline_values list;
  identity_constraints : issuance_policy__identity_constraints list;
}
[@@deriving yojson_of]
(** The IssuancePolicy to control how Certificates will be issued from this CaPool. *)

type publishing_options = {
  encoding_format : string prop option; [@option]
      (** Specifies the encoding format of each CertificateAuthority's CA
certificate and CRLs. If this is omitted, CA certificates and CRLs
will be published in PEM. Possible values: [PEM, DER] *)
  publish_ca_cert : bool prop;
      (** When true, publishes each CertificateAuthority's CA certificate and includes its URL in the Authority Information Access
X.509 extension in all issued Certificates. If this is false, the CA certificate will not be published and the corresponding
X.509 extension will not be written in issued certificates. *)
  publish_crl : bool prop;
      (** When true, publishes each CertificateAuthority's CRL and includes its URL in the CRL Distribution Points X.509 extension
in all issued Certificates. If this is false, CRLs will not be published and the corresponding X.509 extension will not
be written in issued certificates. CRLs will expire 7 days from their creation. However, we will rebuild daily. CRLs are
also rebuilt shortly after a certificate is revoked. *)
}
[@@deriving yojson_of]
(** The PublishingOptions to follow when issuing Certificates from any CertificateAuthority in this CaPool. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_privateca_ca_pool = {
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Labels with user-defined metadata.

An object containing a list of key: value pairs. Example: { name: wrench, mass:
1.3kg, count: 3 }.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;
      (** Location of the CaPool. A full list of valid locations can be found by
running 'gcloud privateca locations list'. *)
  name : string prop;  (** The name for this CaPool. *)
  project : string prop option; [@option]  (** project *)
  tier : string prop;
      (** The Tier of this CaPool. Possible values: [ENTERPRISE, DEVOPS] *)
  issuance_policy : issuance_policy list;
  publishing_options : publishing_options list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_privateca_ca_pool *)

let issuance_policy__allowed_issuance_modes
    ~allow_config_based_issuance ~allow_csr_based_issuance () :
    issuance_policy__allowed_issuance_modes =
  { allow_config_based_issuance; allow_csr_based_issuance }

let issuance_policy__allowed_key_types__elliptic_curve
    ~signature_algorithm () :
    issuance_policy__allowed_key_types__elliptic_curve =
  { signature_algorithm }

let issuance_policy__allowed_key_types__rsa ?max_modulus_size
    ?min_modulus_size () : issuance_policy__allowed_key_types__rsa =
  { max_modulus_size; min_modulus_size }

let issuance_policy__allowed_key_types ~elliptic_curve ~rsa () :
    issuance_policy__allowed_key_types =
  { elliptic_curve; rsa }

let issuance_policy__baseline_values__additional_extensions__object_id
    ~object_id_path () :
    issuance_policy__baseline_values__additional_extensions__object_id
    =
  { object_id_path }

let issuance_policy__baseline_values__additional_extensions ~critical
    ~value ~object_id () :
    issuance_policy__baseline_values__additional_extensions =
  { critical; value; object_id }

let issuance_policy__baseline_values__ca_options ?is_ca
    ?max_issuer_path_length ?non_ca ?zero_max_issuer_path_length () :
    issuance_policy__baseline_values__ca_options =
  {
    is_ca;
    max_issuer_path_length;
    non_ca;
    zero_max_issuer_path_length;
  }

let issuance_policy__baseline_values__key_usage__base_key_usage
    ?cert_sign ?content_commitment ?crl_sign ?data_encipherment
    ?decipher_only ?digital_signature ?encipher_only ?key_agreement
    ?key_encipherment () :
    issuance_policy__baseline_values__key_usage__base_key_usage =
  {
    cert_sign;
    content_commitment;
    crl_sign;
    data_encipherment;
    decipher_only;
    digital_signature;
    encipher_only;
    key_agreement;
    key_encipherment;
  }

let issuance_policy__baseline_values__key_usage__extended_key_usage
    ?client_auth ?code_signing ?email_protection ?ocsp_signing
    ?server_auth ?time_stamping () :
    issuance_policy__baseline_values__key_usage__extended_key_usage =
  {
    client_auth;
    code_signing;
    email_protection;
    ocsp_signing;
    server_auth;
    time_stamping;
  }

let issuance_policy__baseline_values__key_usage__unknown_extended_key_usages
    ~object_id_path () :
    issuance_policy__baseline_values__key_usage__unknown_extended_key_usages
    =
  { object_id_path }

let issuance_policy__baseline_values__key_usage ~base_key_usage
    ~extended_key_usage ~unknown_extended_key_usages () :
    issuance_policy__baseline_values__key_usage =
  { base_key_usage; extended_key_usage; unknown_extended_key_usages }

let issuance_policy__baseline_values__name_constraints
    ?excluded_dns_names ?excluded_email_addresses ?excluded_ip_ranges
    ?excluded_uris ?permitted_dns_names ?permitted_email_addresses
    ?permitted_ip_ranges ?permitted_uris ~critical () :
    issuance_policy__baseline_values__name_constraints =
  {
    critical;
    excluded_dns_names;
    excluded_email_addresses;
    excluded_ip_ranges;
    excluded_uris;
    permitted_dns_names;
    permitted_email_addresses;
    permitted_ip_ranges;
    permitted_uris;
  }

let issuance_policy__baseline_values__policy_ids ~object_id_path () :
    issuance_policy__baseline_values__policy_ids =
  { object_id_path }

let issuance_policy__baseline_values ?aia_ocsp_servers
    ~additional_extensions ~ca_options ~key_usage ~name_constraints
    ~policy_ids () : issuance_policy__baseline_values =
  {
    aia_ocsp_servers;
    additional_extensions;
    ca_options;
    key_usage;
    name_constraints;
    policy_ids;
  }

let issuance_policy__identity_constraints__cel_expression
    ?description ?location ?title ~expression () :
    issuance_policy__identity_constraints__cel_expression =
  { description; expression; location; title }

let issuance_policy__identity_constraints
    ~allow_subject_alt_names_passthrough ~allow_subject_passthrough
    ~cel_expression () : issuance_policy__identity_constraints =
  {
    allow_subject_alt_names_passthrough;
    allow_subject_passthrough;
    cel_expression;
  }

let issuance_policy ?maximum_lifetime ~allowed_issuance_modes
    ~allowed_key_types ~baseline_values ~identity_constraints () :
    issuance_policy =
  {
    maximum_lifetime;
    allowed_issuance_modes;
    allowed_key_types;
    baseline_values;
    identity_constraints;
  }

let publishing_options ?encoding_format ~publish_ca_cert ~publish_crl
    () : publishing_options =
  { encoding_format; publish_ca_cert; publish_crl }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_privateca_ca_pool ?id ?labels ?project ?timeouts ~location
    ~name ~tier ~issuance_policy ~publishing_options () :
    google_privateca_ca_pool =
  {
    id;
    labels;
    location;
    name;
    project;
    tier;
    issuance_policy;
    publishing_options;
    timeouts;
  }

type t = {
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  tier : string prop;
}

let register ?tf_module ?id ?labels ?project ?timeouts ~location
    ~name ~tier ~issuance_policy ~publishing_options __resource_id =
  let __resource_type = "google_privateca_ca_pool" in
  let __resource =
    google_privateca_ca_pool ?id ?labels ?project ?timeouts ~location
      ~name ~tier ~issuance_policy ~publishing_options ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_privateca_ca_pool __resource);
  let __resource_attributes =
    ({
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       tier = Prop.computed __resource_type __resource_id "tier";
     }
      : t)
  in
  __resource_attributes
