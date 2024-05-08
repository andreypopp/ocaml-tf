(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type connector_version_infra_config = {
  ratelimit_threshold : string prop;  (** ratelimit_threshold *)
}

type eventing_runtime_data__status = {
  description : string prop;  (** description *)
  state : string prop;  (** state *)
}

type eventing_runtime_data = {
  events_listener_endpoint : string prop;
      (** events_listener_endpoint *)
  status : eventing_runtime_data__status list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** status *)
}

type status = {
  description : string prop;  (** description *)
  state : string prop;  (** state *)
  status : string prop;  (** status *)
}

type auth_config__additional_variable__encryption_key_value

val auth_config__additional_variable__encryption_key_value :
  ?kms_key_name:string prop ->
  type_:string prop ->
  unit ->
  auth_config__additional_variable__encryption_key_value

type auth_config__additional_variable__secret_value

val auth_config__additional_variable__secret_value :
  secret_version:string prop ->
  unit ->
  auth_config__additional_variable__secret_value

type auth_config__additional_variable

val auth_config__additional_variable :
  ?boolean_value:bool prop ->
  ?integer_value:float prop ->
  ?string_value:string prop ->
  ?encryption_key_value:
    auth_config__additional_variable__encryption_key_value list ->
  ?secret_value:auth_config__additional_variable__secret_value list ->
  key:string prop ->
  unit ->
  auth_config__additional_variable

type auth_config__oauth2_auth_code_flow__client_secret

val auth_config__oauth2_auth_code_flow__client_secret :
  secret_version:string prop ->
  unit ->
  auth_config__oauth2_auth_code_flow__client_secret

type auth_config__oauth2_auth_code_flow

val auth_config__oauth2_auth_code_flow :
  ?auth_uri:string prop ->
  ?client_id:string prop ->
  ?enable_pkce:bool prop ->
  ?scopes:string prop list ->
  ?client_secret:
    auth_config__oauth2_auth_code_flow__client_secret list ->
  unit ->
  auth_config__oauth2_auth_code_flow

type auth_config__oauth2_client_credentials__client_secret

val auth_config__oauth2_client_credentials__client_secret :
  secret_version:string prop ->
  unit ->
  auth_config__oauth2_client_credentials__client_secret

type auth_config__oauth2_client_credentials

val auth_config__oauth2_client_credentials :
  ?client_secret:
    auth_config__oauth2_client_credentials__client_secret list ->
  client_id:string prop ->
  unit ->
  auth_config__oauth2_client_credentials

type auth_config__oauth2_jwt_bearer__client_key

val auth_config__oauth2_jwt_bearer__client_key :
  secret_version:string prop ->
  unit ->
  auth_config__oauth2_jwt_bearer__client_key

type auth_config__oauth2_jwt_bearer__jwt_claims

val auth_config__oauth2_jwt_bearer__jwt_claims :
  ?audience:string prop ->
  ?issuer:string prop ->
  ?subject:string prop ->
  unit ->
  auth_config__oauth2_jwt_bearer__jwt_claims

type auth_config__oauth2_jwt_bearer

val auth_config__oauth2_jwt_bearer :
  ?client_key:auth_config__oauth2_jwt_bearer__client_key list ->
  ?jwt_claims:auth_config__oauth2_jwt_bearer__jwt_claims list ->
  unit ->
  auth_config__oauth2_jwt_bearer

type auth_config__ssh_public_key__ssh_client_cert

val auth_config__ssh_public_key__ssh_client_cert :
  secret_version:string prop ->
  unit ->
  auth_config__ssh_public_key__ssh_client_cert

type auth_config__ssh_public_key__ssh_client_cert_pass

val auth_config__ssh_public_key__ssh_client_cert_pass :
  secret_version:string prop ->
  unit ->
  auth_config__ssh_public_key__ssh_client_cert_pass

type auth_config__ssh_public_key

val auth_config__ssh_public_key :
  ?cert_type:string prop ->
  ?ssh_client_cert:auth_config__ssh_public_key__ssh_client_cert list ->
  ?ssh_client_cert_pass:
    auth_config__ssh_public_key__ssh_client_cert_pass list ->
  username:string prop ->
  unit ->
  auth_config__ssh_public_key

type auth_config__user_password__password

val auth_config__user_password__password :
  secret_version:string prop ->
  unit ->
  auth_config__user_password__password

type auth_config__user_password

val auth_config__user_password :
  ?password:auth_config__user_password__password list ->
  username:string prop ->
  unit ->
  auth_config__user_password

type auth_config

val auth_config :
  ?auth_key:string prop ->
  ?additional_variable:auth_config__additional_variable list ->
  ?oauth2_auth_code_flow:auth_config__oauth2_auth_code_flow list ->
  ?oauth2_client_credentials:
    auth_config__oauth2_client_credentials list ->
  ?oauth2_jwt_bearer:auth_config__oauth2_jwt_bearer list ->
  ?ssh_public_key:auth_config__ssh_public_key list ->
  ?user_password:auth_config__user_password list ->
  auth_type:string prop ->
  unit ->
  auth_config

type config_variable__encryption_key_value

val config_variable__encryption_key_value :
  ?kms_key_name:string prop ->
  type_:string prop ->
  unit ->
  config_variable__encryption_key_value

type config_variable__secret_value

val config_variable__secret_value :
  secret_version:string prop -> unit -> config_variable__secret_value

type config_variable

val config_variable :
  ?boolean_value:bool prop ->
  ?integer_value:float prop ->
  ?string_value:string prop ->
  ?encryption_key_value:config_variable__encryption_key_value list ->
  ?secret_value:config_variable__secret_value list ->
  key:string prop ->
  unit ->
  config_variable

type destination_config__destination

val destination_config__destination :
  ?host:string prop ->
  ?port:float prop ->
  ?service_attachment:string prop ->
  unit ->
  destination_config__destination

type destination_config

val destination_config :
  ?destination:destination_config__destination list ->
  key:string prop ->
  unit ->
  destination_config

type eventing_config__additional_variable__encryption_key_value

val eventing_config__additional_variable__encryption_key_value :
  ?kms_key_name:string prop ->
  ?type_:string prop ->
  unit ->
  eventing_config__additional_variable__encryption_key_value

type eventing_config__additional_variable__secret_value

val eventing_config__additional_variable__secret_value :
  secret_version:string prop ->
  unit ->
  eventing_config__additional_variable__secret_value

type eventing_config__additional_variable

val eventing_config__additional_variable :
  ?boolean_value:bool prop ->
  ?integer_value:float prop ->
  ?string_value:string prop ->
  ?encryption_key_value:
    eventing_config__additional_variable__encryption_key_value list ->
  ?secret_value:
    eventing_config__additional_variable__secret_value list ->
  key:string prop ->
  unit ->
  eventing_config__additional_variable

type eventing_config__auth_config__additional_variable__encryption_key_value

val eventing_config__auth_config__additional_variable__encryption_key_value :
  ?kms_key_name:string prop ->
  ?type_:string prop ->
  unit ->
  eventing_config__auth_config__additional_variable__encryption_key_value

type eventing_config__auth_config__additional_variable__secret_value

val eventing_config__auth_config__additional_variable__secret_value :
  secret_version:string prop ->
  unit ->
  eventing_config__auth_config__additional_variable__secret_value

type eventing_config__auth_config__additional_variable

val eventing_config__auth_config__additional_variable :
  ?boolean_value:bool prop ->
  ?integer_value:float prop ->
  ?string_value:string prop ->
  ?encryption_key_value:
    eventing_config__auth_config__additional_variable__encryption_key_value
    list ->
  ?secret_value:
    eventing_config__auth_config__additional_variable__secret_value
    list ->
  key:string prop ->
  unit ->
  eventing_config__auth_config__additional_variable

type eventing_config__auth_config__user_password__password

val eventing_config__auth_config__user_password__password :
  secret_version:string prop ->
  unit ->
  eventing_config__auth_config__user_password__password

type eventing_config__auth_config__user_password

val eventing_config__auth_config__user_password :
  ?username:string prop ->
  ?password:
    eventing_config__auth_config__user_password__password list ->
  unit ->
  eventing_config__auth_config__user_password

type eventing_config__auth_config

val eventing_config__auth_config :
  ?auth_key:string prop ->
  ?additional_variable:
    eventing_config__auth_config__additional_variable list ->
  auth_type:string prop ->
  user_password:eventing_config__auth_config__user_password list ->
  unit ->
  eventing_config__auth_config

type eventing_config__registration_destination_config__destination

val eventing_config__registration_destination_config__destination :
  ?host:string prop ->
  ?port:float prop ->
  ?service_attachment:string prop ->
  unit ->
  eventing_config__registration_destination_config__destination

type eventing_config__registration_destination_config

val eventing_config__registration_destination_config :
  ?key:string prop ->
  ?destination:
    eventing_config__registration_destination_config__destination
    list ->
  unit ->
  eventing_config__registration_destination_config

type eventing_config

val eventing_config :
  ?enrichment_enabled:bool prop ->
  ?additional_variable:eventing_config__additional_variable list ->
  ?auth_config:eventing_config__auth_config list ->
  registration_destination_config:
    eventing_config__registration_destination_config list ->
  unit ->
  eventing_config

type lock_config

val lock_config :
  ?reason:string prop -> locked:bool prop -> unit -> lock_config

type log_config

val log_config : enabled:bool prop -> unit -> log_config

type node_config

val node_config :
  ?max_node_count:float prop ->
  ?min_node_count:float prop ->
  unit ->
  node_config

type ssl_config__additional_variable__encryption_key_value

val ssl_config__additional_variable__encryption_key_value :
  ?kms_key_name:string prop ->
  ?type_:string prop ->
  unit ->
  ssl_config__additional_variable__encryption_key_value

type ssl_config__additional_variable__secret_value

val ssl_config__additional_variable__secret_value :
  secret_version:string prop ->
  unit ->
  ssl_config__additional_variable__secret_value

type ssl_config__additional_variable

val ssl_config__additional_variable :
  ?boolean_value:bool prop ->
  ?integer_value:float prop ->
  ?string_value:string prop ->
  ?encryption_key_value:
    ssl_config__additional_variable__encryption_key_value list ->
  ?secret_value:ssl_config__additional_variable__secret_value list ->
  key:string prop ->
  unit ->
  ssl_config__additional_variable

type ssl_config__client_certificate

val ssl_config__client_certificate :
  secret_version:string prop ->
  unit ->
  ssl_config__client_certificate

type ssl_config__client_private_key

val ssl_config__client_private_key :
  secret_version:string prop ->
  unit ->
  ssl_config__client_private_key

type ssl_config__client_private_key_pass

val ssl_config__client_private_key_pass :
  secret_version:string prop ->
  unit ->
  ssl_config__client_private_key_pass

type ssl_config__private_server_certificate

val ssl_config__private_server_certificate :
  secret_version:string prop ->
  unit ->
  ssl_config__private_server_certificate

type ssl_config

val ssl_config :
  ?client_cert_type:string prop ->
  ?server_cert_type:string prop ->
  ?trust_model:string prop ->
  ?use_ssl:bool prop ->
  ?additional_variable:ssl_config__additional_variable list ->
  ?client_certificate:ssl_config__client_certificate list ->
  ?client_private_key:ssl_config__client_private_key list ->
  ?client_private_key_pass:ssl_config__client_private_key_pass list ->
  ?private_server_certificate:
    ssl_config__private_server_certificate list ->
  type_:string prop ->
  unit ->
  ssl_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_integration_connectors_connection

val google_integration_connectors_connection :
  ?description:string prop ->
  ?eventing_enablement_type:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?service_account:string prop ->
  ?suspended:bool prop ->
  ?auth_config:auth_config list ->
  ?config_variable:config_variable list ->
  ?destination_config:destination_config list ->
  ?eventing_config:eventing_config list ->
  ?lock_config:lock_config list ->
  ?log_config:log_config list ->
  ?node_config:node_config list ->
  ?ssl_config:ssl_config list ->
  ?timeouts:timeouts ->
  connector_version:string prop ->
  location:string prop ->
  name:string prop ->
  unit ->
  google_integration_connectors_connection

val yojson_of_google_integration_connectors_connection :
  google_integration_connectors_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?eventing_enablement_type:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?service_account:string prop ->
  ?suspended:bool prop ->
  ?auth_config:auth_config list ->
  ?config_variable:config_variable list ->
  ?destination_config:destination_config list ->
  ?eventing_config:eventing_config list ->
  ?lock_config:lock_config list ->
  ?log_config:log_config list ->
  ?node_config:node_config list ->
  ?ssl_config:ssl_config list ->
  ?timeouts:timeouts ->
  connector_version:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?eventing_enablement_type:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?service_account:string prop ->
  ?suspended:bool prop ->
  ?auth_config:auth_config list ->
  ?config_variable:config_variable list ->
  ?destination_config:destination_config list ->
  ?eventing_config:eventing_config list ->
  ?lock_config:lock_config list ->
  ?log_config:log_config list ->
  ?node_config:node_config list ->
  ?ssl_config:ssl_config list ->
  ?timeouts:timeouts ->
  connector_version:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
