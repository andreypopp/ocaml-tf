(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_iam_workforce_pool_provider__oidc__client_secret__value = {
  plain_text : string prop;
      (** The plain text of the client secret value. *)
  thumbprint : string prop;
      (** A thumbprint to represent the current client secret value. *)
}
[@@deriving yojson_of]
(** The value of the client secret. *)

type google_iam_workforce_pool_provider__oidc__client_secret = {
  value :
    google_iam_workforce_pool_provider__oidc__client_secret__value
    list;
}
[@@deriving yojson_of]
(** The optional client secret. Required to enable Authorization Code flow for web sign-in. *)

type google_iam_workforce_pool_provider__oidc__web_sso_config = {
  additional_scopes : string prop list option; [@option]
      (** Additional scopes to request for in the OIDC authentication request on top of scopes requested by default. By default, the 'openid', 'profile' and 'email' scopes that are supported by the identity provider are requested.
Each additional scope may be at most 256 characters. A maximum of 10 additional scopes may be configured. *)
  assertion_claims_behavior : string prop;
      (** The behavior for how OIDC Claims are included in the 'assertion' object used for attribute mapping and attribute condition.
* MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS: Merge the UserInfo Endpoint Claims with ID Token Claims, preferring UserInfo Claim Values for the same Claim Name. This option is available only for the Authorization Code Flow.
* ONLY_ID_TOKEN_CLAIMS: Only include ID Token Claims. Possible values: [MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS, ONLY_ID_TOKEN_CLAIMS] *)
  response_type : string prop;
      (** The Response Type to request for in the OIDC Authorization Request for web sign-in.

The 'CODE' Response Type is recommended to avoid the Implicit Flow, for security reasons.
* CODE: The 'response_type=code' selection uses the Authorization Code Flow for web sign-in. Requires a configured client secret.
* ID_TOKEN: The 'response_type=id_token' selection uses the Implicit Flow for web sign-in. Possible values: [CODE, ID_TOKEN] *)
}
[@@deriving yojson_of]
(** Configuration for web single sign-on for the OIDC provider. Here, web sign-in refers to console sign-in and gcloud sign-in through the browser. *)

type google_iam_workforce_pool_provider__oidc = {
  client_id : string prop;
      (** The client ID. Must match the audience claim of the JWT issued by the identity provider. *)
  issuer_uri : string prop;
      (** The OIDC issuer URI. Must be a valid URI using the 'https' scheme. *)
  jwks_json : string prop option; [@option]
      (** OIDC JWKs in JSON String format. For details on definition of a
JWK, see https:tools.ietf.org/html/rfc7517. If not set, then we
use the 'jwks_uri' from the discovery document fetched from the
.well-known path for the 'issuer_uri'. Currently, RSA and EC asymmetric
keys are supported. The JWK must use following format and include only
the following fields:
'''
{
  keys: [
    {
          kty: RSA/EC,
          alg: <algorithm>,
          use: sig,
          kid: <key-id>,
          n: ,
          e: ,
          x: ,
          y: ,
          crv: 
    }
  ]
}
''' *)
  client_secret :
    google_iam_workforce_pool_provider__oidc__client_secret list;
  web_sso_config :
    google_iam_workforce_pool_provider__oidc__web_sso_config list;
}
[@@deriving yojson_of]
(** Represents an OpenId Connect 1.0 identity provider. *)

type google_iam_workforce_pool_provider__saml = {
  idp_metadata_xml : string prop;
      (** SAML Identity provider configuration metadata xml doc.
The xml document should comply with [SAML 2.0 specification](https://docs.oasis-open.org/security/saml/v2.0/saml-metadata-2.0-os.pdf).
The max size of the acceptable xml document will be bounded to 128k characters.

The metadata xml document should satisfy the following constraints:
1) Must contain an Identity Provider Entity ID.
2) Must contain at least one non-expired signing key certificate.
3) For each signing key:
  a) Valid from should be no more than 7 days from now.
  b) Valid to should be no more than 10 years in the future.
4) Up to 3 IdP signing keys are allowed in the metadata xml.

When updating the provider's metadata xml, at least one non-expired signing key
must overlap with the existing metadata. This requirement is skipped if there are
no non-expired signing keys present in the existing metadata. *)
}
[@@deriving yojson_of]
(** Represents a SAML identity provider. *)

type google_iam_workforce_pool_provider__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_iam_workforce_pool_provider__timeouts *)

type google_iam_workforce_pool_provider = {
  attribute_condition : string prop option; [@option]
      (** A [Common Expression Language](https://opensource.google/projects/cel) expression, in
plain text, to restrict what otherwise valid authentication credentials issued by the
provider should not be accepted.

The expression must output a boolean representing whether to allow the federation.

The following keywords may be referenced in the expressions:
  * 'assertion': JSON representing the authentication credential issued by the provider.
  * 'google': The Google attributes mapped from the assertion in the 'attribute_mappings'.
    'google.profile_photo' and 'google.display_name' are not supported.
  * 'attribute': The custom attributes mapped from the assertion in the 'attribute_mappings'.

The maximum length of the attribute condition expression is 4096 characters.
If unspecified, all valid authentication credentials will be accepted.

The following example shows how to only allow credentials with a mapped 'google.groups' value of 'admins':
'''
'admins' in google.groups
''' *)
  attribute_mapping : (string * string prop) list option; [@option]
      (** Maps attributes from the authentication credentials issued by an external identity provider
to Google Cloud attributes, such as 'subject' and 'segment'.

Each key must be a string specifying the Google Cloud IAM attribute to map to.

The following keys are supported:
  * 'google.subject': The principal IAM is authenticating. You can reference this value in IAM bindings.
    This is also the subject that appears in Cloud Logging logs. This is a required field and
    the mapped subject cannot exceed 127 bytes.
  * 'google.groups': Groups the authenticating user belongs to. You can grant groups access to
    resources using an IAM 'principalSet' binding; access applies to all members of the group.
  * 'google.display_name': The name of the authenticated user. This is an optional field and
    the mapped display name cannot exceed 100 bytes. If not set, 'google.subject' will be displayed instead.
    This attribute cannot be referenced in IAM bindings.
  * 'google.profile_photo': The URL that specifies the authenticated user's thumbnail photo.
    This is an optional field. When set, the image will be visible as the user's profile picture.
    If not set, a generic user icon will be displayed instead.
    This attribute cannot be referenced in IAM bindings.

You can also provide custom attributes by specifying 'attribute.{custom_attribute}', where {custom_attribute}
is the name of the custom attribute to be mapped. You can define a maximum of 50 custom attributes.
The maximum length of a mapped attribute key is 100 characters, and the key may only contain the characters [a-z0-9_].

You can reference these attributes in IAM policies to define fine-grained access for a workforce pool
to Google Cloud resources. For example:
  * 'google.subject':
    'principal://iam.googleapis.com/locations/{location}/workforcePools/{pool}/subject/{value}'
  * 'google.groups':
    'principalSet://iam.googleapis.com/locations/{location}/workforcePools/{pool}/group/{value}'
  * 'attribute.{custom_attribute}':
    'principalSet://iam.googleapis.com/locations/{location}/workforcePools/{pool}/attribute.{custom_attribute}/{value}'

Each value must be a [Common Expression Language](https://opensource.google/projects/cel)
function that maps an identity provider credential to the normalized attribute specified
by the corresponding map key.

You can use the 'assertion' keyword in the expression to access a JSON representation of
the authentication credential issued by the provider.

The maximum length of an attribute mapping expression is 2048 characters. When evaluated,
the total size of all mapped attributes must not exceed 8KB.

For OIDC providers, you must supply a custom mapping that includes the 'google.subject' attribute.
For example, the following maps the sub claim of the incoming credential to the 'subject' attribute
on a Google token:
'''
{google.subject: assertion.sub}
'''

An object containing a list of 'key: value' pairs.
Example: '{ name: wrench, mass: 1.3kg, count: 3 }'. *)
  description : string prop option; [@option]
      (** A user-specified description of the provider. Cannot exceed 256 characters. *)
  disabled : bool prop option; [@option]
      (** Whether the provider is disabled. You cannot use a disabled provider to exchange tokens.
However, existing tokens still grant access. *)
  display_name : string prop option; [@option]
      (** A user-specified display name for the provider. Cannot exceed 32 characters. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** The location for the resource. *)
  provider_id : string prop;
      (** The ID for the provider, which becomes the final component of the resource name.
This value must be 4-32 characters, and may contain the characters [a-z0-9-].
The prefix 'gcp-' is reserved for use by Google, and may not be specified. *)
  workforce_pool_id : string prop;
      (** The ID to use for the pool, which becomes the final component of the resource name.
The IDs must be a globally unique string of 6 to 63 lowercase letters, digits, or hyphens.
It must start with a letter, and cannot have a trailing hyphen.
The prefix 'gcp-' is reserved for use by Google, and may not be specified. *)
  oidc : google_iam_workforce_pool_provider__oidc list;
  saml : google_iam_workforce_pool_provider__saml list;
  timeouts : google_iam_workforce_pool_provider__timeouts option;
}
[@@deriving yojson_of]
(** google_iam_workforce_pool_provider *)

let google_iam_workforce_pool_provider ?attribute_condition
    ?attribute_mapping ?description ?disabled ?display_name ?id
    ?timeouts ~location ~provider_id ~workforce_pool_id ~oidc ~saml
    __resource_id =
  let __resource_type = "google_iam_workforce_pool_provider" in
  let __resource =
    {
      attribute_condition;
      attribute_mapping;
      description;
      disabled;
      display_name;
      id;
      location;
      provider_id;
      workforce_pool_id;
      oidc;
      saml;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_iam_workforce_pool_provider __resource);
  ()
