(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_imagebuilder_image_recipe__block_device_mapping__ebs = {
  delete_on_termination : string option; [@option]
      (** delete_on_termination *)
  encrypted : string option; [@option]  (** encrypted *)
  iops : float option; [@option]  (** iops *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  snapshot_id : string option; [@option]  (** snapshot_id *)
  throughput : float option; [@option]  (** throughput *)
  volume_size : float option; [@option]  (** volume_size *)
  volume_type : string option; [@option]  (** volume_type *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_image_recipe__block_device_mapping__ebs *)

type aws_imagebuilder_image_recipe__block_device_mapping = {
  device_name : string option; [@option]  (** device_name *)
  no_device : bool option; [@option]  (** no_device *)
  virtual_name : string option; [@option]  (** virtual_name *)
  ebs : aws_imagebuilder_image_recipe__block_device_mapping__ebs list;
}
[@@deriving yojson_of]
(** aws_imagebuilder_image_recipe__block_device_mapping *)

type aws_imagebuilder_image_recipe__component__parameter = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_image_recipe__component__parameter *)

type aws_imagebuilder_image_recipe__component = {
  component_arn : string;  (** component_arn *)
  parameter :
    aws_imagebuilder_image_recipe__component__parameter list;
}
[@@deriving yojson_of]
(** aws_imagebuilder_image_recipe__component *)

type aws_imagebuilder_image_recipe__systems_manager_agent = {
  uninstall_after_build : bool;  (** uninstall_after_build *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_image_recipe__systems_manager_agent *)

type aws_imagebuilder_image_recipe = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  parent_image : string;  (** parent_image *)
  tags : (string * string) list option; [@option]  (** tags *)
  version : string;  (** version *)
  working_directory : string option; [@option]
      (** working_directory *)
  block_device_mapping :
    aws_imagebuilder_image_recipe__block_device_mapping list;
  component : aws_imagebuilder_image_recipe__component list;
  systems_manager_agent :
    aws_imagebuilder_image_recipe__systems_manager_agent list;
}
[@@deriving yojson_of]
(** aws_imagebuilder_image_recipe *)

let aws_imagebuilder_image_recipe ?description ?tags
    ?working_directory ~name ~parent_image ~version
    ~block_device_mapping ~component ~systems_manager_agent
    __resource_id =
  let __resource_type = "aws_imagebuilder_image_recipe" in
  let __resource =
    {
      description;
      name;
      parent_image;
      tags;
      version;
      working_directory;
      block_device_mapping;
      component;
      systems_manager_agent;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_imagebuilder_image_recipe __resource);
  ()
