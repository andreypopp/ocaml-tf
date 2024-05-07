(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type google_sql_source_representation_instance = {
  ca_certificate : string prop option; [@option]
  client_certificate : string prop option; [@option]
  client_key : string prop option; [@option]
  database_version : string prop;
  dump_file_path : string prop option; [@option]
  host : string prop;
  id : string prop option; [@option]
  name : string prop;
  password : string prop option; [@option]
  port : float prop option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
  username : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_sql_source_representation_instance) -> ()

let yojson_of_google_sql_source_representation_instance =
  (function
   | {
       ca_certificate = v_ca_certificate;
       client_certificate = v_client_certificate;
       client_key = v_client_key;
       database_version = v_database_version;
       dump_file_path = v_dump_file_path;
       host = v_host;
       id = v_id;
       name = v_name;
       password = v_password;
       port = v_port;
       project = v_project;
       region = v_region;
       username = v_username;
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
         match v_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "username", arg in
             bnd :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       let bnds =
         match v_dump_file_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dump_file_path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_database_version
         in
         ("database_version", arg) :: bnds
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
    : google_sql_source_representation_instance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_sql_source_representation_instance

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
