(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type block_device_mapping__ebs = {
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
(** block_device_mapping__ebs *)

type block_device_mapping = {
  device_name : string prop option; [@option]  (** device_name *)
  no_device : bool prop option; [@option]  (** no_device *)
  virtual_name : string prop option; [@option]  (** virtual_name *)
  ebs : block_device_mapping__ebs list;
}
[@@deriving yojson_of]
(** block_device_mapping *)

type component__parameter = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** component__parameter *)

type component = {
  component_arn : string prop;  (** component_arn *)
  parameter : component__parameter list;
}
[@@deriving yojson_of]
(** component *)

type systems_manager_agent = {
  uninstall_after_build : bool prop;  (** uninstall_after_build *)
}
[@@deriving yojson_of]
(** systems_manager_agent *)

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
  block_device_mapping : block_device_mapping list;
  component : component list;
  systems_manager_agent : systems_manager_agent list;
}
[@@deriving yojson_of]
(** aws_imagebuilder_image_recipe *)

let block_device_mapping__ebs ?delete_on_termination ?encrypted ?iops
    ?kms_key_id ?snapshot_id ?throughput ?volume_size ?volume_type ()
    : block_device_mapping__ebs =
  {
    delete_on_termination;
    encrypted;
    iops;
    kms_key_id;
    snapshot_id;
    throughput;
    volume_size;
    volume_type;
  }

let block_device_mapping ?device_name ?no_device ?virtual_name ~ebs
    () : block_device_mapping =
  { device_name; no_device; virtual_name; ebs }

let component__parameter ~name ~value () : component__parameter =
  { name; value }

let component ~component_arn ~parameter () : component =
  { component_arn; parameter }

let systems_manager_agent ~uninstall_after_build () :
    systems_manager_agent =
  { uninstall_after_build }

let aws_imagebuilder_image_recipe ?description ?id ?tags ?tags_all
    ?user_data_base64 ?working_directory ~name ~parent_image ~version
    ~block_device_mapping ~component ~systems_manager_agent () :
    aws_imagebuilder_image_recipe =
  {
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

let make ?description ?id ?tags ?tags_all ?user_data_base64
    ?working_directory ~name ~parent_image ~version
    ~block_device_mapping ~component ~systems_manager_agent __id =
  let __type = "aws_imagebuilder_image_recipe" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       date_created = Prop.computed __type __id "date_created";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       owner = Prop.computed __type __id "owner";
       parent_image = Prop.computed __type __id "parent_image";
       platform = Prop.computed __type __id "platform";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       user_data_base64 =
         Prop.computed __type __id "user_data_base64";
       version = Prop.computed __type __id "version";
       working_directory =
         Prop.computed __type __id "working_directory";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_imagebuilder_image_recipe
        (aws_imagebuilder_image_recipe ?description ?id ?tags
           ?tags_all ?user_data_base64 ?working_directory ~name
           ~parent_image ~version ~block_device_mapping ~component
           ~systems_manager_agent ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all
    ?user_data_base64 ?working_directory ~name ~parent_image ~version
    ~block_device_mapping ~component ~systems_manager_agent __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ?user_data_base64
      ?working_directory ~name ~parent_image ~version
      ~block_device_mapping ~component ~systems_manager_agent __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
