(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_imagebuilder_container_recipe__component__parameter = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_container_recipe__component__parameter *)

type aws_imagebuilder_container_recipe__component = {
  component_arn : string prop;  (** component_arn *)
  parameter :
    aws_imagebuilder_container_recipe__component__parameter list;
}
[@@deriving yojson_of]
(** aws_imagebuilder_container_recipe__component *)

type aws_imagebuilder_container_recipe__instance_configuration__block_device_mapping__ebs = {
  delete_on_termination : string prop option; [@option]
      (** delete_on_termination *)
  encrypted : string prop option; [@option]  (** encrypted *)
  iops : float prop option; [@option]  (** iops *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  snapshot_id : string prop option; [@option]  (** snapshot_id *)
  throughput : float prop option; [@option]  (** throughput *)
  volume_size : float prop option; [@option]  (** volume_size *)
  volume_type : string prop option; [@option]  (** volume_type *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_container_recipe__instance_configuration__block_device_mapping__ebs *)

type aws_imagebuilder_container_recipe__instance_configuration__block_device_mapping = {
  device_name : string prop option; [@option]  (** device_name *)
  no_device : bool prop option; [@option]  (** no_device *)
  virtual_name : string prop option; [@option]  (** virtual_name *)
  ebs :
    aws_imagebuilder_container_recipe__instance_configuration__block_device_mapping__ebs
    list;
}
[@@deriving yojson_of]
(** aws_imagebuilder_container_recipe__instance_configuration__block_device_mapping *)

type aws_imagebuilder_container_recipe__instance_configuration = {
  image : string prop option; [@option]  (** image *)
  block_device_mapping :
    aws_imagebuilder_container_recipe__instance_configuration__block_device_mapping
    list;
}
[@@deriving yojson_of]
(** aws_imagebuilder_container_recipe__instance_configuration *)

type aws_imagebuilder_container_recipe__target_repository = {
  repository_name : string prop;  (** repository_name *)
  service : string prop;  (** service *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_container_recipe__target_repository *)

type aws_imagebuilder_container_recipe = {
  container_type : string prop;  (** container_type *)
  description : string prop option; [@option]  (** description *)
  dockerfile_template_data : string prop option; [@option]
      (** dockerfile_template_data *)
  dockerfile_template_uri : string prop option; [@option]
      (** dockerfile_template_uri *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  name : string prop;  (** name *)
  parent_image : string prop;  (** parent_image *)
  platform_override : string prop option; [@option]
      (** platform_override *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  version : string prop;  (** version *)
  working_directory : string prop option; [@option]
      (** working_directory *)
  component : aws_imagebuilder_container_recipe__component list;
  instance_configuration :
    aws_imagebuilder_container_recipe__instance_configuration list;
  target_repository :
    aws_imagebuilder_container_recipe__target_repository list;
}
[@@deriving yojson_of]
(** aws_imagebuilder_container_recipe *)

let aws_imagebuilder_container_recipe ?description
    ?dockerfile_template_data ?dockerfile_template_uri ?id
    ?kms_key_id ?platform_override ?tags ?tags_all ?working_directory
    ~container_type ~name ~parent_image ~version ~component
    ~instance_configuration ~target_repository __resource_id =
  let __resource_type = "aws_imagebuilder_container_recipe" in
  let __resource =
    {
      container_type;
      description;
      dockerfile_template_data;
      dockerfile_template_uri;
      id;
      kms_key_id;
      name;
      parent_image;
      platform_override;
      tags;
      tags_all;
      version;
      working_directory;
      component;
      instance_configuration;
      target_repository;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_imagebuilder_container_recipe __resource);
  ()
