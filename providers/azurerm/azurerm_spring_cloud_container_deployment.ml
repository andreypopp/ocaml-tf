(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type quota = {
  cpu : string prop option; [@option]
  memory : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : quota) -> ()

let yojson_of_quota =
  (function
   | { cpu = v_cpu; memory = v_memory } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_memory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "memory", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cpu", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : quota -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_quota

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type azurerm_spring_cloud_container_deployment = {
  addon_json : string prop option; [@option]
  application_performance_monitoring_ids : string prop list option;
      [@option]
  arguments : string prop list option; [@option]
  commands : string prop list option; [@option]
  environment_variables : (string * string prop) list option;
      [@option]
  id : string prop option; [@option]
  image : string prop;
  instance_count : float prop option; [@option]
  language_framework : string prop option; [@option]
  name : string prop;
  server : string prop;
  spring_cloud_app_id : string prop;
  quota : quota list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_spring_cloud_container_deployment) -> ()

let yojson_of_azurerm_spring_cloud_container_deployment =
  (function
   | {
       addon_json = v_addon_json;
       application_performance_monitoring_ids =
         v_application_performance_monitoring_ids;
       arguments = v_arguments;
       commands = v_commands;
       environment_variables = v_environment_variables;
       id = v_id;
       image = v_image;
       instance_count = v_instance_count;
       language_framework = v_language_framework;
       name = v_name;
       server = v_server;
       spring_cloud_app_id = v_spring_cloud_app_id;
       quota = v_quota;
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
         let arg = yojson_of_list yojson_of_quota v_quota in
         ("quota", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_spring_cloud_app_id
         in
         ("spring_cloud_app_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_server in
         ("server", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_language_framework with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "language_framework", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "instance_count", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image in
         ("image", arg) :: bnds
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
         match v_environment_variables with
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
             let bnd = "environment_variables", arg in
             bnd :: bnds
       in
       let bnds =
         match v_commands with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "commands", arg in
             bnd :: bnds
       in
       let bnds =
         match v_arguments with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "arguments", arg in
             bnd :: bnds
       in
       let bnds =
         match v_application_performance_monitoring_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd =
               "application_performance_monitoring_ids", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_addon_json with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "addon_json", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_spring_cloud_container_deployment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_spring_cloud_container_deployment

[@@@deriving.end]

let quota ?cpu ?memory () : quota = { cpu; memory }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_container_deployment ?addon_json
    ?application_performance_monitoring_ids ?arguments ?commands
    ?environment_variables ?id ?instance_count ?language_framework
    ?(quota = []) ?timeouts ~image ~name ~server ~spring_cloud_app_id
    () : azurerm_spring_cloud_container_deployment =
  {
    addon_json;
    application_performance_monitoring_ids;
    arguments;
    commands;
    environment_variables;
    id;
    image;
    instance_count;
    language_framework;
    name;
    server;
    spring_cloud_app_id;
    quota;
    timeouts;
  }

type t = {
  addon_json : string prop;
  application_performance_monitoring_ids : string list prop;
  arguments : string list prop;
  commands : string list prop;
  environment_variables : (string * string) list prop;
  id : string prop;
  image : string prop;
  instance_count : float prop;
  language_framework : string prop;
  name : string prop;
  server : string prop;
  spring_cloud_app_id : string prop;
}

let make ?addon_json ?application_performance_monitoring_ids
    ?arguments ?commands ?environment_variables ?id ?instance_count
    ?language_framework ?(quota = []) ?timeouts ~image ~name ~server
    ~spring_cloud_app_id __id =
  let __type = "azurerm_spring_cloud_container_deployment" in
  let __attrs =
    ({
       addon_json = Prop.computed __type __id "addon_json";
       application_performance_monitoring_ids =
         Prop.computed __type __id
           "application_performance_monitoring_ids";
       arguments = Prop.computed __type __id "arguments";
       commands = Prop.computed __type __id "commands";
       environment_variables =
         Prop.computed __type __id "environment_variables";
       id = Prop.computed __type __id "id";
       image = Prop.computed __type __id "image";
       instance_count = Prop.computed __type __id "instance_count";
       language_framework =
         Prop.computed __type __id "language_framework";
       name = Prop.computed __type __id "name";
       server = Prop.computed __type __id "server";
       spring_cloud_app_id =
         Prop.computed __type __id "spring_cloud_app_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_container_deployment
        (azurerm_spring_cloud_container_deployment ?addon_json
           ?application_performance_monitoring_ids ?arguments
           ?commands ?environment_variables ?id ?instance_count
           ?language_framework ~quota ?timeouts ~image ~name ~server
           ~spring_cloud_app_id ());
    attrs = __attrs;
  }

let register ?tf_module ?addon_json
    ?application_performance_monitoring_ids ?arguments ?commands
    ?environment_variables ?id ?instance_count ?language_framework
    ?(quota = []) ?timeouts ~image ~name ~server ~spring_cloud_app_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?addon_json ?application_performance_monitoring_ids
      ?arguments ?commands ?environment_variables ?id ?instance_count
      ?language_framework ~quota ?timeouts ~image ~name ~server
      ~spring_cloud_app_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
