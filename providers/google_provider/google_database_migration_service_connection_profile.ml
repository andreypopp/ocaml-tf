(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_database_migration_service_connection_profile__alloydb__settings__initial_user = {
  password : string prop;  (** The initial password for the user. *)
  password_set : bool prop;
      (** Output only. Indicates if the initialUser.password field has been set. *)
  user : string prop;  (** The database username. *)
}
[@@deriving yojson_of]
(** Required. Input only. Initial user to setup during cluster creation. *)

type google_database_migration_service_connection_profile__alloydb__settings__primary_instance_settings__machine_config = {
  cpu_count : float prop;
      (** The number of CPU's in the VM instance. *)
}
[@@deriving yojson_of]
(** Configuration for the machines that host the underlying database engine. *)

type google_database_migration_service_connection_profile__alloydb__settings__primary_instance_settings = {
  database_flags : (string * string prop) list option; [@option]
      (** Database flags to pass to AlloyDB when DMS is creating the AlloyDB cluster and instances. See the AlloyDB documentation for how these can be used. *)
  id : string prop;  (** The database username. *)
  labels : (string * string prop) list option; [@option]
      (** Labels for the AlloyDB primary instance created by DMS. *)
  private_ip : string prop;
      (** Output only. The private IP address for the Instance. This is the connection endpoint for an end-user application. *)
  machine_config :
    google_database_migration_service_connection_profile__alloydb__settings__primary_instance_settings__machine_config
    list;
}
[@@deriving yojson_of]
(** Settings for the cluster's primary instance *)

type google_database_migration_service_connection_profile__alloydb__settings = {
  labels : (string * string prop) list option; [@option]
      (** Labels for the AlloyDB cluster created by DMS. *)
  vpc_network : string prop;
      (** Required. The resource link for the VPC network in which cluster resources are created and from which they are accessible via Private IP. The network must belong to the same project as the cluster.
It is specified in the form: 'projects/{project_number}/global/networks/{network_id}'. This is required to create a cluster. *)
  initial_user :
    google_database_migration_service_connection_profile__alloydb__settings__initial_user
    list;
  primary_instance_settings :
    google_database_migration_service_connection_profile__alloydb__settings__primary_instance_settings
    list;
}
[@@deriving yojson_of]
(** Immutable. Metadata used to create the destination AlloyDB cluster. *)

type google_database_migration_service_connection_profile__alloydb = {
  cluster_id : string prop;
      (** Required. The AlloyDB cluster ID that this connection profile is associated with. *)
  settings :
    google_database_migration_service_connection_profile__alloydb__settings
    list;
}
[@@deriving yojson_of]
(** Specifies required connection parameters, and the parameters required to create an AlloyDB destination cluster. *)

type google_database_migration_service_connection_profile__cloudsql__settings__ip_config__authorized_networks = {
  expire_time : string prop option; [@option]
      (** The time when this access control entry expires in RFC 3339 format. *)
  label : string prop option; [@option]
      (** A label to identify this entry. *)
  ttl : string prop option; [@option]
      (** Input only. The time-to-leave of this access control entry. *)
  value : string prop;
      (** The allowlisted value for the access control list. *)
}
[@@deriving yojson_of]
(** The list of external networks that are allowed to connect to the instance using the IP. *)

type google_database_migration_service_connection_profile__cloudsql__settings__ip_config = {
  enable_ipv4 : bool prop option; [@option]
      (** Whether the instance should be assigned an IPv4 address or not. *)
  private_network : string prop option; [@option]
      (** The resource link for the VPC network from which the Cloud SQL instance is accessible for private IP. For example, projects/myProject/global/networks/default.
This setting can be updated, but it cannot be removed after it is set. *)
  require_ssl : bool prop option; [@option]
      (** Whether SSL connections over IP should be enforced or not. *)
  authorized_networks :
    google_database_migration_service_connection_profile__cloudsql__settings__ip_config__authorized_networks
    list;
}
[@@deriving yojson_of]
(** The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled. *)

type google_database_migration_service_connection_profile__cloudsql__settings = {
  activation_policy : string prop option; [@option]
      (** The activation policy specifies when the instance is activated; it is applicable only when the instance state is 'RUNNABLE'. Possible values: [ALWAYS, NEVER] *)
  auto_storage_increase : bool prop option; [@option]
      (** If you enable this setting, Cloud SQL checks your available storage every 30 seconds. If the available storage falls below a threshold size, Cloud SQL automatically adds additional storage capacity.
If the available storage repeatedly falls below the threshold size, Cloud SQL continues to add storage until it reaches the maximum of 30 TB. *)
  cmek_key_name : string prop option; [@option]
      (** The KMS key name used for the csql instance. *)
  collation : string prop option; [@option]
      (** The Cloud SQL default instance level collation. *)
  data_disk_size_gb : string prop option; [@option]
      (** The storage capacity available to the database, in GB. The minimum (and default) size is 10GB. *)
  data_disk_type : string prop option; [@option]
      (** The type of storage. Possible values: [PD_SSD, PD_HDD] *)
  database_flags : (string * string prop) list option; [@option]
      (** The database flags passed to the Cloud SQL instance at startup. *)
  database_version : string prop option; [@option]
      (** The database engine type and version.
Currently supported values located at https://cloud.google.com/database-migration/docs/reference/rest/v1/projects.locations.connectionProfiles#sqldatabaseversion *)
  edition : string prop option; [@option]
      (** The edition of the given Cloud SQL instance. Possible values: [ENTERPRISE, ENTERPRISE_PLUS] *)
  root_password : string prop option; [@option]
      (** Input only. Initial root password. *)
  root_password_set : bool prop;
      (** Output only. Indicates If this connection profile root password is stored. *)
  source_id : string prop;
      (** The Database Migration Service source connection profile ID, in the format: projects/my_project_name/locations/us-central1/connectionProfiles/connection_profile_ID *)
  storage_auto_resize_limit : string prop option; [@option]
      (** The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit. *)
  tier : string prop option; [@option]
      (** The tier (or machine type) for this instance, for example: db-n1-standard-1 (MySQL instances) or db-custom-1-3840 (PostgreSQL instances).
For more information, see https://cloud.google.com/sql/docs/mysql/instance-settings *)
  user_labels : (string * string prop) list option; [@option]
      (** The resource labels for a Cloud SQL instance to use to annotate any related underlying resources such as Compute Engine VMs. *)
  zone : string prop option; [@option]
      (** The Google Cloud Platform zone where your Cloud SQL datdabse instance is located. *)
  ip_config :
    google_database_migration_service_connection_profile__cloudsql__settings__ip_config
    list;
}
[@@deriving yojson_of]
(** Immutable. Metadata used to create the destination Cloud SQL database. *)

type google_database_migration_service_connection_profile__cloudsql = {
  cloud_sql_id : string prop;
      (** Output only. The Cloud SQL instance ID that this connection profile is associated with. *)
  private_ip : string prop;
      (** Output only. The Cloud SQL database instance's private IP. *)
  public_ip : string prop;
      (** Output only. The Cloud SQL database instance's public IP. *)
  settings :
    google_database_migration_service_connection_profile__cloudsql__settings
    list;
}
[@@deriving yojson_of]
(** Specifies required connection parameters, and, optionally, the parameters required to create a Cloud SQL destination database instance. *)

type google_database_migration_service_connection_profile__mysql__ssl = {
  ca_certificate : string prop;
      (** Required. Input only. The x509 PEM-encoded certificate of the CA that signed the source database server's certificate.
The replica will use this certificate to verify it's connecting to the right host. *)
  client_certificate : string prop option; [@option]
      (** Input only. The x509 PEM-encoded certificate that will be used by the replica to authenticate against the source database server.
If this field is used then the 'clientKey' field is mandatory *)
  client_key : string prop option; [@option]
      (** Input only. The unencrypted PKCS#1 or PKCS#8 PEM-encoded private key associated with the Client Certificate.
If this field is used then the 'clientCertificate' field is mandatory. *)
  type_ : string prop; [@key "type"]
      (** The current connection profile state. *)
}
[@@deriving yojson_of]
(** SSL configuration for the destination to connect to the source database. *)

type google_database_migration_service_connection_profile__mysql = {
  cloud_sql_id : string prop option; [@option]
      (** If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the source. *)
  host : string prop;
      (** Required. The IP or hostname of the source MySQL database. *)
  password : string prop;
      (** Required. Input only. The password for the user that Database Migration Service will be using to connect to the database.
This field is not returned on request, and the value is encrypted when stored in Database Migration Service. *)
  password_set : bool prop;
      (** Output only. Indicates If this connection profile password is stored. *)
  port : float prop;
      (** Required. The network port of the source MySQL database. *)
  username : string prop;
      (** Required. The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service. *)
  ssl :
    google_database_migration_service_connection_profile__mysql__ssl
    list;
}
[@@deriving yojson_of]
(** Specifies connection parameters required specifically for MySQL databases. *)

type google_database_migration_service_connection_profile__oracle__forward_ssh_connectivity = {
  hostname : string prop;
      (** Required. Hostname for the SSH tunnel. *)
  password : string prop option; [@option]
      (** Input only. SSH password. Only one of 'password' and 'private_key' can be configured. *)
  port : float prop;
      (** Port for the SSH tunnel, default value is 22. *)
  private_key : string prop option; [@option]
      (** Input only. SSH private key. Only one of 'password' and 'private_key' can be configured. *)
  username : string prop;
      (** Required. Username for the SSH tunnel. *)
}
[@@deriving yojson_of]
(** SSL configuration for the destination to connect to the source database. *)

type google_database_migration_service_connection_profile__oracle__private_connectivity = {
  private_connection : string prop;
      (** Required. The resource name (URI) of the private connection. *)
}
[@@deriving yojson_of]
(** Configuration for using a private network to communicate with the source database *)

type google_database_migration_service_connection_profile__oracle__ssl = {
  ca_certificate : string prop;
      (** Required. Input only. The x509 PEM-encoded certificate of the CA that signed the source database server's certificate.
The replica will use this certificate to verify it's connecting to the right host. *)
  client_certificate : string prop option; [@option]
      (** Input only. The x509 PEM-encoded certificate that will be used by the replica to authenticate against the source database server.
If this field is used then the 'clientKey' field is mandatory *)
  client_key : string prop option; [@option]
      (** Input only. The unencrypted PKCS#1 or PKCS#8 PEM-encoded private key associated with the Client Certificate.
If this field is used then the 'clientCertificate' field is mandatory. *)
  type_ : string prop; [@key "type"]
      (** The current connection profile state. *)
}
[@@deriving yojson_of]
(** SSL configuration for the destination to connect to the source database. *)

type google_database_migration_service_connection_profile__oracle__static_service_ip_connectivity =
  unit
[@@deriving yojson_of]

type google_database_migration_service_connection_profile__oracle = {
  database_service : string prop;
      (** Required. Database service for the Oracle connection. *)
  host : string prop;
      (** Required. The IP or hostname of the source Oracle database. *)
  password : string prop;
      (** Required. Input only. The password for the user that Database Migration Service will be using to connect to the database.
This field is not returned on request, and the value is encrypted when stored in Database Migration Service. *)
  password_set : bool prop;
      (** Output only. Indicates If this connection profile password is stored. *)
  port : float prop;
      (** Required. The network port of the source Oracle database. *)
  username : string prop;
      (** Required. The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service. *)
  forward_ssh_connectivity :
    google_database_migration_service_connection_profile__oracle__forward_ssh_connectivity
    list;
  private_connectivity :
    google_database_migration_service_connection_profile__oracle__private_connectivity
    list;
  ssl :
    google_database_migration_service_connection_profile__oracle__ssl
    list;
  static_service_ip_connectivity :
    google_database_migration_service_connection_profile__oracle__static_service_ip_connectivity
    list;
}
[@@deriving yojson_of]
(** Specifies connection parameters required specifically for Oracle databases. *)

type google_database_migration_service_connection_profile__postgresql__ssl = {
  ca_certificate : string prop;
      (** Required. Input only. The x509 PEM-encoded certificate of the CA that signed the source database server's certificate.
The replica will use this certificate to verify it's connecting to the right host. *)
  client_certificate : string prop option; [@option]
      (** Input only. The x509 PEM-encoded certificate that will be used by the replica to authenticate against the source database server.
If this field is used then the 'clientKey' field is mandatory *)
  client_key : string prop option; [@option]
      (** Input only. The unencrypted PKCS#1 or PKCS#8 PEM-encoded private key associated with the Client Certificate.
If this field is used then the 'clientCertificate' field is mandatory. *)
  type_ : string prop; [@key "type"]
      (** The current connection profile state. *)
}
[@@deriving yojson_of]
(** SSL configuration for the destination to connect to the source database. *)

type google_database_migration_service_connection_profile__postgresql = {
  cloud_sql_id : string prop option; [@option]
      (** If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the source. *)
  host : string prop;
      (** Required. The IP or hostname of the source MySQL database. *)
  network_architecture : string prop;
      (** Output only. If the source is a Cloud SQL database, this field indicates the network architecture it's associated with. *)
  password : string prop;
      (** Required. Input only. The password for the user that Database Migration Service will be using to connect to the database.
This field is not returned on request, and the value is encrypted when stored in Database Migration Service. *)
  password_set : bool prop;
      (** Output only. Indicates If this connection profile password is stored. *)
  port : float prop;
      (** Required. The network port of the source MySQL database. *)
  username : string prop;
      (** Required. The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service. *)
  ssl :
    google_database_migration_service_connection_profile__postgresql__ssl
    list;
}
[@@deriving yojson_of]
(** Specifies connection parameters required specifically for PostgreSQL databases. *)

type google_database_migration_service_connection_profile__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_database_migration_service_connection_profile__timeouts *)

type google_database_migration_service_connection_profile__error = {
  code : float prop;  (** code *)
  details : (string * string prop) list list;  (** details *)
  message : string prop;  (** message *)
}
[@@deriving yojson_of]

type google_database_migration_service_connection_profile = {
  connection_profile_id : string prop;
      (** The ID of the connection profile. *)
  display_name : string prop option; [@option]
      (** The connection profile display name. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** The resource labels for connection profile to use to annotate any related underlying resources such as Compute Engine VMs.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop option; [@option]
      (** The location where the connection profile should reside. *)
  project : string prop option; [@option]  (** project *)
  alloydb :
    google_database_migration_service_connection_profile__alloydb
    list;
  cloudsql :
    google_database_migration_service_connection_profile__cloudsql
    list;
  mysql :
    google_database_migration_service_connection_profile__mysql list;
  oracle :
    google_database_migration_service_connection_profile__oracle list;
  postgresql :
    google_database_migration_service_connection_profile__postgresql
    list;
  timeouts :
    google_database_migration_service_connection_profile__timeouts
    option;
}
[@@deriving yojson_of]
(** google_database_migration_service_connection_profile *)

type t = {
  connection_profile_id : string prop;
  create_time : string prop;
  dbprovider : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  error :
    google_database_migration_service_connection_profile__error list
    prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
}

let google_database_migration_service_connection_profile
    ?display_name ?id ?labels ?location ?project ?timeouts
    ~connection_profile_id ~alloydb ~cloudsql ~mysql ~oracle
    ~postgresql __resource_id =
  let __resource_type =
    "google_database_migration_service_connection_profile"
  in
  let __resource =
    ({
       connection_profile_id;
       display_name;
       id;
       labels;
       location;
       project;
       alloydb;
       cloudsql;
       mysql;
       oracle;
       postgresql;
       timeouts;
     }
      : google_database_migration_service_connection_profile)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_database_migration_service_connection_profile
       __resource);
  let __resource_attributes =
    ({
       connection_profile_id =
         Prop.computed __resource_type __resource_id
           "connection_profile_id";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       dbprovider =
         Prop.computed __resource_type __resource_id "dbprovider";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       error = Prop.computed __resource_type __resource_id "error";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       state = Prop.computed __resource_type __resource_id "state";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
     }
      : t)
  in
  __resource_attributes
