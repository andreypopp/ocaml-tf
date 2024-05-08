(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type component__parameter = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : component__parameter) -> ()

let yojson_of_component__parameter =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : component__parameter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_component__parameter

[@@@deriving.end]

type component = {
  component_arn : string prop;
  parameter : component__parameter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : component) -> ()

let yojson_of_component =
  (function
   | { component_arn = v_component_arn; parameter = v_parameter } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_parameter then bnds
         else
           let arg =
             (yojson_of_list yojson_of_component__parameter)
               v_parameter
           in
           let bnd = "parameter", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_component_arn in
         ("component_arn", arg) :: bnds
       in
       `Assoc bnds
    : component -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_component

[@@@deriving.end]

type instance_configuration__block_device_mapping__ebs = {
  delete_on_termination : string prop option; [@option]
  encrypted : string prop option; [@option]
  iops : float prop option; [@option]
  kms_key_id : string prop option; [@option]
  snapshot_id : string prop option; [@option]
  throughput : float prop option; [@option]
  volume_size : float prop option; [@option]
  volume_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : instance_configuration__block_device_mapping__ebs) -> ()

let yojson_of_instance_configuration__block_device_mapping__ebs =
  (function
   | {
       delete_on_termination = v_delete_on_termination;
       encrypted = v_encrypted;
       iops = v_iops;
       kms_key_id = v_kms_key_id;
       snapshot_id = v_snapshot_id;
       throughput = v_throughput;
       volume_size = v_volume_size;
       volume_type = v_volume_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_volume_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "volume_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_volume_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "volume_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_throughput with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "throughput", arg in
             bnd :: bnds
       in
       let bnds =
         match v_snapshot_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "snapshot_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iops with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "iops", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encrypted with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encrypted", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete_on_termination with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete_on_termination", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : instance_configuration__block_device_mapping__ebs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_configuration__block_device_mapping__ebs

[@@@deriving.end]

type instance_configuration__block_device_mapping = {
  device_name : string prop option; [@option]
  no_device : bool prop option; [@option]
  virtual_name : string prop option; [@option]
  ebs : instance_configuration__block_device_mapping__ebs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_configuration__block_device_mapping) -> ()

let yojson_of_instance_configuration__block_device_mapping =
  (function
   | {
       device_name = v_device_name;
       no_device = v_no_device;
       virtual_name = v_virtual_name;
       ebs = v_ebs;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ebs then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_instance_configuration__block_device_mapping__ebs)
               v_ebs
           in
           let bnd = "ebs", arg in
           bnd :: bnds
       in
       let bnds =
         match v_virtual_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "virtual_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_no_device with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "no_device", arg in
             bnd :: bnds
       in
       let bnds =
         match v_device_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "device_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : instance_configuration__block_device_mapping ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_configuration__block_device_mapping

[@@@deriving.end]

type instance_configuration = {
  image : string prop option; [@option]
  block_device_mapping :
    instance_configuration__block_device_mapping list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_configuration) -> ()

let yojson_of_instance_configuration =
  (function
   | {
       image = v_image;
       block_device_mapping = v_block_device_mapping;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_block_device_mapping then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_instance_configuration__block_device_mapping)
               v_block_device_mapping
           in
           let bnd = "block_device_mapping", arg in
           bnd :: bnds
       in
       let bnds =
         match v_image with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : instance_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_configuration

[@@@deriving.end]

type target_repository = {
  repository_name : string prop;
  service : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_repository) -> ()

let yojson_of_target_repository =
  (function
   | { repository_name = v_repository_name; service = v_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_repository_name
         in
         ("repository_name", arg) :: bnds
       in
       `Assoc bnds
    : target_repository -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_repository

[@@@deriving.end]

type aws_imagebuilder_container_recipe = {
  container_type : string prop;
  description : string prop option; [@option]
  dockerfile_template_data : string prop option; [@option]
  dockerfile_template_uri : string prop option; [@option]
  id : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  name : string prop;
  parent_image : string prop;
  platform_override : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  version : string prop;
  working_directory : string prop option; [@option]
  component : component list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  instance_configuration : instance_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  target_repository : target_repository list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_imagebuilder_container_recipe) -> ()

let yojson_of_aws_imagebuilder_container_recipe =
  (function
   | {
       container_type = v_container_type;
       description = v_description;
       dockerfile_template_data = v_dockerfile_template_data;
       dockerfile_template_uri = v_dockerfile_template_uri;
       id = v_id;
       kms_key_id = v_kms_key_id;
       name = v_name;
       parent_image = v_parent_image;
       platform_override = v_platform_override;
       tags = v_tags;
       tags_all = v_tags_all;
       version = v_version;
       working_directory = v_working_directory;
       component = v_component;
       instance_configuration = v_instance_configuration;
       target_repository = v_target_repository;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_target_repository then bnds
         else
           let arg =
             (yojson_of_list yojson_of_target_repository)
               v_target_repository
           in
           let bnd = "target_repository", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_instance_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_instance_configuration)
               v_instance_configuration
           in
           let bnd = "instance_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_component then bnds
         else
           let arg =
             (yojson_of_list yojson_of_component) v_component
           in
           let bnd = "component", arg in
           bnd :: bnds
       in
       let bnds =
         match v_working_directory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "working_directory", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
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
         match v_platform_override with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "platform_override", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent_image in
         ("parent_image", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
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
         match v_dockerfile_template_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dockerfile_template_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dockerfile_template_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dockerfile_template_data", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_type
         in
         ("container_type", arg) :: bnds
       in
       `Assoc bnds
    : aws_imagebuilder_container_recipe ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_imagebuilder_container_recipe

[@@@deriving.end]

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
    ?no_device ?virtual_name ?(ebs = []) () :
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
    ?(instance_configuration = []) ~container_type ~name
    ~parent_image ~version ~component ~target_repository () :
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
  tf_name : string;
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
    ?tags_all ?working_directory ?(instance_configuration = [])
    ~container_type ~name ~parent_image ~version ~component
    ~target_repository __id =
  let __type = "aws_imagebuilder_container_recipe" in
  let __attrs =
    ({
       tf_name = __id;
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
           ?working_directory ~instance_configuration ~container_type
           ~name ~parent_image ~version ~component ~target_repository
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?dockerfile_template_data
    ?dockerfile_template_uri ?id ?kms_key_id ?platform_override ?tags
    ?tags_all ?working_directory ?(instance_configuration = [])
    ~container_type ~name ~parent_image ~version ~component
    ~target_repository __id =
  let (r : _ Tf_core.resource) =
    make ?description ?dockerfile_template_data
      ?dockerfile_template_uri ?id ?kms_key_id ?platform_override
      ?tags ?tags_all ?working_directory ~instance_configuration
      ~container_type ~name ~parent_image ~version ~component
      ~target_repository __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
