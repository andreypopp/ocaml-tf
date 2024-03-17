(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_privateca_certificate_template__identity_constraints__cel_expression = {
  description : string option; [@option]
      (** Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI. *)
  expression : string option; [@option]
      (** Textual representation of an expression in Common Expression Language syntax. *)
  location : string option; [@option]
      (** Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file. *)
  title : string option; [@option]
      (** Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression. *)
}
[@@deriving yojson_of]
(** Optional. A CEL expression that may be used to validate the resolved X.509 Subject and/or Subject Alternative Name before a certificate is signed. To see the full allowed syntax and some examples, see https://cloud.google.com/certificate-authority-service/docs/using-cel *)

type google_privateca_certificate_template__identity_constraints = {
  allow_subject_alt_names_passthrough : bool;
      (** Required. If this is true, the SubjectAltNames extension may be copied from a certificate request into the signed certificate. Otherwise, the requested SubjectAltNames will be discarded. *)
  allow_subject_passthrough : bool;
      (** Required. If this is true, the Subject field may be copied from a certificate request into the signed certificate. Otherwise, the requested Subject will be discarded. *)
  cel_expression :
    google_privateca_certificate_template__identity_constraints__cel_expression
    list;
}
[@@deriving yojson_of]
(** Optional. Describes constraints on identities that may be appear in Certificates issued using this template. If this is omitted, then this template will not add restrictions on a certificate's identity. *)

type google_privateca_certificate_template__passthrough_extensions__additional_extensions = {
  object_id_path : float list;
      (** Required. The parts of an OID path. The most significant parts of the path come first. *)
}
[@@deriving yojson_of]
(** Optional. A set of ObjectIds identifying custom X.509 extensions. Will be combined with known_extensions to determine the full set of X.509 extensions. *)

type google_privateca_certificate_template__passthrough_extensions = {
  known_extensions : string list option; [@option]
      (** Optional. A set of named X.509 extensions. Will be combined with additional_extensions to determine the full set of X.509 extensions. *)
  additional_extensions :
    google_privateca_certificate_template__passthrough_extensions__additional_extensions
    list;
}
[@@deriving yojson_of]
(** Optional. Describes the set of X.509 extensions that may appear in a Certificate issued using this CertificateTemplate. If a certificate request sets extensions that don't appear in the passthrough_extensions, those extensions will be dropped. If the issuing CaPool's IssuancePolicy defines baseline_values that don't appear here, the certificate issuance request will fail. If this is omitted, then this template will not add restrictions on a certificate's X.509 extensions. These constraints do not apply to X.509 extensions set in this CertificateTemplate's predefined_values. *)

type google_privateca_certificate_template__predefined_values__additional_extensions__object_id = {
  object_id_path : float list;
      (** Required. The parts of an OID path. The most significant parts of the path come first. *)
}
[@@deriving yojson_of]
(** Required. The OID for this X.509 extension. *)

type google_privateca_certificate_template__predefined_values__additional_extensions = {
  critical : bool option; [@option]
      (** Optional. Indicates whether or not this extension is critical (i.e., if the client does not know how to handle this extension, the client should consider this to be an error). *)
  value : string;
      (** Required. The value of this X.509 extension. *)
  object_id :
    google_privateca_certificate_template__predefined_values__additional_extensions__object_id
    list;
}
[@@deriving yojson_of]
(** Optional. Describes custom X.509 extensions. *)

type google_privateca_certificate_template__predefined_values__ca_options = {
  is_ca : bool option; [@option]
      (** Optional. Refers to the CA X.509 extension, which is a boolean value. When this value is missing, the extension will be omitted from the CA certificate. *)
  max_issuer_path_length : float option; [@option]
      (** Optional. Refers to the path length restriction X.509 extension. For a CA certificate, this value describes the depth of subordinate CA certificates that are allowed. If this value is less than 0, the request will fail. If this value is missing, the max path length will be omitted from the CA certificate. *)
}
[@@deriving yojson_of]
(** Optional. Describes options in this X509Parameters that are relevant in a CA certificate. *)

type google_privateca_certificate_template__predefined_values__key_usage__base_key_usage = {
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

type google_privateca_certificate_template__predefined_values__key_usage__extended_key_usage = {
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
(** Detailed scenarios in which a key may be used. *)

type google_privateca_certificate_template__predefined_values__key_usage__unknown_extended_key_usages = {
  object_id_path : float list;
      (** Required. The parts of an OID path. The most significant parts of the path come first. *)
}
[@@deriving yojson_of]
(** Used to describe extended key usages that are not listed in the KeyUsage.ExtendedKeyUsageOptions message. *)

type google_privateca_certificate_template__predefined_values__key_usage = {
  base_key_usage :
    google_privateca_certificate_template__predefined_values__key_usage__base_key_usage
    list;
  extended_key_usage :
    google_privateca_certificate_template__predefined_values__key_usage__extended_key_usage
    list;
  unknown_extended_key_usages :
    google_privateca_certificate_template__predefined_values__key_usage__unknown_extended_key_usages
    list;
}
[@@deriving yojson_of]
(** Optional. Indicates the intended use for keys that correspond to a certificate. *)

type google_privateca_certificate_template__predefined_values__policy_ids = {
  object_id_path : float list;
      (** Required. The parts of an OID path. The most significant parts of the path come first. *)
}
[@@deriving yojson_of]
(** Optional. Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4. *)

type google_privateca_certificate_template__predefined_values = {
  aia_ocsp_servers : string list option; [@option]
      (** Optional. Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the Authority Information Access extension in the certificate. *)
  additional_extensions :
    google_privateca_certificate_template__predefined_values__additional_extensions
    list;
  ca_options :
    google_privateca_certificate_template__predefined_values__ca_options
    list;
  key_usage :
    google_privateca_certificate_template__predefined_values__key_usage
    list;
  policy_ids :
    google_privateca_certificate_template__predefined_values__policy_ids
    list;
}
[@@deriving yojson_of]
(** Optional. A set of X.509 values that will be applied to all issued certificates that use this template. If the certificate request includes conflicting values for the same properties, they will be overwritten by the values defined here. If the issuing CaPool's IssuancePolicy defines conflicting baseline_values for the same properties, the certificate issuance request will fail. *)

type google_privateca_certificate_template__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_privateca_certificate_template__timeouts *)

type google_privateca_certificate_template = {
  description : string option; [@option]
      (** Optional. A human-readable description of scenarios this template is intended for. *)
  labels : (string * string) list option; [@option]
      (** Optional. Labels with user-defined metadata.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field `effective_labels` for all of the labels present on the resource. *)
  location : string;  (** The location for the resource *)
  name : string;
      (** The resource name for this CertificateTemplate in the format `projects/*/locations/*/certificateTemplates/*`. *)
  identity_constraints :
    google_privateca_certificate_template__identity_constraints list;
  passthrough_extensions :
    google_privateca_certificate_template__passthrough_extensions
    list;
  predefined_values :
    google_privateca_certificate_template__predefined_values list;
  timeouts : google_privateca_certificate_template__timeouts option;
}
[@@deriving yojson_of]
(** google_privateca_certificate_template *)

let google_privateca_certificate_template ?description ?labels
    ?timeouts ~location ~name ~identity_constraints
    ~passthrough_extensions ~predefined_values __resource_id =
  let __resource_type = "google_privateca_certificate_template" in
  let __resource =
    {
      description;
      labels;
      location;
      name;
      identity_constraints;
      passthrough_extensions;
      predefined_values;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_privateca_certificate_template __resource);
  ()
