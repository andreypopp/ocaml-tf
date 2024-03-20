(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type jupyter_lab_image_config__container_config = {
  container_arguments : string prop list option; [@option]
  container_entrypoint : string prop list option; [@option]
  container_environment_variables :
    (string * string prop) list option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : jupyter_lab_image_config__container_config) -> ()

let yojson_of_jupyter_lab_image_config__container_config =
  (function
   | {
       container_arguments = v_container_arguments;
       container_entrypoint = v_container_entrypoint;
       container_environment_variables =
         v_container_environment_variables;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_container_environment_variables with
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
             let bnd = "container_environment_variables", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_entrypoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "container_entrypoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_arguments with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "container_arguments", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : jupyter_lab_image_config__container_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_jupyter_lab_image_config__container_config

[@@@deriving.end]

type jupyter_lab_image_config = {
  container_config : jupyter_lab_image_config__container_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : jupyter_lab_image_config) -> ()

let yojson_of_jupyter_lab_image_config =
  (function
   | { container_config = v_container_config } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_jupyter_lab_image_config__container_config
             v_container_config
         in
         ("container_config", arg) :: bnds
       in
       `Assoc bnds
    : jupyter_lab_image_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_jupyter_lab_image_config

[@@@deriving.end]

type kernel_gateway_image_config__file_system_config = {
  default_gid : float prop option; [@option]
  default_uid : float prop option; [@option]
  mount_path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : kernel_gateway_image_config__file_system_config) -> ()

let yojson_of_kernel_gateway_image_config__file_system_config =
  (function
   | {
       default_gid = v_default_gid;
       default_uid = v_default_uid;
       mount_path = v_mount_path;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_mount_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mount_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_uid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "default_uid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_gid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "default_gid", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : kernel_gateway_image_config__file_system_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kernel_gateway_image_config__file_system_config

[@@@deriving.end]

type kernel_gateway_image_config__kernel_spec = {
  display_name : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kernel_gateway_image_config__kernel_spec) -> ()

let yojson_of_kernel_gateway_image_config__kernel_spec =
  (function
   | { display_name = v_display_name; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : kernel_gateway_image_config__kernel_spec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kernel_gateway_image_config__kernel_spec

[@@@deriving.end]

type kernel_gateway_image_config = {
  file_system_config :
    kernel_gateway_image_config__file_system_config list;
  kernel_spec : kernel_gateway_image_config__kernel_spec list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kernel_gateway_image_config) -> ()

let yojson_of_kernel_gateway_image_config =
  (function
   | {
       file_system_config = v_file_system_config;
       kernel_spec = v_kernel_spec;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_kernel_gateway_image_config__kernel_spec
             v_kernel_spec
         in
         ("kernel_spec", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_kernel_gateway_image_config__file_system_config
             v_file_system_config
         in
         ("file_system_config", arg) :: bnds
       in
       `Assoc bnds
    : kernel_gateway_image_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kernel_gateway_image_config

[@@@deriving.end]

type aws_sagemaker_app_image_config = {
  app_image_config_name : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  jupyter_lab_image_config : jupyter_lab_image_config list;
  kernel_gateway_image_config : kernel_gateway_image_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sagemaker_app_image_config) -> ()

let yojson_of_aws_sagemaker_app_image_config =
  (function
   | {
       app_image_config_name = v_app_image_config_name;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       jupyter_lab_image_config = v_jupyter_lab_image_config;
       kernel_gateway_image_config = v_kernel_gateway_image_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_kernel_gateway_image_config
             v_kernel_gateway_image_config
         in
         ("kernel_gateway_image_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_jupyter_lab_image_config
             v_jupyter_lab_image_config
         in
         ("jupyter_lab_image_config", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
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
             let bnd = "tags", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_app_image_config_name
         in
         ("app_image_config_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_sagemaker_app_image_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sagemaker_app_image_config

[@@@deriving.end]

let jupyter_lab_image_config__container_config ?container_arguments
    ?container_entrypoint ?container_environment_variables () :
    jupyter_lab_image_config__container_config =
  {
    container_arguments;
    container_entrypoint;
    container_environment_variables;
  }

let jupyter_lab_image_config ~container_config () :
    jupyter_lab_image_config =
  { container_config }

let kernel_gateway_image_config__file_system_config ?default_gid
    ?default_uid ?mount_path () :
    kernel_gateway_image_config__file_system_config =
  { default_gid; default_uid; mount_path }

let kernel_gateway_image_config__kernel_spec ?display_name ~name () :
    kernel_gateway_image_config__kernel_spec =
  { display_name; name }

let kernel_gateway_image_config ~file_system_config ~kernel_spec () :
    kernel_gateway_image_config =
  { file_system_config; kernel_spec }

let aws_sagemaker_app_image_config ?id ?tags ?tags_all
    ~app_image_config_name ~jupyter_lab_image_config
    ~kernel_gateway_image_config () : aws_sagemaker_app_image_config
    =
  {
    app_image_config_name;
    id;
    tags;
    tags_all;
    jupyter_lab_image_config;
    kernel_gateway_image_config;
  }

type t = {
  app_image_config_name : string prop;
  arn : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~app_image_config_name
    ~jupyter_lab_image_config ~kernel_gateway_image_config __id =
  let __type = "aws_sagemaker_app_image_config" in
  let __attrs =
    ({
       app_image_config_name =
         Prop.computed __type __id "app_image_config_name";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_app_image_config
        (aws_sagemaker_app_image_config ?id ?tags ?tags_all
           ~app_image_config_name ~jupyter_lab_image_config
           ~kernel_gateway_image_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~app_image_config_name
    ~jupyter_lab_image_config ~kernel_gateway_image_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~app_image_config_name
      ~jupyter_lab_image_config ~kernel_gateway_image_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
