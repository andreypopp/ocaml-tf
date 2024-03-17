(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_cloudbuildv2_connection__github_config__authorizer_credential = {
  oauth_token_secret_version : string option; [@option]
      (** A SecretManager resource containing the OAuth token that authorizes the Cloud Build connection. Format: 'projects/*/secrets/*/versions/*'. *)
  username : string;
      (** Output only. The username associated to this token. *)
}
[@@deriving yojson_of]
(** OAuth credential of the account that authorized the Cloud Build GitHub App. It is recommended to use a robot account instead of a human user account. The OAuth token must be tied to the Cloud Build GitHub App. *)

type google_cloudbuildv2_connection__github_config = {
  app_installation_id : float option; [@option]
      (** GitHub App installation id. *)
  authorizer_credential :
    google_cloudbuildv2_connection__github_config__authorizer_credential
    list;
}
[@@deriving yojson_of]
(** Configuration for connections to github.com. *)

type google_cloudbuildv2_connection__github_enterprise_config__service_directory_config = {
  service : string;
      (** Required. The Service Directory service name. Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}. *)
}
[@@deriving yojson_of]
(** Configuration for using Service Directory to privately connect to a GitHub Enterprise server. This should only be set if the GitHub Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the GitHub Enterprise server will be made over the public internet. *)

type google_cloudbuildv2_connection__github_enterprise_config = {
  app_id : float option; [@option]
      (** Id of the GitHub App created from the manifest. *)
  app_installation_id : float option; [@option]
      (** ID of the installation of the GitHub App. *)
  app_slug : string option; [@option]
      (** The URL-friendly name of the GitHub App. *)
  host_uri : string;
      (** Required. The URI of the GitHub Enterprise host this connection is for. *)
  private_key_secret_version : string option; [@option]
      (** SecretManager resource containing the private key of the GitHub App, formatted as 'projects/*/secrets/*/versions/*'. *)
  ssl_ca : string option; [@option]
      (** SSL certificate to use for requests to GitHub Enterprise. *)
  webhook_secret_secret_version : string option; [@option]
      (** SecretManager resource containing the webhook secret of the GitHub App, formatted as 'projects/*/secrets/*/versions/*'. *)
  service_directory_config :
    google_cloudbuildv2_connection__github_enterprise_config__service_directory_config
    list;
}
[@@deriving yojson_of]
(** Configuration for connections to an instance of GitHub Enterprise. *)

type google_cloudbuildv2_connection__gitlab_config__authorizer_credential = {
  user_token_secret_version : string;
      (** Required. A SecretManager resource containing the user token that authorizes the Cloud Build connection. Format: 'projects/*/secrets/*/versions/*'. *)
  username : string;
      (** Output only. The username associated to this token. *)
}
[@@deriving yojson_of]
(** Required. A GitLab personal access token with the 'api' scope access. *)

type google_cloudbuildv2_connection__gitlab_config__read_authorizer_credential = {
  user_token_secret_version : string;
      (** Required. A SecretManager resource containing the user token that authorizes the Cloud Build connection. Format: 'projects/*/secrets/*/versions/*'. *)
  username : string;
      (** Output only. The username associated to this token. *)
}
[@@deriving yojson_of]
(** Required. A GitLab personal access token with the minimum 'read_api' scope access. *)

type google_cloudbuildv2_connection__gitlab_config__service_directory_config = {
  service : string;
      (** Required. The Service Directory service name. Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}. *)
}
[@@deriving yojson_of]
(** Configuration for using Service Directory to privately connect to a GitLab Enterprise server. This should only be set if the GitLab Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the GitLab Enterprise server will be made over the public internet. *)

type google_cloudbuildv2_connection__gitlab_config = {
  host_uri : string option; [@option]
      (** The URI of the GitLab Enterprise host this connection is for. If not specified, the default value is https://gitlab.com. *)
  server_version : string;
      (** Output only. Version of the GitLab Enterprise server running on the 'host_uri'. *)
  ssl_ca : string option; [@option]
      (** SSL certificate to use for requests to GitLab Enterprise. *)
  webhook_secret_secret_version : string;
      (** Required. Immutable. SecretManager resource containing the webhook secret of a GitLab Enterprise project, formatted as 'projects/*/secrets/*/versions/*'. *)
  authorizer_credential :
    google_cloudbuildv2_connection__gitlab_config__authorizer_credential
    list;
  read_authorizer_credential :
    google_cloudbuildv2_connection__gitlab_config__read_authorizer_credential
    list;
  service_directory_config :
    google_cloudbuildv2_connection__gitlab_config__service_directory_config
    list;
}
[@@deriving yojson_of]
(** Configuration for connections to gitlab.com or an instance of GitLab Enterprise. *)

type google_cloudbuildv2_connection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_cloudbuildv2_connection__timeouts *)

type google_cloudbuildv2_connection__installation_state = {
  action_uri : string;  (** action_uri *)
  message : string;  (** message *)
  stage : string;  (** stage *)
}
[@@deriving yojson_of]

type google_cloudbuildv2_connection = {
  annotations : (string * string) list option; [@option]
      (** Allows clients to store small amounts of arbitrary data.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field 'effective_annotations' for all of the annotations present on the resource. *)
  disabled : bool option; [@option]
      (** If disabled is set to true, functionality is disabled for this connection. Repository based API methods and webhooks processing for repositories in this connection will be disabled. *)
  id : string option; [@option]  (** id *)
  location : string;  (** The location for the resource *)
  name : string;
      (** Immutable. The resource name of the connection. *)
  project : string option; [@option]  (** project *)
  github_config : google_cloudbuildv2_connection__github_config list;
  github_enterprise_config :
    google_cloudbuildv2_connection__github_enterprise_config list;
  gitlab_config : google_cloudbuildv2_connection__gitlab_config list;
  timeouts : google_cloudbuildv2_connection__timeouts option;
}
[@@deriving yojson_of]
(** google_cloudbuildv2_connection *)

let google_cloudbuildv2_connection ?annotations ?disabled ?id
    ?project ?timeouts ~location ~name ~github_config
    ~github_enterprise_config ~gitlab_config __resource_id =
  let __resource_type = "google_cloudbuildv2_connection" in
  let __resource =
    {
      annotations;
      disabled;
      id;
      location;
      name;
      project;
      github_config;
      github_enterprise_config;
      gitlab_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_cloudbuildv2_connection __resource);
  ()
