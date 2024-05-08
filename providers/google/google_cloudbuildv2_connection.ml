(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_config__authorizer_credential = {
  oauth_token_secret_version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_config__authorizer_credential) -> ()

let yojson_of_github_config__authorizer_credential =
  (function
   | { oauth_token_secret_version = v_oauth_token_secret_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_oauth_token_secret_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "oauth_token_secret_version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : github_config__authorizer_credential ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_config__authorizer_credential

[@@@deriving.end]

type github_config = {
  app_installation_id : float prop option; [@option]
  authorizer_credential : github_config__authorizer_credential list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_config) -> ()

let yojson_of_github_config =
  (function
   | {
       app_installation_id = v_app_installation_id;
       authorizer_credential = v_authorizer_credential;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_authorizer_credential then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_github_config__authorizer_credential)
               v_authorizer_credential
           in
           let bnd = "authorizer_credential", arg in
           bnd :: bnds
       in
       let bnds =
         match v_app_installation_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "app_installation_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : github_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_config

[@@@deriving.end]

type github_enterprise_config__service_directory_config = {
  service : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : github_enterprise_config__service_directory_config) -> ()

let yojson_of_github_enterprise_config__service_directory_config =
  (function
   | { service = v_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       `Assoc bnds
    : github_enterprise_config__service_directory_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_enterprise_config__service_directory_config

[@@@deriving.end]

type github_enterprise_config = {
  app_id : float prop option; [@option]
  app_installation_id : float prop option; [@option]
  app_slug : string prop option; [@option]
  host_uri : string prop;
  private_key_secret_version : string prop option; [@option]
  ssl_ca : string prop option; [@option]
  webhook_secret_secret_version : string prop option; [@option]
  service_directory_config :
    github_enterprise_config__service_directory_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_enterprise_config) -> ()

let yojson_of_github_enterprise_config =
  (function
   | {
       app_id = v_app_id;
       app_installation_id = v_app_installation_id;
       app_slug = v_app_slug;
       host_uri = v_host_uri;
       private_key_secret_version = v_private_key_secret_version;
       ssl_ca = v_ssl_ca;
       webhook_secret_secret_version =
         v_webhook_secret_secret_version;
       service_directory_config = v_service_directory_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_service_directory_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_github_enterprise_config__service_directory_config)
               v_service_directory_config
           in
           let bnd = "service_directory_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_webhook_secret_secret_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "webhook_secret_secret_version", arg in
             bnd :: bnds
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
         match v_private_key_secret_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_key_secret_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host_uri in
         ("host_uri", arg) :: bnds
       in
       let bnds =
         match v_app_slug with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "app_slug", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_installation_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "app_installation_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "app_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : github_enterprise_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_enterprise_config

[@@@deriving.end]

type gitlab_config__authorizer_credential = {
  user_token_secret_version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : gitlab_config__authorizer_credential) -> ()

let yojson_of_gitlab_config__authorizer_credential =
  (function
   | { user_token_secret_version = v_user_token_secret_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_user_token_secret_version
         in
         ("user_token_secret_version", arg) :: bnds
       in
       `Assoc bnds
    : gitlab_config__authorizer_credential ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_gitlab_config__authorizer_credential

[@@@deriving.end]

type gitlab_config__read_authorizer_credential = {
  user_token_secret_version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : gitlab_config__read_authorizer_credential) -> ()

let yojson_of_gitlab_config__read_authorizer_credential =
  (function
   | { user_token_secret_version = v_user_token_secret_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_user_token_secret_version
         in
         ("user_token_secret_version", arg) :: bnds
       in
       `Assoc bnds
    : gitlab_config__read_authorizer_credential ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_gitlab_config__read_authorizer_credential

[@@@deriving.end]

type gitlab_config__service_directory_config = {
  service : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : gitlab_config__service_directory_config) -> ()

let yojson_of_gitlab_config__service_directory_config =
  (function
   | { service = v_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       `Assoc bnds
    : gitlab_config__service_directory_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_gitlab_config__service_directory_config

[@@@deriving.end]

type gitlab_config = {
  host_uri : string prop option; [@option]
  ssl_ca : string prop option; [@option]
  webhook_secret_secret_version : string prop;
  authorizer_credential : gitlab_config__authorizer_credential list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  read_authorizer_credential :
    gitlab_config__read_authorizer_credential list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  service_directory_config :
    gitlab_config__service_directory_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : gitlab_config) -> ()

let yojson_of_gitlab_config =
  (function
   | {
       host_uri = v_host_uri;
       ssl_ca = v_ssl_ca;
       webhook_secret_secret_version =
         v_webhook_secret_secret_version;
       authorizer_credential = v_authorizer_credential;
       read_authorizer_credential = v_read_authorizer_credential;
       service_directory_config = v_service_directory_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_service_directory_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_gitlab_config__service_directory_config)
               v_service_directory_config
           in
           let bnd = "service_directory_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_read_authorizer_credential then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_gitlab_config__read_authorizer_credential)
               v_read_authorizer_credential
           in
           let bnd = "read_authorizer_credential", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_authorizer_credential then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_gitlab_config__authorizer_credential)
               v_authorizer_credential
           in
           let bnd = "authorizer_credential", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_webhook_secret_secret_version
         in
         ("webhook_secret_secret_version", arg) :: bnds
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
         match v_host_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_uri", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : gitlab_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_gitlab_config

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

type installation_state = {
  action_uri : string prop;
  message : string prop;
  stage : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : installation_state) -> ()

let yojson_of_installation_state =
  (function
   | {
       action_uri = v_action_uri;
       message = v_message;
       stage = v_stage;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stage in
         ("stage", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_message in
         ("message", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action_uri in
         ("action_uri", arg) :: bnds
       in
       `Assoc bnds
    : installation_state -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_installation_state

[@@@deriving.end]

type google_cloudbuildv2_connection = {
  annotations : (string * string prop) list option; [@option]
  disabled : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  github_config : github_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  github_enterprise_config : github_enterprise_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gitlab_config : gitlab_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloudbuildv2_connection) -> ()

let yojson_of_google_cloudbuildv2_connection =
  (function
   | {
       annotations = v_annotations;
       disabled = v_disabled;
       id = v_id;
       location = v_location;
       name = v_name;
       project = v_project;
       github_config = v_github_config;
       github_enterprise_config = v_github_enterprise_config;
       gitlab_config = v_gitlab_config;
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
         if Stdlib.( = ) [] v_gitlab_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_gitlab_config) v_gitlab_config
           in
           let bnd = "gitlab_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_github_enterprise_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_github_enterprise_config)
               v_github_enterprise_config
           in
           let bnd = "github_enterprise_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_github_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_github_config) v_github_config
           in
           let bnd = "github_config", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_annotations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_cloudbuildv2_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloudbuildv2_connection

[@@@deriving.end]

let github_config__authorizer_credential ?oauth_token_secret_version
    () : github_config__authorizer_credential =
  { oauth_token_secret_version }

let github_config ?app_installation_id ?(authorizer_credential = [])
    () : github_config =
  { app_installation_id; authorizer_credential }

let github_enterprise_config__service_directory_config ~service () :
    github_enterprise_config__service_directory_config =
  { service }

let github_enterprise_config ?app_id ?app_installation_id ?app_slug
    ?private_key_secret_version ?ssl_ca
    ?webhook_secret_secret_version ?(service_directory_config = [])
    ~host_uri () : github_enterprise_config =
  {
    app_id;
    app_installation_id;
    app_slug;
    host_uri;
    private_key_secret_version;
    ssl_ca;
    webhook_secret_secret_version;
    service_directory_config;
  }

let gitlab_config__authorizer_credential ~user_token_secret_version
    () : gitlab_config__authorizer_credential =
  { user_token_secret_version }

let gitlab_config__read_authorizer_credential
    ~user_token_secret_version () :
    gitlab_config__read_authorizer_credential =
  { user_token_secret_version }

let gitlab_config__service_directory_config ~service () :
    gitlab_config__service_directory_config =
  { service }

let gitlab_config ?host_uri ?ssl_ca ?(service_directory_config = [])
    ~webhook_secret_secret_version ~authorizer_credential
    ~read_authorizer_credential () : gitlab_config =
  {
    host_uri;
    ssl_ca;
    webhook_secret_secret_version;
    authorizer_credential;
    read_authorizer_credential;
    service_directory_config;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_cloudbuildv2_connection ?annotations ?disabled ?id
    ?project ?(github_config = []) ?(github_enterprise_config = [])
    ?(gitlab_config = []) ?timeouts ~location ~name () :
    google_cloudbuildv2_connection =
  {
    annotations;
    disabled;
    id;
    location;
    name;
    project;
    github_config;
    github_enterprise_config;
    gitlab_config;
    timeouts;
  }

type t = {
  tf_name : string;
  annotations : (string * string) list prop;
  create_time : string prop;
  disabled : bool prop;
  effective_annotations : (string * string) list prop;
  etag : string prop;
  id : string prop;
  installation_state : installation_state list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  reconciling : bool prop;
  update_time : string prop;
}

let make ?annotations ?disabled ?id ?project ?(github_config = [])
    ?(github_enterprise_config = []) ?(gitlab_config = []) ?timeouts
    ~location ~name __id =
  let __type = "google_cloudbuildv2_connection" in
  let __attrs =
    ({
       tf_name = __id;
       annotations = Prop.computed __type __id "annotations";
       create_time = Prop.computed __type __id "create_time";
       disabled = Prop.computed __type __id "disabled";
       effective_annotations =
         Prop.computed __type __id "effective_annotations";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       installation_state =
         Prop.computed __type __id "installation_state";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       reconciling = Prop.computed __type __id "reconciling";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloudbuildv2_connection
        (google_cloudbuildv2_connection ?annotations ?disabled ?id
           ?project ~github_config ~github_enterprise_config
           ~gitlab_config ?timeouts ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?annotations ?disabled ?id ?project
    ?(github_config = []) ?(github_enterprise_config = [])
    ?(gitlab_config = []) ?timeouts ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?annotations ?disabled ?id ?project ~github_config
      ~github_enterprise_config ~gitlab_config ?timeouts ~location
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
