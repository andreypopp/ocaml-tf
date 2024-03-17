(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_integration_connectors_connection__auth_config__additional_variable__encryption_key_value = {
  kms_key_name : string option; [@option]
      (** The [KMS key name] with which the content of the Operation is encrypted. The expected
format: projects/*/locations/*/keyRings/*/cryptoKeys/*.
Will be empty string if google managed. *)
  type_ : string; [@key "type"]
      (** Type of Encription Key Possible values: [GOOGLE_MANAGED, CUSTOMER_MANAGED] *)
}
[@@deriving yojson_of]
(** Encription key value of configVariable. *)

type google_integration_connectors_connection__auth_config__additional_variable__secret_value = {
  secret_version : string;
      (** Secret version of Secret Value for Config variable. *)
}
[@@deriving yojson_of]
(** Secret value of configVariable. *)

type google_integration_connectors_connection__auth_config__additional_variable = {
  boolean_value : bool option; [@option]
      (** Boolean Value of configVariable. *)
  integer_value : float option; [@option]
      (** Integer Value of configVariable. *)
  key : string;  (** Key for the configVariable *)
  string_value : string option; [@option]
      (** String Value of configVariabley. *)
  encryption_key_value :
    google_integration_connectors_connection__auth_config__additional_variable__encryption_key_value
    list;
  secret_value :
    google_integration_connectors_connection__auth_config__additional_variable__secret_value
    list;
}
[@@deriving yojson_of]
(** List containing additional auth configs. *)

type google_integration_connectors_connection__auth_config__oauth2_auth_code_flow__client_secret = {
  secret_version : string;
      (** The resource name of the secret version in the format,
format as: projects/*/secrets/*/versions/*. *)
}
[@@deriving yojson_of]
(** Client secret for user-provided OAuth app. *)

type google_integration_connectors_connection__auth_config__oauth2_auth_code_flow = {
  auth_uri : string option; [@option]
      (** Auth URL for Authorization Code Flow. *)
  client_id : string option; [@option]
      (** Client ID for user-provided OAuth app. *)
  enable_pkce : bool option; [@option]
      (** Whether to enable PKCE when the user performs the auth code flow. *)
  scopes : string list option; [@option]
      (** Scopes the connection will request when the user performs the auth code flow. *)
  client_secret :
    google_integration_connectors_connection__auth_config__oauth2_auth_code_flow__client_secret
    list;
}
[@@deriving yojson_of]
(** Parameters to support Oauth 2.0 Auth Code Grant Authentication. *)

type google_integration_connectors_connection__auth_config__oauth2_client_credentials__client_secret = {
  secret_version : string;
      (** The resource name of the secret version in the format,
format as: projects/*/secrets/*/versions/*. *)
}
[@@deriving yojson_of]
(** Secret version reference containing the client secret. *)

type google_integration_connectors_connection__auth_config__oauth2_client_credentials = {
  client_id : string;
      (** Secret version of Password for Authentication. *)
  client_secret :
    google_integration_connectors_connection__auth_config__oauth2_client_credentials__client_secret
    list;
}
[@@deriving yojson_of]
(** OAuth3 Client Credentials for Authentication. *)

type google_integration_connectors_connection__auth_config__oauth2_jwt_bearer__client_key = {
  secret_version : string;
      (** The resource name of the secret version in the format,
format as: projects/*/secrets/*/versions/*. *)
}
[@@deriving yojson_of]
(** Secret version reference containing a PKCS#8 PEM-encoded private key associated with the Client Certificate.
This private key will be used to sign JWTs used for the jwt-bearer authorization grant.
Specified in the form as: projects/*/secrets/*/versions/*. *)

type google_integration_connectors_connection__auth_config__oauth2_jwt_bearer__jwt_claims = {
  audience : string option; [@option]
      (** Value for the aud claim. *)
  issuer : string option; [@option]  (** Value for the iss claim. *)
  subject : string option; [@option]  (** Value for the sub claim. *)
}
[@@deriving yojson_of]
(** JwtClaims providers fields to generate the token. *)

type google_integration_connectors_connection__auth_config__oauth2_jwt_bearer = {
  client_key :
    google_integration_connectors_connection__auth_config__oauth2_jwt_bearer__client_key
    list;
  jwt_claims :
    google_integration_connectors_connection__auth_config__oauth2_jwt_bearer__jwt_claims
    list;
}
[@@deriving yojson_of]
(** OAuth2 JWT Bearer for Authentication. *)

type google_integration_connectors_connection__auth_config__ssh_public_key__ssh_client_cert = {
  secret_version : string;
      (** The resource name of the secret version in the format,
format as: projects/*/secrets/*/versions/*. *)
}
[@@deriving yojson_of]
(** SSH Client Cert. It should contain both public and private key. *)

type google_integration_connectors_connection__auth_config__ssh_public_key__ssh_client_cert_pass = {
  secret_version : string;
      (** The resource name of the secret version in the format,
format as: projects/*/secrets/*/versions/*. *)
}
[@@deriving yojson_of]
(** Password (passphrase) for ssh client certificate if it has one. *)

type google_integration_connectors_connection__auth_config__ssh_public_key = {
  cert_type : string option; [@option]
      (** Format of SSH Client cert. *)
  username : string;  (** The user account used to authenticate. *)
  ssh_client_cert :
    google_integration_connectors_connection__auth_config__ssh_public_key__ssh_client_cert
    list;
  ssh_client_cert_pass :
    google_integration_connectors_connection__auth_config__ssh_public_key__ssh_client_cert_pass
    list;
}
[@@deriving yojson_of]
(** SSH Public Key for Authentication. *)

type google_integration_connectors_connection__auth_config__user_password__password = {
  secret_version : string;
      (** The resource name of the secret version in the format,
format as: projects/*/secrets/*/versions/*. *)
}
[@@deriving yojson_of]
(** Password for Authentication. *)

type google_integration_connectors_connection__auth_config__user_password = {
  username : string;  (** Username for Authentication. *)
  password :
    google_integration_connectors_connection__auth_config__user_password__password
    list;
}
[@@deriving yojson_of]
(** User password for Authentication. *)

type google_integration_connectors_connection__auth_config = {
  auth_key : string option; [@option]
      (** The type of authentication configured. *)
  auth_type : string;
      (** authType of the Connection Possible values: [USER_PASSWORD, OAUTH2_JWT_BEARER, OAUTH2_CLIENT_CREDENTIALS, SSH_PUBLIC_KEY, OAUTH2_AUTH_CODE_FLOW] *)
  additional_variable :
    google_integration_connectors_connection__auth_config__additional_variable
    list;
  oauth2_auth_code_flow :
    google_integration_connectors_connection__auth_config__oauth2_auth_code_flow
    list;
  oauth2_client_credentials :
    google_integration_connectors_connection__auth_config__oauth2_client_credentials
    list;
  oauth2_jwt_bearer :
    google_integration_connectors_connection__auth_config__oauth2_jwt_bearer
    list;
  ssh_public_key :
    google_integration_connectors_connection__auth_config__ssh_public_key
    list;
  user_password :
    google_integration_connectors_connection__auth_config__user_password
    list;
}
[@@deriving yojson_of]
(** authConfig for the connection. *)

type google_integration_connectors_connection__config_variable__encryption_key_value = {
  kms_key_name : string option; [@option]
      (** The [KMS key name] with which the content of the Operation is encrypted. The expected
format: projects/*/locations/*/keyRings/*/cryptoKeys/*.
Will be empty string if google managed. *)
  type_ : string; [@key "type"]
      (** Type of Encription Key Possible values: [GOOGLE_MANAGED, CUSTOMER_MANAGED] *)
}
[@@deriving yojson_of]
(** Encription key value of configVariable. *)

type google_integration_connectors_connection__config_variable__secret_value = {
  secret_version : string;
      (** Secret version of Secret Value for Config variable. *)
}
[@@deriving yojson_of]
(** Secret value of configVariable. *)

type google_integration_connectors_connection__config_variable = {
  boolean_value : bool option; [@option]
      (** Boolean Value of configVariable *)
  integer_value : float option; [@option]
      (** Integer Value of configVariable *)
  key : string;  (** Key for the configVariable *)
  string_value : string option; [@option]
      (** String Value of configVariabley *)
  encryption_key_value :
    google_integration_connectors_connection__config_variable__encryption_key_value
    list;
  secret_value :
    google_integration_connectors_connection__config_variable__secret_value
    list;
}
[@@deriving yojson_of]
(** Config Variables for the connection. *)

type google_integration_connectors_connection__destination_config__destination = {
  host : string option; [@option]  (** For publicly routable host. *)
  port : float option; [@option]
      (** The port is the target port number that is accepted by the destination. *)
  service_attachment : string option; [@option]
      (** PSC service attachments. Format: projects/*/regions/*/serviceAttachments/* *)
}
[@@deriving yojson_of]
(** The destinations for the key. *)

type google_integration_connectors_connection__destination_config = {
  key : string;
      (** The key is the destination identifier that is supported by the Connector. *)
  destination :
    google_integration_connectors_connection__destination_config__destination
    list;
}
[@@deriving yojson_of]
(** Define the Connectors target endpoint. *)

type google_integration_connectors_connection__eventing_config__additional_variable__encryption_key_value = {
  kms_key_name : string option; [@option]
      (** The [KMS key name] with which the content of the Operation is encrypted. The expected
format: projects/*/locations/*/keyRings/*/cryptoKeys/*.
Will be empty string if google managed. *)
  type_ : string option; [@option] [@key "type"]
      (** Type of Encryption Key Possible values: [GOOGLE_MANAGED, CUSTOMER_MANAGED] *)
}
[@@deriving yojson_of]
(** Encription key value of configVariable. *)

type google_integration_connectors_connection__eventing_config__additional_variable__secret_value = {
  secret_version : string;
      (** Secret version of Secret Value for Config variable. *)
}
[@@deriving yojson_of]
(** Secret value of configVariable *)

type google_integration_connectors_connection__eventing_config__additional_variable = {
  boolean_value : bool option; [@option]
      (** Boolean Value of configVariable. *)
  integer_value : float option; [@option]
      (** Integer Value of configVariable. *)
  key : string;  (** Key for the configVariable *)
  string_value : string option; [@option]
      (** String Value of configVariabley. *)
  encryption_key_value :
    google_integration_connectors_connection__eventing_config__additional_variable__encryption_key_value
    list;
  secret_value :
    google_integration_connectors_connection__eventing_config__additional_variable__secret_value
    list;
}
[@@deriving yojson_of]
(** List containing additional auth configs. *)

type google_integration_connectors_connection__eventing_config__auth_config__additional_variable__encryption_key_value = {
  kms_key_name : string option; [@option]
      (** The [KMS key name] with which the content of the Operation is encrypted. The expected
format: projects/*/locations/*/keyRings/*/cryptoKeys/*.
Will be empty string if google managed. *)
  type_ : string option; [@option] [@key "type"]
      (** Type of Encription Key Possible values: [GOOGLE_MANAGED, CUSTOMER_MANAGED] *)
}
[@@deriving yojson_of]
(** Encription key value of configVariable *)

type google_integration_connectors_connection__eventing_config__auth_config__additional_variable__secret_value = {
  secret_version : string;
      (** Secret version of Secret Value for Config variable. *)
}
[@@deriving yojson_of]
(** Secret value of configVariable *)

type google_integration_connectors_connection__eventing_config__auth_config__additional_variable = {
  boolean_value : bool option; [@option]
      (** Boolean Value of configVariable. *)
  integer_value : float option; [@option]
      (** Integer Value of configVariable. *)
  key : string;  (** Key for the configVariable *)
  string_value : string option; [@option]
      (** String Value of configVariabley. *)
  encryption_key_value :
    google_integration_connectors_connection__eventing_config__auth_config__additional_variable__encryption_key_value
    list;
  secret_value :
    google_integration_connectors_connection__eventing_config__auth_config__additional_variable__secret_value
    list;
}
[@@deriving yojson_of]
(** List containing additional auth configs. *)

type google_integration_connectors_connection__eventing_config__auth_config__user_password__password = {
  secret_version : string;
      (** The resource name of the secret version in the format,
format as: projects/*/secrets/*/versions/*. *)
}
[@@deriving yojson_of]
(** Password for Authentication. *)

type google_integration_connectors_connection__eventing_config__auth_config__user_password = {
  username : string option; [@option]
      (** Username for Authentication. *)
  password :
    google_integration_connectors_connection__eventing_config__auth_config__user_password__password
    list;
}
[@@deriving yojson_of]
(** User password for Authentication. *)

type google_integration_connectors_connection__eventing_config__auth_config = {
  auth_key : string option; [@option]
      (** The type of authentication configured. *)
  auth_type : string;
      (** authType of the Connection Possible values: [USER_PASSWORD] *)
  additional_variable :
    google_integration_connectors_connection__eventing_config__auth_config__additional_variable
    list;
  user_password :
    google_integration_connectors_connection__eventing_config__auth_config__user_password
    list;
}
[@@deriving yojson_of]
(** authConfig for Eventing Configuration. *)

type google_integration_connectors_connection__eventing_config__registration_destination_config__destination = {
  host : string option; [@option]  (** Host *)
  port : float option; [@option]  (** port number *)
  service_attachment : string option; [@option]
      (** Service Attachment *)
}
[@@deriving yojson_of]
(** destinations for the connection *)

type google_integration_connectors_connection__eventing_config__registration_destination_config = {
  key : string option; [@option]  (** Key for the connection *)
  destination :
    google_integration_connectors_connection__eventing_config__registration_destination_config__destination
    list;
}
[@@deriving yojson_of]
(** registrationDestinationConfig *)

type google_integration_connectors_connection__eventing_config = {
  enrichment_enabled : bool option; [@option]
      (** Enrichment Enabled. *)
  additional_variable :
    google_integration_connectors_connection__eventing_config__additional_variable
    list;
  auth_config :
    google_integration_connectors_connection__eventing_config__auth_config
    list;
  registration_destination_config :
    google_integration_connectors_connection__eventing_config__registration_destination_config
    list;
}
[@@deriving yojson_of]
(** Eventing Configuration of a connection *)

type google_integration_connectors_connection__lock_config = {
  locked : bool;
      (** Indicates whether or not the connection is locked. *)
  reason : string option; [@option]
      (** Describes why a connection is locked. *)
}
[@@deriving yojson_of]
(** Determines whether or no a connection is locked. If locked, a reason must be specified. *)

type google_integration_connectors_connection__log_config = {
  enabled : bool;
      (** Enabled represents whether logging is enabled or not for a connection. *)
}
[@@deriving yojson_of]
(** Log configuration for the connection. *)

type google_integration_connectors_connection__node_config = {
  max_node_count : float option; [@option]
      (** Minimum number of nodes in the runtime nodes. *)
  min_node_count : float option; [@option]
      (** Minimum number of nodes in the runtime nodes. *)
}
[@@deriving yojson_of]
(** Node configuration for the connection. *)

type google_integration_connectors_connection__ssl_config__additional_variable__encryption_key_value = {
  kms_key_name : string option; [@option]
      (** The [KMS key name] with which the content of the Operation is encrypted. The expected
format: projects/*/locations/*/keyRings/*/cryptoKeys/*.
Will be empty string if google managed. *)
  type_ : string option; [@option] [@key "type"]
      (** Type of Encription Key Possible values: [GOOGLE_MANAGED, CUSTOMER_MANAGED] *)
}
[@@deriving yojson_of]
(** Encription key value of configVariable *)

type google_integration_connectors_connection__ssl_config__additional_variable__secret_value = {
  secret_version : string;
      (** Secret version of Secret Value for Config variable. *)
}
[@@deriving yojson_of]
(** Secret value of configVariable *)

type google_integration_connectors_connection__ssl_config__additional_variable = {
  boolean_value : bool option; [@option]
      (** Boolean Value of configVariable. *)
  integer_value : float option; [@option]
      (** Integer Value of configVariable. *)
  key : string;  (** Key for the configVariable *)
  string_value : string option; [@option]
      (** String Value of configVariabley. *)
  encryption_key_value :
    google_integration_connectors_connection__ssl_config__additional_variable__encryption_key_value
    list;
  secret_value :
    google_integration_connectors_connection__ssl_config__additional_variable__secret_value
    list;
}
[@@deriving yojson_of]
(** Additional SSL related field values. *)

type google_integration_connectors_connection__ssl_config__client_certificate = {
  secret_version : string;
      (** Secret version of Secret Value for Config variable. *)
}
[@@deriving yojson_of]
(** Client Certificate *)

type google_integration_connectors_connection__ssl_config__client_private_key = {
  secret_version : string;
      (** Secret version of Secret Value for Config variable. *)
}
[@@deriving yojson_of]
(** Client Private Key *)

type google_integration_connectors_connection__ssl_config__client_private_key_pass = {
  secret_version : string;
      (** Secret version of Secret Value for Config variable. *)
}
[@@deriving yojson_of]
(** Secret containing the passphrase protecting the Client Private Key *)

type google_integration_connectors_connection__ssl_config__private_server_certificate = {
  secret_version : string;
      (** Secret version of Secret Value for Config variable. *)
}
[@@deriving yojson_of]
(** Private Server Certificate. Needs to be specified if trust model is PRIVATE. *)

type google_integration_connectors_connection__ssl_config = {
  client_cert_type : string option; [@option]
      (** Type of Client Cert (PEM/JKS/.. etc.) Possible values: [PEM] *)
  server_cert_type : string option; [@option]
      (** Type of Server Cert (PEM/JKS/.. etc.) Possible values: [PEM] *)
  trust_model : string option; [@option]
      (** Enum for Trust Model Possible values: [PUBLIC, PRIVATE, INSECURE] *)
  type_ : string; [@key "type"]
      (** Enum for controlling the SSL Type (TLS/MTLS) Possible values: [TLS, MTLS] *)
  use_ssl : bool option; [@option]  (** Bool for enabling SSL *)
  additional_variable :
    google_integration_connectors_connection__ssl_config__additional_variable
    list;
  client_certificate :
    google_integration_connectors_connection__ssl_config__client_certificate
    list;
  client_private_key :
    google_integration_connectors_connection__ssl_config__client_private_key
    list;
  client_private_key_pass :
    google_integration_connectors_connection__ssl_config__client_private_key_pass
    list;
  private_server_certificate :
    google_integration_connectors_connection__ssl_config__private_server_certificate
    list;
}
[@@deriving yojson_of]
(** SSL Configuration of a connection *)

type google_integration_connectors_connection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_integration_connectors_connection__timeouts *)

type google_integration_connectors_connection__connector_version_infra_config = {
  ratelimit_threshold : string;  (** ratelimit_threshold *)
}
[@@deriving yojson_of]

type google_integration_connectors_connection__eventing_runtime_data__status = {
  description : string;  (** description *)
  state : string;  (** state *)
}
[@@deriving yojson_of]

type google_integration_connectors_connection__eventing_runtime_data = {
  events_listener_endpoint : string;  (** events_listener_endpoint *)
  status :
    google_integration_connectors_connection__eventing_runtime_data__status
    list;
      (** status *)
}
[@@deriving yojson_of]

type google_integration_connectors_connection__status = {
  description : string;  (** description *)
  state : string;  (** state *)
  status : string;  (** status *)
}
[@@deriving yojson_of]

type google_integration_connectors_connection = {
  connector_version : string;
      (** connectorVersion of the Connector. *)
  description : string option; [@option]
      (** An arbitrary description for the Conection. *)
  eventing_enablement_type : string option; [@option]
      (** Eventing enablement type. Will be nil if eventing is not enabled. Possible values: [EVENTING_AND_CONNECTION, ONLY_EVENTING] *)
  id : string option; [@option]  (** id *)
  labels : (string * string) list option; [@option]
      (** Resource labels to represent user provided metadata.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string;
      (** Location in which Connection needs to be created. *)
  name : string;  (** Name of Connection needs to be created. *)
  project : string option; [@option]  (** project *)
  service_account : string option; [@option]
      (** Service account needed for runtime plane to access Google Cloud resources. *)
  suspended : bool option; [@option]
      (** Suspended indicates if a user has suspended a connection or not. *)
  auth_config :
    google_integration_connectors_connection__auth_config list;
  config_variable :
    google_integration_connectors_connection__config_variable list;
  destination_config :
    google_integration_connectors_connection__destination_config list;
  eventing_config :
    google_integration_connectors_connection__eventing_config list;
  lock_config :
    google_integration_connectors_connection__lock_config list;
  log_config :
    google_integration_connectors_connection__log_config list;
  node_config :
    google_integration_connectors_connection__node_config list;
  ssl_config :
    google_integration_connectors_connection__ssl_config list;
  timeouts :
    google_integration_connectors_connection__timeouts option;
}
[@@deriving yojson_of]
(** google_integration_connectors_connection *)

let google_integration_connectors_connection ?description
    ?eventing_enablement_type ?id ?labels ?project ?service_account
    ?suspended ?timeouts ~connector_version ~location ~name
    ~auth_config ~config_variable ~destination_config
    ~eventing_config ~lock_config ~log_config ~node_config
    ~ssl_config __resource_id =
  let __resource_type = "google_integration_connectors_connection" in
  let __resource =
    {
      connector_version;
      description;
      eventing_enablement_type;
      id;
      labels;
      location;
      name;
      project;
      service_account;
      suspended;
      auth_config;
      config_variable;
      destination_config;
      eventing_config;
      lock_config;
      log_config;
      node_config;
      ssl_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_integration_connectors_connection __resource);
  ()
