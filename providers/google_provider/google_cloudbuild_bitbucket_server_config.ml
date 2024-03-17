(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_cloudbuild_bitbucket_server_config__connected_repositories = {
  project_key : string prop;
      (** Identifier for the project storing the repository. *)
  repo_slug : string prop;  (** Identifier for the repository. *)
}
[@@deriving yojson_of]
(** Connected Bitbucket Server repositories for this config. *)

type google_cloudbuild_bitbucket_server_config__secrets = {
  admin_access_token_version_name : string prop;
      (** The resource name for the admin access token's secret version. *)
  read_access_token_version_name : string prop;
      (** The resource name for the read access token's secret version. *)
  webhook_secret_version_name : string prop;
      (** Immutable. The resource name for the webhook secret's secret version. Once this field has been set, it cannot be changed.
Changing this field will result in deleting/ recreating the resource. *)
}
[@@deriving yojson_of]
(** Secret Manager secrets needed by the config. *)

type google_cloudbuild_bitbucket_server_config__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_cloudbuild_bitbucket_server_config__timeouts *)

type google_cloudbuild_bitbucket_server_config = {
  api_key : string prop;
      (** Immutable. API Key that will be attached to webhook. Once this field has been set, it cannot be changed.
Changing this field will result in deleting/ recreating the resource. *)
  config_id : string prop;
      (** The ID to use for the BitbucketServerConfig, which will become the final component of the BitbucketServerConfig's resource name. *)
  host_uri : string prop;
      (** Immutable. The URI of the Bitbucket Server host. Once this field has been set, it cannot be changed.
If you need to change it, please create another BitbucketServerConfig. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;
      (** The location of this bitbucket server config. *)
  peered_network : string prop option; [@option]
      (** The network to be used when reaching out to the Bitbucket Server instance. The VPC network must be enabled for private service connection.
This should be set if the Bitbucket Server instance is hosted on-premises and not reachable by public internet. If this field is left empty,
no network peering will occur and calls to the Bitbucket Server instance will be made over the public internet. Must be in the format
projects/{project}/global/networks/{network}, where {project} is a project number or id and {network} is the name of a VPC network in the project. *)
  project : string prop option; [@option]  (** project *)
  ssl_ca : string prop option; [@option]
      (** SSL certificate to use for requests to Bitbucket Server. The format should be PEM format but the extension can be one of .pem, .cer, or .crt. *)
  username : string prop;
      (** Username of the account Cloud Build will use on Bitbucket Server. *)
  connected_repositories :
    google_cloudbuild_bitbucket_server_config__connected_repositories
    list;
  secrets : google_cloudbuild_bitbucket_server_config__secrets list;
  timeouts :
    google_cloudbuild_bitbucket_server_config__timeouts option;
}
[@@deriving yojson_of]
(** google_cloudbuild_bitbucket_server_config *)

let google_cloudbuild_bitbucket_server_config ?id ?peered_network
    ?project ?ssl_ca ?timeouts ~api_key ~config_id ~host_uri
    ~location ~username ~connected_repositories ~secrets
    __resource_id =
  let __resource_type =
    "google_cloudbuild_bitbucket_server_config"
  in
  let __resource =
    {
      api_key;
      config_id;
      host_uri;
      id;
      location;
      peered_network;
      project;
      ssl_ca;
      username;
      connected_repositories;
      secrets;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_cloudbuild_bitbucket_server_config __resource);
  ()
