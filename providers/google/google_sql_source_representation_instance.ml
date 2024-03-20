(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_sql_source_representation_instance = {
  ca_certificate : string prop option; [@option]
      (** The CA certificate on the external server. Include only if SSL/TLS is used on the external server. *)
  client_certificate : string prop option; [@option]
      (** The client certificate on the external server. Required only for server-client authentication. Include only if SSL/TLS is used on the external server. *)
  client_key : string prop option; [@option]
      (** The private key file for the client certificate on the external server. Required only for server-client authentication. Include only if SSL/TLS is used on the external server. *)
  database_version : string prop;
      (** The MySQL version running on your source database server. Possible values: [MYSQL_5_6, MYSQL_5_7, MYSQL_8_0, POSTGRES_9_6, POSTGRES_10, POSTGRES_11, POSTGRES_12, POSTGRES_13, POSTGRES_14] *)
  dump_file_path : string prop option; [@option]
      (** A file in the bucket that contains the data from the external server. *)
  host : string prop;
      (** The IPv4 address and port for the external server, or the the DNS address for the external server. If the external server is hosted on Cloud SQL, the port is 5432. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** The name of the source representation instance. Use any valid Cloud SQL instance name. *)
  password : string prop option; [@option]
      (** The password for the replication user account. *)
  port : float prop option; [@option]
      (** The externally accessible port for the source database server.
Defaults to 3306. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** The Region in which the created instance should reside.
If it is not provided, the provider region is used. *)
  username : string prop option; [@option]
      (** The replication user account on the external server. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_sql_source_representation_instance *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_sql_source_representation_instance ?ca_certificate
    ?client_certificate ?client_key ?dump_file_path ?id ?password
    ?port ?project ?region ?username ?timeouts ~database_version
    ~host ~name () : google_sql_source_representation_instance =
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

type t = {
  ca_certificate : string prop;
  client_certificate : string prop;
  client_key : string prop;
  database_version : string prop;
  dump_file_path : string prop;
  host : string prop;
  id : string prop;
  name : string prop;
  password : string prop;
  port : float prop;
  project : string prop;
  region : string prop;
  username : string prop;
}

let make ?ca_certificate ?client_certificate ?client_key
    ?dump_file_path ?id ?password ?port ?project ?region ?username
    ?timeouts ~database_version ~host ~name __id =
  let __type = "google_sql_source_representation_instance" in
  let __attrs =
    ({
       ca_certificate = Prop.computed __type __id "ca_certificate";
       client_certificate =
         Prop.computed __type __id "client_certificate";
       client_key = Prop.computed __type __id "client_key";
       database_version =
         Prop.computed __type __id "database_version";
       dump_file_path = Prop.computed __type __id "dump_file_path";
       host = Prop.computed __type __id "host";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       port = Prop.computed __type __id "port";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_sql_source_representation_instance
        (google_sql_source_representation_instance ?ca_certificate
           ?client_certificate ?client_key ?dump_file_path ?id
           ?password ?port ?project ?region ?username ?timeouts
           ~database_version ~host ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?ca_certificate ?client_certificate
    ?client_key ?dump_file_path ?id ?password ?port ?project ?region
    ?username ?timeouts ~database_version ~host ~name __id =
  let (r : _ Tf_core.resource) =
    make ?ca_certificate ?client_certificate ?client_key
      ?dump_file_path ?id ?password ?port ?project ?region ?username
      ?timeouts ~database_version ~host ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
