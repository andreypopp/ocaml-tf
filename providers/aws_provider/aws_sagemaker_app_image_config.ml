(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_app_image_config__jupyter_lab_image_config__container_config = {
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
(** aws_sagemaker_app_image_config__jupyter_lab_image_config__container_config *)

type aws_sagemaker_app_image_config__jupyter_lab_image_config = {
  container_config :
    aws_sagemaker_app_image_config__jupyter_lab_image_config__container_config
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_app_image_config__jupyter_lab_image_config *)

type aws_sagemaker_app_image_config__kernel_gateway_image_config__file_system_config = {
  default_gid : float prop option; [@option]  (** default_gid *)
  default_uid : float prop option; [@option]  (** default_uid *)
  mount_path : string prop option; [@option]  (** mount_path *)
}
[@@deriving yojson_of]
(** aws_sagemaker_app_image_config__kernel_gateway_image_config__file_system_config *)

type aws_sagemaker_app_image_config__kernel_gateway_image_config__kernel_spec = {
  display_name : string prop option; [@option]  (** display_name *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_sagemaker_app_image_config__kernel_gateway_image_config__kernel_spec *)

type aws_sagemaker_app_image_config__kernel_gateway_image_config = {
  file_system_config :
    aws_sagemaker_app_image_config__kernel_gateway_image_config__file_system_config
    list;
  kernel_spec :
    aws_sagemaker_app_image_config__kernel_gateway_image_config__kernel_spec
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_app_image_config__kernel_gateway_image_config *)

type aws_sagemaker_app_image_config = {
  app_image_config_name : string prop;  (** app_image_config_name *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  jupyter_lab_image_config :
    aws_sagemaker_app_image_config__jupyter_lab_image_config list;
  kernel_gateway_image_config :
    aws_sagemaker_app_image_config__kernel_gateway_image_config list;
}
[@@deriving yojson_of]
(** aws_sagemaker_app_image_config *)

let aws_sagemaker_app_image_config ?id ?tags ?tags_all
    ~app_image_config_name ~jupyter_lab_image_config
    ~kernel_gateway_image_config __resource_id =
  let __resource_type = "aws_sagemaker_app_image_config" in
  let __resource =
    {
      app_image_config_name;
      id;
      tags;
      tags_all;
      jupyter_lab_image_config;
      kernel_gateway_image_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_app_image_config __resource);
  ()
