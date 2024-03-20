(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auth_config__additional_variable__encryption_key_value = {
  kms_key_name : string prop option; [@option]
      (** The [KMS key name] with which the content of the Operation is encrypted. The expected
format: projects/*/locations/*/keyRings/*/cryptoKeys/*.
Will be empty string if google managed. *)
  type_ : string prop; [@key "type"]
      (** Type of Encription Key Possible values: [GOOGLE_MANAGED, CUSTOMER_MANAGED] *)
}
[@@deriving yojson_of]
(** Encription key value of configVariable. *)

type auth_config__additional_variable__secret_value = {
  secret_version : string prop;
      (** Secret version of Secret Value for Config variable. *)
}
[@@deriving yojson_of]
(** Secret value of configVariable. *)

type auth_config__additional_variable = {
  boolean_value : bool prop option; [@option]
      (** Boolean Value of configVariable. *)
  integer_value : float prop option; [@option]
      (** Integer Value of configVariable. *)
  key : string prop;  (** Key for the configVariable *)
  string_value : string prop option; [@option]
      (** String Value of configVariabley. *)
  encryption_key_value :
    auth_config__additional_variable__encryption_key_value list;
  secret_value : auth_config__additional_variable__secret_value list;
}
[@@deriving yojson_of]
(** List containing additional auth configs. *)

type auth_config__oauth2_auth_code_flow__client_secret = {
  secret_version : string prop;
      (** The resource name of the secret version in the format,
format as: projects/*/secrets/*/versions/*. *)
}
[@@deriving yojson_of]
(** Client secret for user-provided OAuth app. *)

type auth_config__oauth2_auth_code_flow = {
  auth_uri : string prop option; [@option]
      (** Auth URL for Authorization Code Flow. *)
  client_id : string prop option; [@option]
      (** Client ID for user-provided OAuth app. *)
  enable_pkce : bool prop option; [@option]
      (** Whether to enable PKCE when the user performs the auth code flow. *)
  scopes : string prop list option; [@option]
      (** Scopes the connection will request when the user performs the auth code flow. *)
  client_secret :
    auth_config__oauth2_auth_code_flow__client_secret list;
}
[@@deriving yojson_of]
(** Parameters to support Oauth 2.0 Auth Code Grant Authentication. *)

type auth_config__oauth2_client_credentials__client_secret = {
  secret_version : string prop;
      (** The resource name of the secret version in the format,
format as: projects/*/secrets/*/versions/*. *)
}
[@@deriving yojson_of]
(** Secret version reference containing the client secret. *)

type auth_config__oauth2_client_credentials = {
  client_id : string prop;
      (** Secret version of Password for Authentication. *)
  client_secret :
    auth_config__oauth2_client_credentials__client_secret list;
}
[@@deriving yojson_of]
(** OAuth3 Client Credentials for Authentication. *)

type auth_config__oauth2_jwt_bearer__client_key = {
  secret_version : string prop;
      (** The resource name of the secret version in the format,
format as: projects/*/secrets/*/versions/*. *)
}
[@@deriving yojson_of]
(** Secret version reference containing a PKCS#8 PEM-encoded private key associated with the Client Certificate.
This private key will be used to sign JWTs used for the jwt-bearer authorization grant.
Specified in the form as: projects/*/secrets/*/versions/*. *)

type auth_config__oauth2_jwt_bearer__jwt_claims = {
  audience : string prop option; [@option]
      (** Value for the aud claim. *)
  issuer : string prop option; [@option]
      (** Value for the iss claim. *)
  subject : string prop option; [@option]
      (** Value for the sub claim. *)
}
[@@deriving yojson_of]
(** JwtClaims providers fields to generate the token. *)

type auth_config__oauth2_jwt_bearer = {
  client_key : auth_config__oauth2_jwt_bearer__client_key list;
  jwt_claims : auth_config__oauth2_jwt_bearer__jwt_claims list;
}
[@@deriving yojson_of]
(** OAuth2 JWT Bearer for Authentication. *)

type auth_config__ssh_public_key__ssh_client_cert = {
  secret_version : string prop;
      (** The resource name of the secret version in the format,
format as: projects/*/secrets/*/versions/*. *)
}
[@@deriving yojson_of]
(** SSH Client Cert. It should contain both public and private key. *)

type auth_config__ssh_public_key__ssh_client_cert_pass = {
  secret_version : string prop;
      (** The resource name of the secret version in the format,
format as: projects/*/secrets/*/versions/*. *)
}
[@@deriving yojson_of]
(** Password (passphrase) for ssh client certificate if it has one. *)

type auth_config__ssh_public_key = {
  cert_type : string prop option; [@option]
      (** Format of SSH Client cert. *)
  username : string prop;
      (** The user account used to authenticate. *)
  ssh_client_cert :
    auth_config__ssh_public_key__ssh_client_cert list;
  ssh_client_cert_pass :
    auth_config__ssh_public_key__ssh_client_cert_pass list;
}
[@@deriving yojson_of]
(** SSH Public Key for Authentication. *)

type auth_config__user_password__password = {
  secret_version : string prop;
      (** The resource name of the secret version in the format,
format as: projects/*/secrets/*/versions/*. *)
}
[@@deriving yojson_of]
(** Password for Authentication. *)

type auth_config__user_password = {
  username : string prop;  (** Username for Authentication. *)
  password : auth_config__user_password__password list;
}
[@@deriving yojson_of]
(** User password for Authentication. *)

type auth_config = {
  auth_key : string prop option; [@option]
      (** The type of authentication configured. *)
  auth_type : string prop;
      (** authType of the Connection Possible values: [USER_PASSWORD, OAUTH2_JWT_BEARER, OAUTH2_CLIENT_CREDENTIALS, SSH_PUBLIC_KEY, OAUTH2_AUTH_CODE_FLOW] *)
  additional_variable : auth_config__additional_variable list;
  oauth2_auth_code_flow : auth_config__oauth2_auth_code_flow list;
  oauth2_client_credentials :
    auth_config__oauth2_client_credentials list;
  oauth2_jwt_bearer : auth_config__oauth2_jwt_bearer list;
  ssh_public_key : auth_config__ssh_public_key list;
  user_password : auth_config__user_password list;
}
[@@deriving yojson_of]
(** authConfig for the connection. *)

type config_variable__encryption_key_value = {
  kms_key_name : string prop option; [@option]
      (** The [KMS key name] with which the content of the Operation is encrypted. The expected
format: projects/*/locations/*/keyRings/*/cryptoKeys/*.
Will be empty string if google managed. *)
  type_ : string prop; [@key "type"]
      (** Type of Encription Key Possible values: [GOOGLE_MANAGED, CUSTOMER_MANAGED] *)
}
[@@deriving yojson_of]
(** Encription key value of configVariable. *)

type config_variable__secret_value = {
  secret_version : string prop;
      (** Secret version of Secret Value for Config variable. *)
}
[@@deriving yojson_of]
(** Secret value of configVariable. *)

type config_variable = {
  boolean_value : bool prop option; [@option]
      (** Boolean Value of configVariable *)
  integer_value : float prop option; [@option]
      (** Integer Value of configVariable *)
  key : string prop;  (** Key for the configVariable *)
  string_value : string prop option; [@option]
      (** String Value of configVariabley *)
  encryption_key_value : config_variable__encryption_key_value list;
  secret_value : config_variable__secret_value list;
}
[@@deriving yojson_of]
(** Config Variables for the connection. *)

type destination_config__destination = {
  host : string prop option; [@option]
      (** For publicly routable host. *)
  port : float prop option; [@option]
      (** The port is the target port number that is accepted by the destination. *)
  service_attachment : string prop option; [@option]
      (** PSC service attachments. Format: projects/*/regions/*/serviceAttachments/* *)
}
[@@deriving yojson_of]
(** The destinations for the key. *)

type destination_config = {
  key : string prop;
      (** The key is the destination identifier that is supported by the Connector. *)
  destination : destination_config__destination list;
}
[@@deriving yojson_of]
(** Define the Connectors target endpoint. *)

type eventing_config__additional_variable__encryption_key_value = {
  kms_key_name : string prop option; [@option]
      (** The [KMS key name] with which the content of the Operation is encrypted. The expected
format: projects/*/locations/*/keyRings/*/cryptoKeys/*.
Will be empty string if google managed. *)
  type_ : string prop option; [@option] [@key "type"]
      (** Type of Encryption Key Possible values: [GOOGLE_MANAGED, CUSTOMER_MANAGED] *)
}
[@@deriving yojson_of]
(** Encription key value of configVariable. *)

type eventing_config__additional_variable__secret_value = {
  secret_version : string prop;
      (** Secret version of Secret Value for Config variable. *)
}
[@@deriving yojson_of]
(** Secret value of configVariable *)

type eventing_config__additional_variable = {
  boolean_value : bool prop option; [@option]
      (** Boolean Value of configVariable. *)
  integer_value : float prop option; [@option]
      (** Integer Value of configVariable. *)
  key : string prop;  (** Key for the configVariable *)
  string_value : string prop option; [@option]
      (** String Value of configVariabley. *)
  encryption_key_value :
    eventing_config__additional_variable__encryption_key_value list;
  secret_value :
    eventing_config__additional_variable__secret_value list;
}
[@@deriving yojson_of]
(** List containing additional auth configs. *)

type eventing_config__auth_config__additional_variable__encryption_key_value = {
  kms_key_name : string prop option; [@option]
      (** The [KMS key name] with which the content of the Operation is encrypted. The expected
format: projects/*/locations/*/keyRings/*/cryptoKeys/*.
Will be empty string if google managed. *)
  type_ : string prop option; [@option] [@key "type"]
      (** Type of Encription Key Possible values: [GOOGLE_MANAGED, CUSTOMER_MANAGED] *)
}
[@@deriving yojson_of]
(** Encription key value of configVariable *)

type eventing_config__auth_config__additional_variable__secret_value = {
  secret_version : string prop;
      (** Secret version of Secret Value for Config variable. *)
}
[@@deriving yojson_of]
(** Secret value of configVariable *)

type eventing_config__auth_config__additional_variable = {
  boolean_value : bool prop option; [@option]
      (** Boolean Value of configVariable. *)
  integer_value : float prop option; [@option]
      (** Integer Value of configVariable. *)
  key : string prop;  (** Key for the configVariable *)
  string_value : string prop option; [@option]
      (** String Value of configVariabley. *)
  encryption_key_value :
    eventing_config__auth_config__additional_variable__encryption_key_value
    list;
  secret_value :
    eventing_config__auth_config__additional_variable__secret_value
    list;
}
[@@deriving yojson_of]
(** List containing additional auth configs. *)

type eventing_config__auth_config__user_password__password = {
  secret_version : string prop;
      (** The resource name of the secret version in the format,
format as: projects/*/secrets/*/versions/*. *)
}
[@@deriving yojson_of]
(** Password for Authentication. *)

type eventing_config__auth_config__user_password = {
  username : string prop option; [@option]
      (** Username for Authentication. *)
  password :
    eventing_config__auth_config__user_password__password list;
}
[@@deriving yojson_of]
(** User password for Authentication. *)

type eventing_config__auth_config = {
  auth_key : string prop option; [@option]
      (** The type of authentication configured. *)
  auth_type : string prop;
      (** authType of the Connection Possible values: [USER_PASSWORD] *)
  additional_variable :
    eventing_config__auth_config__additional_variable list;
  user_password : eventing_config__auth_config__user_password list;
}
[@@deriving yojson_of]
(** authConfig for Eventing Configuration. *)

type eventing_config__registration_destination_config__destination = {
  host : string prop option; [@option]  (** Host *)
  port : float prop option; [@option]  (** port number *)
  service_attachment : string prop option; [@option]
      (** Service Attachment *)
}
[@@deriving yojson_of]
(** destinations for the connection *)

type eventing_config__registration_destination_config = {
  key : string prop option; [@option]  (** Key for the connection *)
  destination :
    eventing_config__registration_destination_config__destination
    list;
}
[@@deriving yojson_of]
(** registrationDestinationConfig *)

type eventing_config = {
  enrichment_enabled : bool prop option; [@option]
      (** Enrichment Enabled. *)
  additional_variable : eventing_config__additional_variable list;
  auth_config : eventing_config__auth_config list;
  registration_destination_config :
    eventing_config__registration_destination_config list;
}
[@@deriving yojson_of]
(** Eventing Configuration of a connection *)

type lock_config = {
  locked : bool prop;
      (** Indicates whether or not the connection is locked. *)
  reason : string prop option; [@option]
      (** Describes why a connection is locked. *)
}
[@@deriving yojson_of]
(** Determines whether or no a connection is locked. If locked, a reason must be specified. *)

type log_config = {
  enabled : bool prop;
      (** Enabled represents whether logging is enabled or not for a connection. *)
}
[@@deriving yojson_of]
(** Log configuration for the connection. *)

type node_config = {
  max_node_count : float prop option; [@option]
      (** Minimum number of nodes in the runtime nodes. *)
  min_node_count : float prop option; [@option]
      (** Minimum number of nodes in the runtime nodes. *)
}
[@@deriving yojson_of]
(** Node configuration for the connection. *)

type ssl_config__additional_variable__encryption_key_value = {
  kms_key_name : string prop option; [@option]
      (** The [KMS key name] with which the content of the Operation is encrypted. The expected
format: projects/*/locations/*/keyRings/*/cryptoKeys/*.
Will be empty string if google managed. *)
  type_ : string prop option; [@option] [@key "type"]
      (** Type of Encription Key Possible values: [GOOGLE_MANAGED, CUSTOMER_MANAGED] *)
}
[@@deriving yojson_of]
(** Encription key value of configVariable *)

type ssl_config__additional_variable__secret_value = {
  secret_version : string prop;
      (** Secret version of Secret Value for Config variable. *)
}
[@@deriving yojson_of]
(** Secret value of configVariable *)

type ssl_config__additional_variable = {
  boolean_value : bool prop option; [@option]
      (** Boolean Value of configVariable. *)
  integer_value : float prop option; [@option]
      (** Integer Value of configVariable. *)
  key : string prop;  (** Key for the configVariable *)
  string_value : string prop option; [@option]
      (** String Value of configVariabley. *)
  encryption_key_value :
    ssl_config__additional_variable__encryption_key_value list;
  secret_value : ssl_config__additional_variable__secret_value list;
}
[@@deriving yojson_of]
(** Additional SSL related field values. *)

type ssl_config__client_certificate = {
  secret_version : string prop;
      (** Secret version of Secret Value for Config variable. *)
}
[@@deriving yojson_of]
(** Client Certificate *)

type ssl_config__client_private_key = {
  secret_version : string prop;
      (** Secret version of Secret Value for Config variable. *)
}
[@@deriving yojson_of]
(** Client Private Key *)

type ssl_config__client_private_key_pass = {
  secret_version : string prop;
      (** Secret version of Secret Value for Config variable. *)
}
[@@deriving yojson_of]
(** Secret containing the passphrase protecting the Client Private Key *)

type ssl_config__private_server_certificate = {
  secret_version : string prop;
      (** Secret version of Secret Value for Config variable. *)
}
[@@deriving yojson_of]
(** Private Server Certificate. Needs to be specified if trust model is PRIVATE. *)

type ssl_config = {
  client_cert_type : string prop option; [@option]
      (** Type of Client Cert (PEM/JKS/.. etc.) Possible values: [PEM] *)
  server_cert_type : string prop option; [@option]
      (** Type of Server Cert (PEM/JKS/.. etc.) Possible values: [PEM] *)
  trust_model : string prop option; [@option]
      (** Enum for Trust Model Possible values: [PUBLIC, PRIVATE, INSECURE] *)
  type_ : string prop; [@key "type"]
      (** Enum for controlling the SSL Type (TLS/MTLS) Possible values: [TLS, MTLS] *)
  use_ssl : bool prop option; [@option]  (** Bool for enabling SSL *)
  additional_variable : ssl_config__additional_variable list;
  client_certificate : ssl_config__client_certificate list;
  client_private_key : ssl_config__client_private_key list;
  client_private_key_pass : ssl_config__client_private_key_pass list;
  private_server_certificate :
    ssl_config__private_server_certificate list;
}
[@@deriving yojson_of]
(** SSL Configuration of a connection *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type connector_version_infra_config = {
  ratelimit_threshold : string prop;  (** ratelimit_threshold *)
}
[@@deriving yojson_of]

type eventing_runtime_data__status = {
  description : string prop;  (** description *)
  state : string prop;  (** state *)
}
[@@deriving yojson_of]

type eventing_runtime_data = {
  events_listener_endpoint : string prop;
      (** events_listener_endpoint *)
  status : eventing_runtime_data__status list;  (** status *)
}
[@@deriving yojson_of]

type status = {
  description : string prop;  (** description *)
  state : string prop;  (** state *)
  status : string prop;  (** status *)
}
[@@deriving yojson_of]

type google_integration_connectors_connection = {
  connector_version : string prop;
      (** connectorVersion of the Connector. *)
  description : string prop option; [@option]
      (** An arbitrary description for the Conection. *)
  eventing_enablement_type : string prop option; [@option]
      (** Eventing enablement type. Will be nil if eventing is not enabled. Possible values: [EVENTING_AND_CONNECTION, ONLY_EVENTING] *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Resource labels to represent user provided metadata.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;
      (** Location in which Connection needs to be created. *)
  name : string prop;  (** Name of Connection needs to be created. *)
  project : string prop option; [@option]  (** project *)
  service_account : string prop option; [@option]
      (** Service account needed for runtime plane to access Google Cloud resources. *)
  suspended : bool prop option; [@option]
      (** Suspended indicates if a user has suspended a connection or not. *)
  auth_config : auth_config list;
  config_variable : config_variable list;
  destination_config : destination_config list;
  eventing_config : eventing_config list;
  lock_config : lock_config list;
  log_config : log_config list;
  node_config : node_config list;
  ssl_config : ssl_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_integration_connectors_connection *)

let auth_config__additional_variable__encryption_key_value
    ?kms_key_name ~type_ () :
    auth_config__additional_variable__encryption_key_value =
  { kms_key_name; type_ }

let auth_config__additional_variable__secret_value ~secret_version ()
    : auth_config__additional_variable__secret_value =
  { secret_version }

let auth_config__additional_variable ?boolean_value ?integer_value
    ?string_value ~key ~encryption_key_value ~secret_value () :
    auth_config__additional_variable =
  {
    boolean_value;
    integer_value;
    key;
    string_value;
    encryption_key_value;
    secret_value;
  }

let auth_config__oauth2_auth_code_flow__client_secret ~secret_version
    () : auth_config__oauth2_auth_code_flow__client_secret =
  { secret_version }

let auth_config__oauth2_auth_code_flow ?auth_uri ?client_id
    ?enable_pkce ?scopes ~client_secret () :
    auth_config__oauth2_auth_code_flow =
  { auth_uri; client_id; enable_pkce; scopes; client_secret }

let auth_config__oauth2_client_credentials__client_secret
    ~secret_version () :
    auth_config__oauth2_client_credentials__client_secret =
  { secret_version }

let auth_config__oauth2_client_credentials ~client_id ~client_secret
    () : auth_config__oauth2_client_credentials =
  { client_id; client_secret }

let auth_config__oauth2_jwt_bearer__client_key ~secret_version () :
    auth_config__oauth2_jwt_bearer__client_key =
  { secret_version }

let auth_config__oauth2_jwt_bearer__jwt_claims ?audience ?issuer
    ?subject () : auth_config__oauth2_jwt_bearer__jwt_claims =
  { audience; issuer; subject }

let auth_config__oauth2_jwt_bearer ~client_key ~jwt_claims () :
    auth_config__oauth2_jwt_bearer =
  { client_key; jwt_claims }

let auth_config__ssh_public_key__ssh_client_cert ~secret_version () :
    auth_config__ssh_public_key__ssh_client_cert =
  { secret_version }

let auth_config__ssh_public_key__ssh_client_cert_pass ~secret_version
    () : auth_config__ssh_public_key__ssh_client_cert_pass =
  { secret_version }

let auth_config__ssh_public_key ?cert_type ~username ~ssh_client_cert
    ~ssh_client_cert_pass () : auth_config__ssh_public_key =
  { cert_type; username; ssh_client_cert; ssh_client_cert_pass }

let auth_config__user_password__password ~secret_version () :
    auth_config__user_password__password =
  { secret_version }

let auth_config__user_password ~username ~password () :
    auth_config__user_password =
  { username; password }

let auth_config ?auth_key ~auth_type ~additional_variable
    ~oauth2_auth_code_flow ~oauth2_client_credentials
    ~oauth2_jwt_bearer ~ssh_public_key ~user_password () :
    auth_config =
  {
    auth_key;
    auth_type;
    additional_variable;
    oauth2_auth_code_flow;
    oauth2_client_credentials;
    oauth2_jwt_bearer;
    ssh_public_key;
    user_password;
  }

let config_variable__encryption_key_value ?kms_key_name ~type_ () :
    config_variable__encryption_key_value =
  { kms_key_name; type_ }

let config_variable__secret_value ~secret_version () :
    config_variable__secret_value =
  { secret_version }

let config_variable ?boolean_value ?integer_value ?string_value ~key
    ~encryption_key_value ~secret_value () : config_variable =
  {
    boolean_value;
    integer_value;
    key;
    string_value;
    encryption_key_value;
    secret_value;
  }

let destination_config__destination ?host ?port ?service_attachment
    () : destination_config__destination =
  { host; port; service_attachment }

let destination_config ~key ~destination () : destination_config =
  { key; destination }

let eventing_config__additional_variable__encryption_key_value
    ?kms_key_name ?type_ () :
    eventing_config__additional_variable__encryption_key_value =
  { kms_key_name; type_ }

let eventing_config__additional_variable__secret_value
    ~secret_version () :
    eventing_config__additional_variable__secret_value =
  { secret_version }

let eventing_config__additional_variable ?boolean_value
    ?integer_value ?string_value ~key ~encryption_key_value
    ~secret_value () : eventing_config__additional_variable =
  {
    boolean_value;
    integer_value;
    key;
    string_value;
    encryption_key_value;
    secret_value;
  }

let eventing_config__auth_config__additional_variable__encryption_key_value
    ?kms_key_name ?type_ () :
    eventing_config__auth_config__additional_variable__encryption_key_value
    =
  { kms_key_name; type_ }

let eventing_config__auth_config__additional_variable__secret_value
    ~secret_version () :
    eventing_config__auth_config__additional_variable__secret_value =
  { secret_version }

let eventing_config__auth_config__additional_variable ?boolean_value
    ?integer_value ?string_value ~key ~encryption_key_value
    ~secret_value () :
    eventing_config__auth_config__additional_variable =
  {
    boolean_value;
    integer_value;
    key;
    string_value;
    encryption_key_value;
    secret_value;
  }

let eventing_config__auth_config__user_password__password
    ~secret_version () :
    eventing_config__auth_config__user_password__password =
  { secret_version }

let eventing_config__auth_config__user_password ?username ~password
    () : eventing_config__auth_config__user_password =
  { username; password }

let eventing_config__auth_config ?auth_key ~auth_type
    ~additional_variable ~user_password () :
    eventing_config__auth_config =
  { auth_key; auth_type; additional_variable; user_password }

let eventing_config__registration_destination_config__destination
    ?host ?port ?service_attachment () :
    eventing_config__registration_destination_config__destination =
  { host; port; service_attachment }

let eventing_config__registration_destination_config ?key
    ~destination () :
    eventing_config__registration_destination_config =
  { key; destination }

let eventing_config ?enrichment_enabled ~additional_variable
    ~auth_config ~registration_destination_config () :
    eventing_config =
  {
    enrichment_enabled;
    additional_variable;
    auth_config;
    registration_destination_config;
  }

let lock_config ?reason ~locked () : lock_config = { locked; reason }
let log_config ~enabled () : log_config = { enabled }

let node_config ?max_node_count ?min_node_count () : node_config =
  { max_node_count; min_node_count }

let ssl_config__additional_variable__encryption_key_value
    ?kms_key_name ?type_ () :
    ssl_config__additional_variable__encryption_key_value =
  { kms_key_name; type_ }

let ssl_config__additional_variable__secret_value ~secret_version ()
    : ssl_config__additional_variable__secret_value =
  { secret_version }

let ssl_config__additional_variable ?boolean_value ?integer_value
    ?string_value ~key ~encryption_key_value ~secret_value () :
    ssl_config__additional_variable =
  {
    boolean_value;
    integer_value;
    key;
    string_value;
    encryption_key_value;
    secret_value;
  }

let ssl_config__client_certificate ~secret_version () :
    ssl_config__client_certificate =
  { secret_version }

let ssl_config__client_private_key ~secret_version () :
    ssl_config__client_private_key =
  { secret_version }

let ssl_config__client_private_key_pass ~secret_version () :
    ssl_config__client_private_key_pass =
  { secret_version }

let ssl_config__private_server_certificate ~secret_version () :
    ssl_config__private_server_certificate =
  { secret_version }

let ssl_config ?client_cert_type ?server_cert_type ?trust_model
    ?use_ssl ~type_ ~additional_variable ~client_certificate
    ~client_private_key ~client_private_key_pass
    ~private_server_certificate () : ssl_config =
  {
    client_cert_type;
    server_cert_type;
    trust_model;
    type_;
    use_ssl;
    additional_variable;
    client_certificate;
    client_private_key;
    client_private_key_pass;
    private_server_certificate;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_integration_connectors_connection ?description
    ?eventing_enablement_type ?id ?labels ?project ?service_account
    ?suspended ?timeouts ~connector_version ~location ~name
    ~auth_config ~config_variable ~destination_config
    ~eventing_config ~lock_config ~log_config ~node_config
    ~ssl_config () : google_integration_connectors_connection =
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

type t = {
  connection_revision : string prop;
  connector_version : string prop;
  connector_version_infra_config :
    connector_version_infra_config list prop;
  connector_version_launch_stage : string prop;
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  eventing_enablement_type : string prop;
  eventing_runtime_data : eventing_runtime_data list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  service_account : string prop;
  service_directory : string prop;
  status : status list prop;
  subscription_type : string prop;
  suspended : bool prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let make ?description ?eventing_enablement_type ?id ?labels ?project
    ?service_account ?suspended ?timeouts ~connector_version
    ~location ~name ~auth_config ~config_variable ~destination_config
    ~eventing_config ~lock_config ~log_config ~node_config
    ~ssl_config __id =
  let __type = "google_integration_connectors_connection" in
  let __attrs =
    ({
       connection_revision =
         Prop.computed __type __id "connection_revision";
       connector_version =
         Prop.computed __type __id "connector_version";
       connector_version_infra_config =
         Prop.computed __type __id "connector_version_infra_config";
       connector_version_launch_stage =
         Prop.computed __type __id "connector_version_launch_stage";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       eventing_enablement_type =
         Prop.computed __type __id "eventing_enablement_type";
       eventing_runtime_data =
         Prop.computed __type __id "eventing_runtime_data";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       service_account = Prop.computed __type __id "service_account";
       service_directory =
         Prop.computed __type __id "service_directory";
       status = Prop.computed __type __id "status";
       subscription_type =
         Prop.computed __type __id "subscription_type";
       suspended = Prop.computed __type __id "suspended";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_integration_connectors_connection
        (google_integration_connectors_connection ?description
           ?eventing_enablement_type ?id ?labels ?project
           ?service_account ?suspended ?timeouts ~connector_version
           ~location ~name ~auth_config ~config_variable
           ~destination_config ~eventing_config ~lock_config
           ~log_config ~node_config ~ssl_config ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?eventing_enablement_type ?id
    ?labels ?project ?service_account ?suspended ?timeouts
    ~connector_version ~location ~name ~auth_config ~config_variable
    ~destination_config ~eventing_config ~lock_config ~log_config
    ~node_config ~ssl_config __id =
  let (r : _ Tf_core.resource) =
    make ?description ?eventing_enablement_type ?id ?labels ?project
      ?service_account ?suspended ?timeouts ~connector_version
      ~location ~name ~auth_config ~config_variable
      ~destination_config ~eventing_config ~lock_config ~log_config
      ~node_config ~ssl_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
