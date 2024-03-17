(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_artifact_registry_repository__cleanup_policies__condition = {
  newer_than : string prop option; [@option]
      (** Match versions newer than a duration. *)
  older_than : string prop option; [@option]
      (** Match versions older than a duration. *)
  package_name_prefixes : string prop list option; [@option]
      (** Match versions by package prefix. Applied on any prefix match. *)
  tag_prefixes : string prop list option; [@option]
      (** Match versions by tag prefix. Applied on any prefix match. *)
  tag_state : string prop option; [@option]
      (** Match versions by tag status. Default value: ANY Possible values: [TAGGED, UNTAGGED, ANY] *)
  version_name_prefixes : string prop list option; [@option]
      (** Match versions by version name prefix. Applied on any prefix match. *)
}
[@@deriving yojson_of]
(** Policy condition for matching versions. *)

type google_artifact_registry_repository__cleanup_policies__most_recent_versions = {
  keep_count : float prop option; [@option]
      (** Minimum number of versions to keep. *)
  package_name_prefixes : string prop list option; [@option]
      (** Match versions by package prefix. Applied on any prefix match. *)
}
[@@deriving yojson_of]
(** Policy condition for retaining a minimum number of versions. May only be
specified with a Keep action. *)

type google_artifact_registry_repository__cleanup_policies = {
  action : string prop option; [@option]
      (** Policy action. Possible values: [DELETE, KEEP] *)
  id : string prop;  (** id *)
  condition :
    google_artifact_registry_repository__cleanup_policies__condition
    list;
  most_recent_versions :
    google_artifact_registry_repository__cleanup_policies__most_recent_versions
    list;
}
[@@deriving yojson_of]
(** Cleanup policies for this repository. Cleanup policies indicate when
certain package versions can be automatically deleted.
Map keys are policy IDs supplied by users during policy creation. They must
unique within a repository and be under 128 characters in length. *)

type google_artifact_registry_repository__docker_config = {
  immutable_tags : bool prop option; [@option]
      (** The repository which enabled this flag prevents all tags from being modified, moved or deleted. This does not prevent tags from being created. *)
}
[@@deriving yojson_of]
(** Docker repository config contains repository level configuration for the repositories of docker type. *)

type google_artifact_registry_repository__maven_config = {
  allow_snapshot_overwrites : bool prop option; [@option]
      (** The repository with this flag will allow publishing the same
snapshot versions. *)
  version_policy : string prop option; [@option]
      (** Version policy defines the versions that the registry will accept. Default value: VERSION_POLICY_UNSPECIFIED Possible values: [VERSION_POLICY_UNSPECIFIED, RELEASE, SNAPSHOT] *)
}
[@@deriving yojson_of]
(** MavenRepositoryConfig is maven related repository details.
Provides additional configuration details for repositories of the maven
format type. *)

type google_artifact_registry_repository__remote_repository_config__apt_repository__public_repository = {
  repository_base : string prop;
      (** A common public repository base for Apt, e.g. 'debian/dists/buster' Possible values: [DEBIAN, UBUNTU] *)
  repository_path : string prop;
      (** Specific repository from the base. *)
}
[@@deriving yojson_of]
(** One of the publicly available Apt repositories supported by Artifact Registry. *)

type google_artifact_registry_repository__remote_repository_config__apt_repository = {
  public_repository :
    google_artifact_registry_repository__remote_repository_config__apt_repository__public_repository
    list;
}
[@@deriving yojson_of]
(** Specific settings for an Apt remote repository. *)

type google_artifact_registry_repository__remote_repository_config__docker_repository = {
  public_repository : string prop option; [@option]
      (** Address of the remote repository. Default value: DOCKER_HUB Possible values: [DOCKER_HUB] *)
}
[@@deriving yojson_of]
(** Specific settings for a Docker remote repository. *)

type google_artifact_registry_repository__remote_repository_config__maven_repository = {
  public_repository : string prop option; [@option]
      (** Address of the remote repository. Default value: MAVEN_CENTRAL Possible values: [MAVEN_CENTRAL] *)
}
[@@deriving yojson_of]
(** Specific settings for a Maven remote repository. *)

type google_artifact_registry_repository__remote_repository_config__npm_repository = {
  public_repository : string prop option; [@option]
      (** Address of the remote repository. Default value: NPMJS Possible values: [NPMJS] *)
}
[@@deriving yojson_of]
(** Specific settings for an Npm remote repository. *)

type google_artifact_registry_repository__remote_repository_config__python_repository = {
  public_repository : string prop option; [@option]
      (** Address of the remote repository. Default value: PYPI Possible values: [PYPI] *)
}
[@@deriving yojson_of]
(** Specific settings for a Python remote repository. *)

type google_artifact_registry_repository__remote_repository_config__upstream_credentials__username_password_credentials = {
  password_secret_version : string prop option; [@option]
      (** The Secret Manager key version that holds the password to access the
remote repository. Must be in the format of
'projects/{project}/secrets/{secret}/versions/{version}'. *)
  username : string prop option; [@option]
      (** The username to access the remote repository. *)
}
[@@deriving yojson_of]
(** Use username and password to access the remote repository. *)

type google_artifact_registry_repository__remote_repository_config__upstream_credentials = {
  username_password_credentials :
    google_artifact_registry_repository__remote_repository_config__upstream_credentials__username_password_credentials
    list;
}
[@@deriving yojson_of]
(** The credentials used to access the remote repository. *)

type google_artifact_registry_repository__remote_repository_config__yum_repository__public_repository = {
  repository_base : string prop;
      (** A common public repository base for Yum. Possible values: [CENTOS, CENTOS_DEBUG, CENTOS_VAULT, CENTOS_STREAM, ROCKY, EPEL] *)
  repository_path : string prop;
      (** Specific repository from the base, e.g. 'centos/8-stream/BaseOS/x86_64/os' *)
}
[@@deriving yojson_of]
(** One of the publicly available Yum repositories supported by Artifact Registry. *)

type google_artifact_registry_repository__remote_repository_config__yum_repository = {
  public_repository :
    google_artifact_registry_repository__remote_repository_config__yum_repository__public_repository
    list;
}
[@@deriving yojson_of]
(** Specific settings for an Yum remote repository. *)

type google_artifact_registry_repository__remote_repository_config = {
  description : string prop option; [@option]
      (** The description of the remote source. *)
  apt_repository :
    google_artifact_registry_repository__remote_repository_config__apt_repository
    list;
  docker_repository :
    google_artifact_registry_repository__remote_repository_config__docker_repository
    list;
  maven_repository :
    google_artifact_registry_repository__remote_repository_config__maven_repository
    list;
  npm_repository :
    google_artifact_registry_repository__remote_repository_config__npm_repository
    list;
  python_repository :
    google_artifact_registry_repository__remote_repository_config__python_repository
    list;
  upstream_credentials :
    google_artifact_registry_repository__remote_repository_config__upstream_credentials
    list;
  yum_repository :
    google_artifact_registry_repository__remote_repository_config__yum_repository
    list;
}
[@@deriving yojson_of]
(** Configuration specific for a Remote Repository. *)

type google_artifact_registry_repository__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_artifact_registry_repository__timeouts *)

type google_artifact_registry_repository__virtual_repository_config__upstream_policies = {
  id : string prop option; [@option]
      (** The user-provided ID of the upstream policy. *)
  priority : float prop option; [@option]
      (** Entries with a greater priority value take precedence in the pull order. *)
  repository : string prop option; [@option]
      (** A reference to the repository resource, for example:
projects/p1/locations/us-central1/repository/repo1. *)
}
[@@deriving yojson_of]
(** Policies that configure the upstream artifacts distributed by the Virtual
Repository. Upstream policies cannot be set on a standard repository. *)

type google_artifact_registry_repository__virtual_repository_config = {
  upstream_policies :
    google_artifact_registry_repository__virtual_repository_config__upstream_policies
    list;
}
[@@deriving yojson_of]
(** Configuration specific for a Virtual Repository. *)

type google_artifact_registry_repository = {
  cleanup_policy_dry_run : bool prop option; [@option]
      (** If true, the cleanup pipeline is prevented from deleting versions in this
repository. *)
  description : string prop option; [@option]
      (** The user-provided description of the repository. *)
  format : string prop;
      (** The format of packages that are stored in the repository. Supported formats
can be found [here](https://cloud.google.com/artifact-registry/docs/supported-formats).
You can only create alpha formats if you are a member of the
[alpha user group](https://cloud.google.com/artifact-registry/docs/supported-formats#alpha-access). *)
  id : string prop option; [@option]  (** id *)
  kms_key_name : string prop option; [@option]
      (** The Cloud KMS resource name of the customer managed encryption key that’s
used to encrypt the contents of the Repository. Has the form:
'projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key'.
This value may not be changed after the Repository has been created. *)
  labels : (string * string prop) list option; [@option]
      (** Labels with user-defined metadata.
This field may contain up to 64 entries. Label keys and values may be no
longer than 63 characters. Label keys must begin with a lowercase letter
and may only contain lowercase letters, numeric characters, underscores,
and dashes.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop option; [@option]
      (** The name of the location this repository is located in. *)
  mode : string prop option; [@option]
      (** The mode configures the repository to serve artifacts from different sources. Default value: STANDARD_REPOSITORY Possible values: [STANDARD_REPOSITORY, VIRTUAL_REPOSITORY, REMOTE_REPOSITORY] *)
  project : string prop option; [@option]  (** project *)
  repository_id : string prop;
      (** The last part of the repository name, for example:
repo1 *)
  cleanup_policies :
    google_artifact_registry_repository__cleanup_policies list;
  docker_config :
    google_artifact_registry_repository__docker_config list;
  maven_config :
    google_artifact_registry_repository__maven_config list;
  remote_repository_config :
    google_artifact_registry_repository__remote_repository_config
    list;
  timeouts : google_artifact_registry_repository__timeouts option;
  virtual_repository_config :
    google_artifact_registry_repository__virtual_repository_config
    list;
}
[@@deriving yojson_of]
(** google_artifact_registry_repository *)

type t = {
  cleanup_policy_dry_run : bool prop;
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  format : string prop;
  id : string prop;
  kms_key_name : string prop;
  labels : (string * string) list prop;
  location : string prop;
  mode : string prop;
  name : string prop;
  project : string prop;
  repository_id : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let google_artifact_registry_repository ?cleanup_policy_dry_run
    ?description ?id ?kms_key_name ?labels ?location ?mode ?project
    ?timeouts ~format ~repository_id ~cleanup_policies ~docker_config
    ~maven_config ~remote_repository_config
    ~virtual_repository_config __resource_id =
  let __resource_type = "google_artifact_registry_repository" in
  let __resource =
    ({
       cleanup_policy_dry_run;
       description;
       format;
       id;
       kms_key_name;
       labels;
       location;
       mode;
       project;
       repository_id;
       cleanup_policies;
       docker_config;
       maven_config;
       remote_repository_config;
       timeouts;
       virtual_repository_config;
     }
      : google_artifact_registry_repository)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_artifact_registry_repository __resource);
  let __resource_attributes =
    ({
       cleanup_policy_dry_run =
         Prop.computed __resource_type __resource_id
           "cleanup_policy_dry_run";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       format = Prop.computed __resource_type __resource_id "format";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_name =
         Prop.computed __resource_type __resource_id "kms_key_name";
       labels = Prop.computed __resource_type __resource_id "labels";
       location =
         Prop.computed __resource_type __resource_id "location";
       mode = Prop.computed __resource_type __resource_id "mode";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       repository_id =
         Prop.computed __resource_type __resource_id "repository_id";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
