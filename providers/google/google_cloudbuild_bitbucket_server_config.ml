(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type connected_repositories = {
  project_key : string prop;
  repo_slug : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : connected_repositories) -> ()

let yojson_of_connected_repositories =
  (function
   | { project_key = v_project_key; repo_slug = v_repo_slug } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repo_slug in
         ("repo_slug", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_key in
         ("project_key", arg) :: bnds
       in
       `Assoc bnds
    : connected_repositories -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_connected_repositories

[@@@deriving.end]

type secrets = {
  admin_access_token_version_name : string prop;
  read_access_token_version_name : string prop;
  webhook_secret_version_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secrets) -> ()

let yojson_of_secrets =
  (function
   | {
       admin_access_token_version_name =
         v_admin_access_token_version_name;
       read_access_token_version_name =
         v_read_access_token_version_name;
       webhook_secret_version_name = v_webhook_secret_version_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_webhook_secret_version_name
         in
         ("webhook_secret_version_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_read_access_token_version_name
         in
         ("read_access_token_version_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_admin_access_token_version_name
         in
         ("admin_access_token_version_name", arg) :: bnds
       in
       `Assoc bnds
    : secrets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secrets

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

type google_cloudbuild_bitbucket_server_config = {
  api_key : string prop;
  config_id : string prop;
  host_uri : string prop;
  id : string prop option; [@option]
  location : string prop;
  peered_network : string prop option; [@option]
  project : string prop option; [@option]
  ssl_ca : string prop option; [@option]
  username : string prop;
  connected_repositories : connected_repositories list;
      [@default []] [@yojson_drop_default ( = )]
  secrets : secrets list; [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloudbuild_bitbucket_server_config) -> ()

let yojson_of_google_cloudbuild_bitbucket_server_config =
  (function
   | {
       api_key = v_api_key;
       config_id = v_config_id;
       host_uri = v_host_uri;
       id = v_id;
       location = v_location;
       peered_network = v_peered_network;
       project = v_project;
       ssl_ca = v_ssl_ca;
       username = v_username;
       connected_repositories = v_connected_repositories;
       secrets = v_secrets;
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
         if [] = v_secrets then bnds
         else
           let arg = (yojson_of_list yojson_of_secrets) v_secrets in
           let bnd = "secrets", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_connected_repositories then bnds
         else
           let arg =
             (yojson_of_list yojson_of_connected_repositories)
               v_connected_repositories
           in
           let bnd = "connected_repositories", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         match v_ssl_ca with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssl_ca", arg in
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
         match v_peered_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "peered_network", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_host_uri in
         ("host_uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_config_id in
         ("config_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_key in
         ("api_key", arg) :: bnds
       in
       `Assoc bnds
    : google_cloudbuild_bitbucket_server_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloudbuild_bitbucket_server_config

[@@@deriving.end]

let connected_repositories ~project_key ~repo_slug () :
    connected_repositories =
  { project_key; repo_slug }

let secrets ~admin_access_token_version_name
    ~read_access_token_version_name ~webhook_secret_version_name () :
    secrets =
  {
    admin_access_token_version_name;
    read_access_token_version_name;
    webhook_secret_version_name;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_cloudbuild_bitbucket_server_config ?id ?peered_network
    ?project ?ssl_ca ?timeouts ~api_key ~config_id ~host_uri
    ~location ~username ~connected_repositories ~secrets () :
    google_cloudbuild_bitbucket_server_config =
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

type t = {
  tf_name : string;
  api_key : string prop;
  config_id : string prop;
  host_uri : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  peered_network : string prop;
  project : string prop;
  ssl_ca : string prop;
  username : string prop;
  webhook_key : string prop;
}

let make ?id ?peered_network ?project ?ssl_ca ?timeouts ~api_key
    ~config_id ~host_uri ~location ~username ~connected_repositories
    ~secrets __id =
  let __type = "google_cloudbuild_bitbucket_server_config" in
  let __attrs =
    ({
       tf_name = __id;
       api_key = Prop.computed __type __id "api_key";
       config_id = Prop.computed __type __id "config_id";
       host_uri = Prop.computed __type __id "host_uri";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       peered_network = Prop.computed __type __id "peered_network";
       project = Prop.computed __type __id "project";
       ssl_ca = Prop.computed __type __id "ssl_ca";
       username = Prop.computed __type __id "username";
       webhook_key = Prop.computed __type __id "webhook_key";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloudbuild_bitbucket_server_config
        (google_cloudbuild_bitbucket_server_config ?id
           ?peered_network ?project ?ssl_ca ?timeouts ~api_key
           ~config_id ~host_uri ~location ~username
           ~connected_repositories ~secrets ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?peered_network ?project ?ssl_ca
    ?timeouts ~api_key ~config_id ~host_uri ~location ~username
    ~connected_repositories ~secrets __id =
  let (r : _ Tf_core.resource) =
    make ?id ?peered_network ?project ?ssl_ca ?timeouts ~api_key
      ~config_id ~host_uri ~location ~username
      ~connected_repositories ~secrets __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
