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

type azurerm_spring_cloud_java_deployment = {
  environment_variables : (string * string prop) list option;
      [@option]
  id : string prop option; [@option]
  instance_count : float prop option; [@option]
  jvm_options : string prop option; [@option]
  name : string prop;
  runtime_version : string prop option; [@option]
  spring_cloud_app_id : string prop;
  quota : quota list; [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_spring_cloud_java_deployment) -> ()

let yojson_of_azurerm_spring_cloud_java_deployment =
  (function
   | {
       environment_variables = v_environment_variables;
       id = v_id;
       instance_count = v_instance_count;
       jvm_options = v_jvm_options;
       name = v_name;
       runtime_version = v_runtime_version;
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
         if [] = v_quota then bnds
         else
           let arg = (yojson_of_list yojson_of_quota) v_quota in
           let bnd = "quota", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_spring_cloud_app_id
         in
         ("spring_cloud_app_id", arg) :: bnds
       in
       let bnds =
         match v_runtime_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "runtime_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_jvm_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "jvm_options", arg in
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
       `Assoc bnds
    : azurerm_spring_cloud_java_deployment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_spring_cloud_java_deployment

[@@@deriving.end]

let quota ?cpu ?memory () : quota = { cpu; memory }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_java_deployment ?environment_variables ?id
    ?instance_count ?jvm_options ?runtime_version ?(quota = [])
    ?timeouts ~name ~spring_cloud_app_id () :
    azurerm_spring_cloud_java_deployment =
  {
    environment_variables;
    id;
    instance_count;
    jvm_options;
    name;
    runtime_version;
    spring_cloud_app_id;
    quota;
    timeouts;
  }

type t = {
  tf_name : string;
  environment_variables : (string * string) list prop;
  id : string prop;
  instance_count : float prop;
  jvm_options : string prop;
  name : string prop;
  runtime_version : string prop;
  spring_cloud_app_id : string prop;
}

let make ?environment_variables ?id ?instance_count ?jvm_options
    ?runtime_version ?(quota = []) ?timeouts ~name
    ~spring_cloud_app_id __id =
  let __type = "azurerm_spring_cloud_java_deployment" in
  let __attrs =
    ({
       tf_name = __id;
       environment_variables =
         Prop.computed __type __id "environment_variables";
       id = Prop.computed __type __id "id";
       instance_count = Prop.computed __type __id "instance_count";
       jvm_options = Prop.computed __type __id "jvm_options";
       name = Prop.computed __type __id "name";
       runtime_version = Prop.computed __type __id "runtime_version";
       spring_cloud_app_id =
         Prop.computed __type __id "spring_cloud_app_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_java_deployment
        (azurerm_spring_cloud_java_deployment ?environment_variables
           ?id ?instance_count ?jvm_options ?runtime_version ~quota
           ?timeouts ~name ~spring_cloud_app_id ());
    attrs = __attrs;
  }

let register ?tf_module ?environment_variables ?id ?instance_count
    ?jvm_options ?runtime_version ?(quota = []) ?timeouts ~name
    ~spring_cloud_app_id __id =
  let (r : _ Tf_core.resource) =
    make ?environment_variables ?id ?instance_count ?jvm_options
      ?runtime_version ~quota ?timeouts ~name ~spring_cloud_app_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
