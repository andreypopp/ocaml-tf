(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_imagebuilder_image_recipe__block_device_mapping__ebs = {
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
(** aws_imagebuilder_image_recipe__block_device_mapping__ebs *)

type aws_imagebuilder_image_recipe__block_device_mapping = {
  device_name : string prop option; [@option]  (** device_name *)
  no_device : bool prop option; [@option]  (** no_device *)
  virtual_name : string prop option; [@option]  (** virtual_name *)
  ebs : aws_imagebuilder_image_recipe__block_device_mapping__ebs list;
}
[@@deriving yojson_of]
(** aws_imagebuilder_image_recipe__block_device_mapping *)

type aws_imagebuilder_image_recipe__component__parameter = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_image_recipe__component__parameter *)

type aws_imagebuilder_image_recipe__component = {
  component_arn : string prop;  (** component_arn *)
  parameter :
    aws_imagebuilder_image_recipe__component__parameter list;
}
[@@deriving yojson_of]
(** aws_imagebuilder_image_recipe__component *)

type aws_imagebuilder_image_recipe__systems_manager_agent = {
  uninstall_after_build : bool prop;  (** uninstall_after_build *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_image_recipe__systems_manager_agent *)

type aws_imagebuilder_image_recipe = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  parent_image : string prop;  (** parent_image *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  user_data_base64 : string prop option; [@option]
      (** user_data_base64 *)
  version : string prop;  (** version *)
  working_directory : string prop option; [@option]
      (** working_directory *)
  block_device_mapping :
    aws_imagebuilder_image_recipe__block_device_mapping list;
  component : aws_imagebuilder_image_recipe__component list;
  systems_manager_agent :
    aws_imagebuilder_image_recipe__systems_manager_agent list;
}
[@@deriving yojson_of]
(** aws_imagebuilder_image_recipe *)

type t = {
  arn : string prop;
  date_created : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  owner : string prop;
  parent_image : string prop;
  platform : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_data_base64 : string prop;
  version : string prop;
  working_directory : string prop;
}

let aws_imagebuilder_image_recipe ?description ?id ?tags ?tags_all
    ?user_data_base64 ?working_directory ~name ~parent_image ~version
    ~block_device_mapping ~component ~systems_manager_agent
    __resource_id =
  let __resource_type = "aws_imagebuilder_image_recipe" in
  let __resource =
    ({
       description;
       id;
       name;
       parent_image;
       tags;
       tags_all;
       user_data_base64;
       version;
       working_directory;
       block_device_mapping;
       component;
       systems_manager_agent;
     }
      : aws_imagebuilder_image_recipe)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_imagebuilder_image_recipe __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       date_created =
         Prop.computed __resource_type __resource_id "date_created";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       owner = Prop.computed __resource_type __resource_id "owner";
       parent_image =
         Prop.computed __resource_type __resource_id "parent_image";
       platform =
         Prop.computed __resource_type __resource_id "platform";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       user_data_base64 =
         Prop.computed __resource_type __resource_id
           "user_data_base64";
       version =
         Prop.computed __resource_type __resource_id "version";
       working_directory =
         Prop.computed __resource_type __resource_id
           "working_directory";
     }
      : t)
  in
  __resource_attributes
