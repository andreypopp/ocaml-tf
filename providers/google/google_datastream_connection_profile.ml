(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type bigquery_profile = unit [@@deriving_inline yojson_of]

let _ = fun (_ : bigquery_profile) -> ()

let yojson_of_bigquery_profile =
  (yojson_of_unit
    : bigquery_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bigquery_profile

[@@@deriving.end]

type forward_ssh_connectivity = {
  hostname : string prop;
  password : string prop option; [@option]
  port : float prop option; [@option]
  private_key : string prop option; [@option]
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : forward_ssh_connectivity) -> ()

let yojson_of_forward_ssh_connectivity =
  (function
   | {
       hostname = v_hostname;
       password = v_password;
       port = v_port;
       private_key = v_private_key;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         match v_private_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_hostname in
         ("hostname", arg) :: bnds
       in
       `Assoc bnds
    : forward_ssh_connectivity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_forward_ssh_connectivity

[@@@deriving.end]

type gcs_profile = {
  bucket : string prop;
  root_path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : gcs_profile) -> ()

let yojson_of_gcs_profile =
  (function
   | { bucket = v_bucket; root_path = v_root_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_root_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "root_path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : gcs_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_gcs_profile

[@@@deriving.end]

type mysql_profile__ssl_config = {
  ca_certificate : string prop option; [@option]
  client_certificate : string prop option; [@option]
  client_key : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mysql_profile__ssl_config) -> ()

let yojson_of_mysql_profile__ssl_config =
  (function
   | {
       ca_certificate = v_ca_certificate;
       client_certificate = v_client_certificate;
       client_key = v_client_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_client_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_certificate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ca_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ca_certificate", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : mysql_profile__ssl_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mysql_profile__ssl_config

[@@@deriving.end]

type mysql_profile = {
  hostname : string prop;
  password : string prop;
  port : float prop option; [@option]
  username : string prop;
  ssl_config : mysql_profile__ssl_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mysql_profile) -> ()

let yojson_of_mysql_profile =
  (function
   | {
       hostname = v_hostname;
       password = v_password;
       port = v_port;
       username = v_username;
       ssl_config = v_ssl_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ssl_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_mysql_profile__ssl_config)
               v_ssl_config
           in
           let bnd = "ssl_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_hostname in
         ("hostname", arg) :: bnds
       in
       `Assoc bnds
    : mysql_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mysql_profile

[@@@deriving.end]

type oracle_profile = {
  connection_attributes : string prop Tf_core.assoc option; [@option]
  database_service : string prop;
  hostname : string prop;
  password : string prop;
  port : float prop option; [@option]
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : oracle_profile) -> ()

let yojson_of_oracle_profile =
  (function
   | {
       connection_attributes = v_connection_attributes;
       database_service = v_database_service;
       hostname = v_hostname;
       password = v_password;
       port = v_port;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_hostname in
         ("hostname", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_database_service
         in
         ("database_service", arg) :: bnds
       in
       let bnds =
         match v_connection_attributes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "connection_attributes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : oracle_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_oracle_profile

[@@@deriving.end]

type postgresql_profile = {
  database : string prop;
  hostname : string prop;
  password : string prop;
  port : float prop option; [@option]
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : postgresql_profile) -> ()

let yojson_of_postgresql_profile =
  (function
   | {
       database = v_database;
       hostname = v_hostname;
       password = v_password;
       port = v_port;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_hostname in
         ("hostname", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database in
         ("database", arg) :: bnds
       in
       `Assoc bnds
    : postgresql_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_postgresql_profile

[@@@deriving.end]

type private_connectivity = { private_connection : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : private_connectivity) -> ()

let yojson_of_private_connectivity =
  (function
   | { private_connection = v_private_connection } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_private_connection
         in
         ("private_connection", arg) :: bnds
       in
       `Assoc bnds
    : private_connectivity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_private_connectivity

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_datastream_connection_profile = {
  connection_profile_id : string prop;
  create_without_validation : bool prop option; [@option]
  display_name : string prop;
  id : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  location : string prop;
  project : string prop option; [@option]
  bigquery_profile : bigquery_profile list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  forward_ssh_connectivity : forward_ssh_connectivity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gcs_profile : gcs_profile list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  mysql_profile : mysql_profile list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  oracle_profile : oracle_profile list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  postgresql_profile : postgresql_profile list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  private_connectivity : private_connectivity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_datastream_connection_profile) -> ()

let yojson_of_google_datastream_connection_profile =
  (function
   | {
       connection_profile_id = v_connection_profile_id;
       create_without_validation = v_create_without_validation;
       display_name = v_display_name;
       id = v_id;
       labels = v_labels;
       location = v_location;
       project = v_project;
       bigquery_profile = v_bigquery_profile;
       forward_ssh_connectivity = v_forward_ssh_connectivity;
       gcs_profile = v_gcs_profile;
       mysql_profile = v_mysql_profile;
       oracle_profile = v_oracle_profile;
       postgresql_profile = v_postgresql_profile;
       private_connectivity = v_private_connectivity;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_private_connectivity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_private_connectivity)
               v_private_connectivity
           in
           let bnd = "private_connectivity", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_postgresql_profile then bnds
         else
           let arg =
             (yojson_of_list yojson_of_postgresql_profile)
               v_postgresql_profile
           in
           let bnd = "postgresql_profile", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_oracle_profile then bnds
         else
           let arg =
             (yojson_of_list yojson_of_oracle_profile)
               v_oracle_profile
           in
           let bnd = "oracle_profile", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_mysql_profile then bnds
         else
           let arg =
             (yojson_of_list yojson_of_mysql_profile) v_mysql_profile
           in
           let bnd = "mysql_profile", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_gcs_profile then bnds
         else
           let arg =
             (yojson_of_list yojson_of_gcs_profile) v_gcs_profile
           in
           let bnd = "gcs_profile", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_forward_ssh_connectivity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_forward_ssh_connectivity)
               v_forward_ssh_connectivity
           in
           let bnd = "forward_ssh_connectivity", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_bigquery_profile then bnds
         else
           let arg =
             (yojson_of_list yojson_of_bigquery_profile)
               v_bigquery_profile
           in
           let bnd = "bigquery_profile", arg in
           bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         match v_create_without_validation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "create_without_validation", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connection_profile_id
         in
         ("connection_profile_id", arg) :: bnds
       in
       `Assoc bnds
    : google_datastream_connection_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_datastream_connection_profile

[@@@deriving.end]

let bigquery_profile () = ()

let forward_ssh_connectivity ?password ?port ?private_key ~hostname
    ~username () : forward_ssh_connectivity =
  { hostname; password; port; private_key; username }

let gcs_profile ?root_path ~bucket () : gcs_profile =
  { bucket; root_path }

let mysql_profile__ssl_config ?ca_certificate ?client_certificate
    ?client_key () : mysql_profile__ssl_config =
  { ca_certificate; client_certificate; client_key }

let mysql_profile ?port ?(ssl_config = []) ~hostname ~password
    ~username () : mysql_profile =
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

let google_datastream_connection_profile ?create_without_validation
    ?id ?labels ?project ?(bigquery_profile = [])
    ?(forward_ssh_connectivity = []) ?(gcs_profile = [])
    ?(mysql_profile = []) ?(oracle_profile = [])
    ?(postgresql_profile = []) ?(private_connectivity = []) ?timeouts
    ~connection_profile_id ~display_name ~location () :
    google_datastream_connection_profile =
  {
    connection_profile_id;
    create_without_validation;
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
  tf_name : string;
  connection_profile_id : string prop;
  create_without_validation : bool prop;
  display_name : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : string Tf_core.assoc prop;
}

let make ?create_without_validation ?id ?labels ?project
    ?(bigquery_profile = []) ?(forward_ssh_connectivity = [])
    ?(gcs_profile = []) ?(mysql_profile = []) ?(oracle_profile = [])
    ?(postgresql_profile = []) ?(private_connectivity = []) ?timeouts
    ~connection_profile_id ~display_name ~location __id =
  let __type = "google_datastream_connection_profile" in
  let __attrs =
    ({
       tf_name = __id;
       connection_profile_id =
         Prop.computed __type __id "connection_profile_id";
       create_without_validation =
         Prop.computed __type __id "create_without_validation";
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
        (google_datastream_connection_profile
           ?create_without_validation ?id ?labels ?project
           ~bigquery_profile ~forward_ssh_connectivity ~gcs_profile
           ~mysql_profile ~oracle_profile ~postgresql_profile
           ~private_connectivity ?timeouts ~connection_profile_id
           ~display_name ~location ());
    attrs = __attrs;
  }

let register ?tf_module ?create_without_validation ?id ?labels
    ?project ?(bigquery_profile = [])
    ?(forward_ssh_connectivity = []) ?(gcs_profile = [])
    ?(mysql_profile = []) ?(oracle_profile = [])
    ?(postgresql_profile = []) ?(private_connectivity = []) ?timeouts
    ~connection_profile_id ~display_name ~location __id =
  let (r : _ Tf_core.resource) =
    make ?create_without_validation ?id ?labels ?project
      ~bigquery_profile ~forward_ssh_connectivity ~gcs_profile
      ~mysql_profile ~oracle_profile ~postgresql_profile
      ~private_connectivity ?timeouts ~connection_profile_id
      ~display_name ~location __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
