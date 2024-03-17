(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_datastream_connection_profile__bigquery_profile = unit
[@@deriving yojson_of]

type google_datastream_connection_profile__forward_ssh_connectivity = {
  hostname : string;  (** Hostname for the SSH tunnel. *)
  password : string option; [@option]  (** SSH password. *)
  port : float option; [@option]  (** Port for the SSH tunnel. *)
  private_key : string option; [@option]  (** SSH private key. *)
  username : string;  (** Username for the SSH tunnel. *)
}
[@@deriving yojson_of]
(** Forward SSH tunnel connectivity. *)

type google_datastream_connection_profile__gcs_profile = {
  bucket : string;  (** The Cloud Storage bucket name. *)
  root_path : string option; [@option]
      (** The root path inside the Cloud Storage bucket. *)
}
[@@deriving yojson_of]
(** Cloud Storage bucket profile. *)

type google_datastream_connection_profile__mysql_profile__ssl_config = {
  ca_certificate : string option; [@option]
      (** PEM-encoded certificate of the CA that signed the source database
server's certificate. *)
  ca_certificate_set : bool;
      (** Indicates whether the clientKey field is set. *)
  client_certificate : string option; [@option]
      (** PEM-encoded certificate that will be used by the replica to
authenticate against the source database server. If this field
is used then the 'clientKey' and the 'caCertificate' fields are
mandatory. *)
  client_certificate_set : bool;
      (** Indicates whether the clientCertificate field is set. *)
  client_key : string option; [@option]
      (** PEM-encoded private key associated with the Client Certificate.
If this field is used then the 'client_certificate' and the
'ca_certificate' fields are mandatory. *)
  client_key_set : bool;
      (** Indicates whether the clientKey field is set. *)
}
[@@deriving yojson_of]
(** SSL configuration for the MySQL connection. *)

type google_datastream_connection_profile__mysql_profile = {
  hostname : string;  (** Hostname for the MySQL connection. *)
  password : string;  (** Password for the MySQL connection. *)
  port : float option; [@option]
      (** Port for the MySQL connection. *)
  username : string;  (** Username for the MySQL connection. *)
  ssl_config :
    google_datastream_connection_profile__mysql_profile__ssl_config
    list;
}
[@@deriving yojson_of]
(** MySQL database profile. *)

type google_datastream_connection_profile__oracle_profile = {
  connection_attributes : (string * string) list option; [@option]
      (** Connection string attributes *)
  database_service : string;
      (** Database for the Oracle connection. *)
  hostname : string;  (** Hostname for the Oracle connection. *)
  password : string;  (** Password for the Oracle connection. *)
  port : float option; [@option]
      (** Port for the Oracle connection. *)
  username : string;  (** Username for the Oracle connection. *)
}
[@@deriving yojson_of]
(** Oracle database profile. *)

type google_datastream_connection_profile__postgresql_profile = {
  database : string;  (** Database for the PostgreSQL connection. *)
  hostname : string;  (** Hostname for the PostgreSQL connection. *)
  password : string;  (** Password for the PostgreSQL connection. *)
  port : float option; [@option]
      (** Port for the PostgreSQL connection. *)
  username : string;  (** Username for the PostgreSQL connection. *)
}
[@@deriving yojson_of]
(** PostgreSQL database profile. *)

type google_datastream_connection_profile__private_connectivity = {
  private_connection : string;
      (** A reference to a private connection resource. Format: 'projects/{project}/locations/{location}/privateConnections/{name}' *)
}
[@@deriving yojson_of]
(** Private connectivity. *)

type google_datastream_connection_profile__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_datastream_connection_profile__timeouts *)

type google_datastream_connection_profile = {
  connection_profile_id : string;
      (** The connection profile identifier. *)
  display_name : string;  (** Display name. *)
  id : string option; [@option]  (** id *)
  labels : (string * string) list option; [@option]
      (** Labels.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string;
      (** The name of the location this connection profile is located in. *)
  project : string option; [@option]  (** project *)
  bigquery_profile :
    google_datastream_connection_profile__bigquery_profile list;
  forward_ssh_connectivity :
    google_datastream_connection_profile__forward_ssh_connectivity
    list;
  gcs_profile :
    google_datastream_connection_profile__gcs_profile list;
  mysql_profile :
    google_datastream_connection_profile__mysql_profile list;
  oracle_profile :
    google_datastream_connection_profile__oracle_profile list;
  postgresql_profile :
    google_datastream_connection_profile__postgresql_profile list;
  private_connectivity :
    google_datastream_connection_profile__private_connectivity list;
  timeouts : google_datastream_connection_profile__timeouts option;
}
[@@deriving yojson_of]
(** google_datastream_connection_profile *)

let google_datastream_connection_profile ?id ?labels ?project
    ?timeouts ~connection_profile_id ~display_name ~location
    ~bigquery_profile ~forward_ssh_connectivity ~gcs_profile
    ~mysql_profile ~oracle_profile ~postgresql_profile
    ~private_connectivity __resource_id =
  let __resource_type = "google_datastream_connection_profile" in
  let __resource =
    {
      connection_profile_id;
      display_name;
      id;
      labels;
      location;
      project;
      bigquery_profile;
      forward_ssh_connectivity;
      gcs_profile;
      mysql_profile;
      oracle_profile;
      postgresql_profile;
      private_connectivity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_datastream_connection_profile __resource);
  ()
