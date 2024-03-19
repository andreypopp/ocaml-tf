(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type github_config__authorizer_credential = {
  oauth_token_secret_version : string prop option; [@option]
      (** A SecretManager resource containing the OAuth token that authorizes the Cloud Build connection. Format: 'projects/*/secrets/*/versions/*'. *)
}
[@@deriving yojson_of]
(** OAuth credential of the account that authorized the Cloud Build GitHub App. It is recommended to use a robot account instead of a human user account. The OAuth token must be tied to the Cloud Build GitHub App. *)

type github_config = {
  app_installation_id : float prop option; [@option]
      (** GitHub App installation id. *)
  authorizer_credential : github_config__authorizer_credential list;
}
[@@deriving yojson_of]
(** Configuration for connections to github.com. *)

type github_enterprise_config__service_directory_config = {
  service : string prop;
      (** Required. The Service Directory service name. Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}. *)
}
[@@deriving yojson_of]
(** Configuration for using Service Directory to privately connect to a GitHub Enterprise server. This should only be set if the GitHub Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the GitHub Enterprise server will be made over the public internet. *)

type github_enterprise_config = {
  app_id : float prop option; [@option]
      (** Id of the GitHub App created from the manifest. *)
  app_installation_id : float prop option; [@option]
      (** ID of the installation of the GitHub App. *)
  app_slug : string prop option; [@option]
      (** The URL-friendly name of the GitHub App. *)
  host_uri : string prop;
      (** Required. The URI of the GitHub Enterprise host this connection is for. *)
  private_key_secret_version : string prop option; [@option]
      (** SecretManager resource containing the private key of the GitHub App, formatted as 'projects/*/secrets/*/versions/*'. *)
  ssl_ca : string prop option; [@option]
      (** SSL certificate to use for requests to GitHub Enterprise. *)
  webhook_secret_secret_version : string prop option; [@option]
      (** SecretManager resource containing the webhook secret of the GitHub App, formatted as 'projects/*/secrets/*/versions/*'. *)
  service_directory_config :
    github_enterprise_config__service_directory_config list;
}
[@@deriving yojson_of]
(** Configuration for connections to an instance of GitHub Enterprise. *)

type gitlab_config__authorizer_credential = {
  user_token_secret_version : string prop;
      (** Required. A SecretManager resource containing the user token that authorizes the Cloud Build connection. Format: 'projects/*/secrets/*/versions/*'. *)
}
[@@deriving yojson_of]
(** Required. A GitLab personal access token with the 'api' scope access. *)

type gitlab_config__read_authorizer_credential = {
  user_token_secret_version : string prop;
      (** Required. A SecretManager resource containing the user token that authorizes the Cloud Build connection. Format: 'projects/*/secrets/*/versions/*'. *)
}
[@@deriving yojson_of]
(** Required. A GitLab personal access token with the minimum 'read_api' scope access. *)

type gitlab_config__service_directory_config = {
  service : string prop;
      (** Required. The Service Directory service name. Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}. *)
}
[@@deriving yojson_of]
(** Configuration for using Service Directory to privately connect to a GitLab Enterprise server. This should only be set if the GitLab Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the GitLab Enterprise server will be made over the public internet. *)

type gitlab_config = {
  host_uri : string prop option; [@option]
      (** The URI of the GitLab Enterprise host this connection is for. If not specified, the default value is https://gitlab.com. *)
  ssl_ca : string prop option; [@option]
      (** SSL certificate to use for requests to GitLab Enterprise. *)
  webhook_secret_secret_version : string prop;
      (** Required. Immutable. SecretManager resource containing the webhook secret of a GitLab Enterprise project, formatted as 'projects/*/secrets/*/versions/*'. *)
  authorizer_credential : gitlab_config__authorizer_credential list;
  read_authorizer_credential :
    gitlab_config__read_authorizer_credential list;
  service_directory_config :
    gitlab_config__service_directory_config list;
}
[@@deriving yojson_of]
(** Configuration for connections to gitlab.com or an instance of GitLab Enterprise. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type installation_state = {
  action_uri : string prop;  (** action_uri *)
  message : string prop;  (** message *)
  stage : string prop;  (** stage *)
}
[@@deriving yojson_of]

type google_cloudbuildv2_connection = {
  annotations : (string * string prop) list option; [@option]
      (** Allows clients to store small amounts of arbitrary data.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field 'effective_annotations' for all of the annotations present on the resource. *)
  disabled : bool prop option; [@option]
      (** If disabled is set to true, functionality is disabled for this connection. Repository based API methods and webhooks processing for repositories in this connection will be disabled. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** The location for the resource *)
  name : string prop;
      (** Immutable. The resource name of the connection. *)
  project : string prop option; [@option]  (** project *)
  github_config : github_config list;
  github_enterprise_config : github_enterprise_config list;
  gitlab_config : gitlab_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_cloudbuildv2_connection *)

let github_config__authorizer_credential ?oauth_token_secret_version
    () : github_config__authorizer_credential =
  { oauth_token_secret_version }

let github_config ?app_installation_id ~authorizer_credential () :
    github_config =
  { app_installation_id; authorizer_credential }

let github_enterprise_config__service_directory_config ~service () :
    github_enterprise_config__service_directory_config =
  { service }

let github_enterprise_config ?app_id ?app_installation_id ?app_slug
    ?private_key_secret_version ?ssl_ca
    ?webhook_secret_secret_version ~host_uri
    ~service_directory_config () : github_enterprise_config =
  {
    app_id;
    app_installation_id;
    app_slug;
    host_uri;
    private_key_secret_version;
    ssl_ca;
    webhook_secret_secret_version;
    service_directory_config;
  }

let gitlab_config__authorizer_credential ~user_token_secret_version
    () : gitlab_config__authorizer_credential =
  { user_token_secret_version }

let gitlab_config__read_authorizer_credential
    ~user_token_secret_version () :
    gitlab_config__read_authorizer_credential =
  { user_token_secret_version }

let gitlab_config__service_directory_config ~service () :
    gitlab_config__service_directory_config =
  { service }

let gitlab_config ?host_uri ?ssl_ca ~webhook_secret_secret_version
    ~authorizer_credential ~read_authorizer_credential
    ~service_directory_config () : gitlab_config =
  {
    host_uri;
    ssl_ca;
    webhook_secret_secret_version;
    authorizer_credential;
    read_authorizer_credential;
    service_directory_config;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_cloudbuildv2_connection ?annotations ?disabled ?id
    ?project ?timeouts ~location ~name ~github_config
    ~github_enterprise_config ~gitlab_config () :
    google_cloudbuildv2_connection =
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

type t = {
  annotations : (string * string) list prop;
  create_time : string prop;
  disabled : bool prop;
  effective_annotations : (string * string) list prop;
  etag : string prop;
  id : string prop;
  installation_state : installation_state list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  reconciling : bool prop;
  update_time : string prop;
}

let register ?tf_module ?annotations ?disabled ?id ?project ?timeouts
    ~location ~name ~github_config ~github_enterprise_config
    ~gitlab_config __resource_id =
  let __resource_type = "google_cloudbuildv2_connection" in
  let __resource =
    google_cloudbuildv2_connection ?annotations ?disabled ?id
      ?project ?timeouts ~location ~name ~github_config
      ~github_enterprise_config ~gitlab_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_cloudbuildv2_connection __resource);
  let __resource_attributes =
    ({
       annotations =
         Prop.computed __resource_type __resource_id "annotations";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       disabled =
         Prop.computed __resource_type __resource_id "disabled";
       effective_annotations =
         Prop.computed __resource_type __resource_id
           "effective_annotations";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       installation_state =
         Prop.computed __resource_type __resource_id
           "installation_state";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       reconciling =
         Prop.computed __resource_type __resource_id "reconciling";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
