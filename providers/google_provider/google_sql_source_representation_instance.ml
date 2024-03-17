(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_sql_source_representation_instance__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_sql_source_representation_instance__timeouts *)

type google_sql_source_representation_instance = {
  ca_certificate : string option; [@option]
      (** The CA certificate on the external server. Include only if SSL/TLS is used on the external server. *)
  client_certificate : string option; [@option]
      (** The client certificate on the external server. Required only for server-client authentication. Include only if SSL/TLS is used on the external server. *)
  client_key : string option; [@option]
      (** The private key file for the client certificate on the external server. Required only for server-client authentication. Include only if SSL/TLS is used on the external server. *)
  database_version : string;
      (** The MySQL version running on your source database server. Possible values: [MYSQL_5_6, MYSQL_5_7, MYSQL_8_0, POSTGRES_9_6, POSTGRES_10, POSTGRES_11, POSTGRES_12, POSTGRES_13, POSTGRES_14] *)
  dump_file_path : string option; [@option]
      (** A file in the bucket that contains the data from the external server. *)
  host : string;
      (** The IPv4 address and port for the external server, or the the DNS address for the external server. If the external server is hosted on Cloud SQL, the port is 5432. *)
  id : string option; [@option]  (** id *)
  name : string;
      (** The name of the source representation instance. Use any valid Cloud SQL instance name. *)
  password : string option; [@option]
      (** The password for the replication user account. *)
  port : float option; [@option]
      (** The externally accessible port for the source database server.
Defaults to 3306. *)
  project : string option; [@option]  (** project *)
  region : string option; [@option]
      (** The Region in which the created instance should reside.
If it is not provided, the provider region is used. *)
  username : string option; [@option]
      (** The replication user account on the external server. *)
  timeouts :
    google_sql_source_representation_instance__timeouts option;
}
[@@deriving yojson_of]
(** google_sql_source_representation_instance *)

let google_sql_source_representation_instance ?ca_certificate
    ?client_certificate ?client_key ?dump_file_path ?id ?password
    ?port ?project ?region ?username ?timeouts ~database_version
    ~host ~name __resource_id =
  let __resource_type =
    "google_sql_source_representation_instance"
  in
  let __resource =
    {
      ca_certificate;
      client_certificate;
      client_key;
      database_version;
      dump_file_path;
      host;
      id;
      name;
      password;
      port;
      project;
      region;
      username;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_sql_source_representation_instance __resource);
  ()
