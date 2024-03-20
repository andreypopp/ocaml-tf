(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type bigquery_profile = unit [@@deriving yojson_of]

type forward_ssh_connectivity = {
  hostname : string prop;  (** Hostname for the SSH tunnel. *)
  password : string prop option; [@option]  (** SSH password. *)
  port : float prop option; [@option]
      (** Port for the SSH tunnel. *)
  private_key : string prop option; [@option]
      (** SSH private key. *)
  username : string prop;  (** Username for the SSH tunnel. *)
}
[@@deriving yojson_of]
(** Forward SSH tunnel connectivity. *)

type gcs_profile = {
  bucket : string prop;  (** The Cloud Storage bucket name. *)
  root_path : string prop option; [@option]
      (** The root path inside the Cloud Storage bucket. *)
}
[@@deriving yojson_of]
(** Cloud Storage bucket profile. *)

type mysql_profile__ssl_config = {
  ca_certificate : string prop option; [@option]
      (** PEM-encoded certificate of the CA that signed the source database
server's certificate. *)
  client_certificate : string prop option; [@option]
      (** PEM-encoded certificate that will be used by the replica to
authenticate against the source database server. If this field
is used then the 'clientKey' and the 'caCertificate' fields are
mandatory. *)
  client_key : string prop option; [@option]
      (** PEM-encoded private key associated with the Client Certificate.
If this field is used then the 'client_certificate' and the
'ca_certificate' fields are mandatory. *)
}
[@@deriving yojson_of]
(** SSL configuration for the MySQL connection. *)

type mysql_profile = {
  hostname : string prop;  (** Hostname for the MySQL connection. *)
  password : string prop;  (** Password for the MySQL connection. *)
  port : float prop option; [@option]
      (** Port for the MySQL connection. *)
  username : string prop;  (** Username for the MySQL connection. *)
  ssl_config : mysql_profile__ssl_config list;
}
[@@deriving yojson_of]
(** MySQL database profile. *)

type oracle_profile = {
  connection_attributes : (string * string prop) list option;
      [@option]
      (** Connection string attributes *)
  database_service : string prop;
      (** Database for the Oracle connection. *)
  hostname : string prop;  (** Hostname for the Oracle connection. *)
  password : string prop;  (** Password for the Oracle connection. *)
  port : float prop option; [@option]
      (** Port for the Oracle connection. *)
  username : string prop;  (** Username for the Oracle connection. *)
}
[@@deriving yojson_of]
(** Oracle database profile. *)

type postgresql_profile = {
  database : string prop;
      (** Database for the PostgreSQL connection. *)
  hostname : string prop;
      (** Hostname for the PostgreSQL connection. *)
  password : string prop;
      (** Password for the PostgreSQL connection. *)
  port : float prop option; [@option]
      (** Port for the PostgreSQL connection. *)
  username : string prop;
      (** Username for the PostgreSQL connection. *)
}
[@@deriving yojson_of]
(** PostgreSQL database profile. *)

type private_connectivity = {
  private_connection : string prop;
      (** A reference to a private connection resource. Format: 'projects/{project}/locations/{location}/privateConnections/{name}' *)
}
[@@deriving yojson_of]
(** Private connectivity. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_datastream_connection_profile = {
  connection_profile_id : string prop;
      (** The connection profile identifier. *)
  display_name : string prop;  (** Display name. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Labels.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;
      (** The name of the location this connection profile is located in. *)
  project : string prop option; [@option]  (** project *)
  bigquery_profile : bigquery_profile list;
  forward_ssh_connectivity : forward_ssh_connectivity list;
  gcs_profile : gcs_profile list;
  mysql_profile : mysql_profile list;
  oracle_profile : oracle_profile list;
  postgresql_profile : postgresql_profile list;
  private_connectivity : private_connectivity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_datastream_connection_profile *)

let bigquery_profile () = ()

let forward_ssh_connectivity ?password ?port ?private_key ~hostname
    ~username () : forward_ssh_connectivity =
  { hostname; password; port; private_key; username }

let gcs_profile ?root_path ~bucket () : gcs_profile =
  { bucket; root_path }

let mysql_profile__ssl_config ?ca_certificate ?client_certificate
    ?client_key () : mysql_profile__ssl_config =
  { ca_certificate; client_certificate; client_key }

let mysql_profile ?port ~hostname ~password ~username ~ssl_config ()
    : mysql_profile =
  { hostname; password; port; username; ssl_config }

let oracle_profile ?connection_attributes ?port ~database_service
    ~hostname ~password ~username () : oracle_profile =
  {
    connection_attributes;
    database_service;
    hostname;
    password;
    port;
    username;
  }

let postgresql_profile ?port ~database ~hostname ~password ~username
    () : postgresql_profile =
  { database; hostname; password; port; username }

let private_connectivity ~private_connection () :
    private_connectivity =
  { private_connection }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_datastream_connection_profile ?id ?labels ?project
    ?timeouts ~connection_profile_id ~display_name ~location
    ~bigquery_profile ~forward_ssh_connectivity ~gcs_profile
    ~mysql_profile ~oracle_profile ~postgresql_profile
    ~private_connectivity () : google_datastream_connection_profile =
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

type t = {
  connection_profile_id : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?id ?labels ?project ?timeouts ~connection_profile_id
    ~display_name ~location ~bigquery_profile
    ~forward_ssh_connectivity ~gcs_profile ~mysql_profile
    ~oracle_profile ~postgresql_profile ~private_connectivity __id =
  let __type = "google_datastream_connection_profile" in
  let __attrs =
    ({
       connection_profile_id =
         Prop.computed __type __id "connection_profile_id";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_datastream_connection_profile
        (google_datastream_connection_profile ?id ?labels ?project
           ?timeouts ~connection_profile_id ~display_name ~location
           ~bigquery_profile ~forward_ssh_connectivity ~gcs_profile
           ~mysql_profile ~oracle_profile ~postgresql_profile
           ~private_connectivity ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ?project ?timeouts
    ~connection_profile_id ~display_name ~location ~bigquery_profile
    ~forward_ssh_connectivity ~gcs_profile ~mysql_profile
    ~oracle_profile ~postgresql_profile ~private_connectivity __id =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ?project ?timeouts ~connection_profile_id
      ~display_name ~location ~bigquery_profile
      ~forward_ssh_connectivity ~gcs_profile ~mysql_profile
      ~oracle_profile ~postgresql_profile ~private_connectivity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
