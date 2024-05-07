(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type block_device_mapping__ebs = {
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

let _ = fun (_ : block_device_mapping__ebs) -> ()

let yojson_of_block_device_mapping__ebs =
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
    : block_device_mapping__ebs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_block_device_mapping__ebs

[@@@deriving.end]

type block_device_mapping = {
  device_name : string prop option; [@option]
  no_device : bool prop option; [@option]
  virtual_name : string prop option; [@option]
  ebs : block_device_mapping__ebs list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : block_device_mapping) -> ()

let yojson_of_block_device_mapping =
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
         let arg =
           yojson_of_list yojson_of_block_device_mapping__ebs v_ebs
         in
         ("ebs", arg) :: bnds
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
    : block_device_mapping -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_block_device_mapping

[@@@deriving.end]

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
         let arg =
           yojson_of_list yojson_of_component__parameter v_parameter
         in
         ("parameter", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_component_arn in
         ("component_arn", arg) :: bnds
       in
       `Assoc bnds
    : component -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_component

[@@@deriving.end]

type systems_manager_agent = { uninstall_after_build : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : systems_manager_agent) -> ()

let yojson_of_systems_manager_agent =
  (function
   | { uninstall_after_build = v_uninstall_after_build } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_uninstall_after_build
         in
         ("uninstall_after_build", arg) :: bnds
       in
       `Assoc bnds
    : systems_manager_agent -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_systems_manager_agent

[@@@deriving.end]

type aws_imagebuilder_image_recipe = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  parent_image : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  user_data_base64 : string prop option; [@option]
  version : string prop;
  working_directory : string prop option; [@option]
  block_device_mapping : block_device_mapping list;
  component : component list;
  systems_manager_agent : systems_manager_agent list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_imagebuilder_image_recipe) -> ()

let yojson_of_aws_imagebuilder_image_recipe =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       parent_image = v_parent_image;
       tags = v_tags;
       tags_all = v_tags_all;
       user_data_base64 = v_user_data_base64;
       version = v_version;
       working_directory = v_working_directory;
       block_device_mapping = v_block_device_mapping;
       component = v_component;
       systems_manager_agent = v_systems_manager_agent;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_systems_manager_agent
             v_systems_manager_agent
         in
         ("systems_manager_agent", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_component v_component in
         ("component", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_block_device_mapping
             v_block_device_mapping
         in
         ("block_device_mapping", arg) :: bnds
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
         match v_user_data_base64 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_data_base64", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_parent_image in
         ("parent_image", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_imagebuilder_image_recipe ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_imagebuilder_image_recipe

[@@@deriving.end]

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

let block_device_mapping ?device_name ?no_device ?virtual_name
    ?(ebs = []) () : block_device_mapping =
  { device_name; no_device; virtual_name; ebs }

let component__parameter ~name ~value () : component__parameter =
  { name; value }

let component ~component_arn ~parameter () : component =
  { component_arn; parameter }

let systems_manager_agent ~uninstall_after_build () :
    systems_manager_agent =
  { uninstall_after_build }

let aws_imagebuilder_image_recipe ?description ?id ?tags ?tags_all
    ?user_data_base64 ?working_directory
    ?(systems_manager_agent = []) ~name ~parent_image ~version
    ~block_device_mapping ~component () :
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
  tf_name : string;
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
    ?working_directory ?(systems_manager_agent = []) ~name
    ~parent_image ~version ~block_device_mapping ~component __id =
  let __type = "aws_imagebuilder_image_recipe" in
  let __attrs =
    ({
       tf_name = __id;
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
           ?tags_all ?user_data_base64 ?working_directory
           ~systems_manager_agent ~name ~parent_image ~version
           ~block_device_mapping ~component ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all
    ?user_data_base64 ?working_directory
    ?(systems_manager_agent = []) ~name ~parent_image ~version
    ~block_device_mapping ~component __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ?user_data_base64
      ?working_directory ~systems_manager_agent ~name ~parent_image
      ~version ~block_device_mapping ~component __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
