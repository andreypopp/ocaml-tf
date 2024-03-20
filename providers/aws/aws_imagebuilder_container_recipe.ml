(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type instance_configuration__block_device_mapping__ebs = {
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
(** instance_configuration__block_device_mapping__ebs *)

type instance_configuration__block_device_mapping = {
  device_name : string prop option; [@option]  (** device_name *)
  no_device : bool prop option; [@option]  (** no_device *)
  virtual_name : string prop option; [@option]  (** virtual_name *)
  ebs : instance_configuration__block_device_mapping__ebs list;
}
[@@deriving yojson_of]
(** instance_configuration__block_device_mapping *)

type instance_configuration = {
  image : string prop option; [@option]  (** image *)
  block_device_mapping :
    instance_configuration__block_device_mapping list;
}
[@@deriving yojson_of]
(** instance_configuration *)

type target_repository = {
  repository_name : string prop;  (** repository_name *)
  service : string prop;  (** service *)
}
[@@deriving yojson_of]
(** target_repository *)

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
  component : component list;
  instance_configuration : instance_configuration list;
  target_repository : target_repository list;
}
[@@deriving yojson_of]
(** aws_imagebuilder_container_recipe *)

let component__parameter ~name ~value () : component__parameter =
  { name; value }

let component ~component_arn ~parameter () : component =
  { component_arn; parameter }

let instance_configuration__block_device_mapping__ebs
    ?delete_on_termination ?encrypted ?iops ?kms_key_id ?snapshot_id
    ?throughput ?volume_size ?volume_type () :
    instance_configuration__block_device_mapping__ebs =
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

let instance_configuration__block_device_mapping ?device_name
    ?no_device ?virtual_name ~ebs () :
    instance_configuration__block_device_mapping =
  { device_name; no_device; virtual_name; ebs }

let instance_configuration ?image ~block_device_mapping () :
    instance_configuration =
  { image; block_device_mapping }

let target_repository ~repository_name ~service () :
    target_repository =
  { repository_name; service }

let aws_imagebuilder_container_recipe ?description
    ?dockerfile_template_data ?dockerfile_template_uri ?id
    ?kms_key_id ?platform_override ?tags ?tags_all ?working_directory
    ~container_type ~name ~parent_image ~version ~component
    ~instance_configuration ~target_repository () :
    aws_imagebuilder_container_recipe =
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

type t = {
  arn : string prop;
  container_type : string prop;
  date_created : string prop;
  description : string prop;
  dockerfile_template_data : string prop;
  dockerfile_template_uri : string prop;
  encrypted : bool prop;
  id : string prop;
  kms_key_id : string prop;
  name : string prop;
  owner : string prop;
  parent_image : string prop;
  platform : string prop;
  platform_override : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : string prop;
  working_directory : string prop;
}

let make ?description ?dockerfile_template_data
    ?dockerfile_template_uri ?id ?kms_key_id ?platform_override ?tags
    ?tags_all ?working_directory ~container_type ~name ~parent_image
    ~version ~component ~instance_configuration ~target_repository
    __id =
  let __type = "aws_imagebuilder_container_recipe" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       container_type = Prop.computed __type __id "container_type";
       date_created = Prop.computed __type __id "date_created";
       description = Prop.computed __type __id "description";
       dockerfile_template_data =
         Prop.computed __type __id "dockerfile_template_data";
       dockerfile_template_uri =
         Prop.computed __type __id "dockerfile_template_uri";
       encrypted = Prop.computed __type __id "encrypted";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       name = Prop.computed __type __id "name";
       owner = Prop.computed __type __id "owner";
       parent_image = Prop.computed __type __id "parent_image";
       platform = Prop.computed __type __id "platform";
       platform_override =
         Prop.computed __type __id "platform_override";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
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
      yojson_of_aws_imagebuilder_container_recipe
        (aws_imagebuilder_container_recipe ?description
           ?dockerfile_template_data ?dockerfile_template_uri ?id
           ?kms_key_id ?platform_override ?tags ?tags_all
           ?working_directory ~container_type ~name ~parent_image
           ~version ~component ~instance_configuration
           ~target_repository ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?dockerfile_template_data
    ?dockerfile_template_uri ?id ?kms_key_id ?platform_override ?tags
    ?tags_all ?working_directory ~container_type ~name ~parent_image
    ~version ~component ~instance_configuration ~target_repository
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?dockerfile_template_data
      ?dockerfile_template_uri ?id ?kms_key_id ?platform_override
      ?tags ?tags_all ?working_directory ~container_type ~name
      ~parent_image ~version ~component ~instance_configuration
      ~target_repository __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
