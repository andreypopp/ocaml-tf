(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type jupyter_lab_image_config__container_config = {
  container_arguments : string prop list option; [@option]
      (** container_arguments *)
  container_entrypoint : string prop list option; [@option]
      (** container_entrypoint *)
  container_environment_variables :
    (string * string prop) list option;
      [@option]
      (** container_environment_variables *)
}
[@@deriving yojson_of]
(** jupyter_lab_image_config__container_config *)

type jupyter_lab_image_config = {
  container_config : jupyter_lab_image_config__container_config list;
}
[@@deriving yojson_of]
(** jupyter_lab_image_config *)

type kernel_gateway_image_config__file_system_config = {
  default_gid : float prop option; [@option]  (** default_gid *)
  default_uid : float prop option; [@option]  (** default_uid *)
  mount_path : string prop option; [@option]  (** mount_path *)
}
[@@deriving yojson_of]
(** kernel_gateway_image_config__file_system_config *)

type kernel_gateway_image_config__kernel_spec = {
  display_name : string prop option; [@option]  (** display_name *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** kernel_gateway_image_config__kernel_spec *)

type kernel_gateway_image_config = {
  file_system_config :
    kernel_gateway_image_config__file_system_config list;
  kernel_spec : kernel_gateway_image_config__kernel_spec list;
}
[@@deriving yojson_of]
(** kernel_gateway_image_config *)

type aws_sagemaker_app_image_config = {
  app_image_config_name : string prop;  (** app_image_config_name *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  jupyter_lab_image_config : jupyter_lab_image_config list;
  kernel_gateway_image_config : kernel_gateway_image_config list;
}
[@@deriving yojson_of]
(** aws_sagemaker_app_image_config *)

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
