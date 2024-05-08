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
  delete_on_termination : bool prop;
  encrypted : bool prop;
  iops : float prop;
  kms_key_id : string prop;
  snapshot_id : string prop;
  throughput : float prop;
  volume_size : float prop;
  volume_type : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_volume_type in
         ("volume_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_volume_size in
         ("volume_size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_throughput in
         ("throughput", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_snapshot_id in
         ("snapshot_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_id in
         ("kms_key_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_iops in
         ("iops", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_encrypted in
         ("encrypted", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_delete_on_termination
         in
         ("delete_on_termination", arg) :: bnds
       in
       `Assoc bnds
    : instance_configuration__block_device_mapping__ebs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_configuration__block_device_mapping__ebs

[@@@deriving.end]

type instance_configuration__block_device_mapping = {
  device_name : string prop;
  ebs : instance_configuration__block_device_mapping__ebs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  no_device : string prop;
  virtual_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_configuration__block_device_mapping) -> ()

let yojson_of_instance_configuration__block_device_mapping =
  (function
   | {
       device_name = v_device_name;
       ebs = v_ebs;
       no_device = v_no_device;
       virtual_name = v_virtual_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_virtual_name in
         ("virtual_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_no_device in
         ("no_device", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_device_name in
         ("device_name", arg) :: bnds
       in
       `Assoc bnds
    : instance_configuration__block_device_mapping ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_configuration__block_device_mapping

[@@@deriving.end]

type instance_configuration = {
  block_device_mapping :
    instance_configuration__block_device_mapping list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  image : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_configuration) -> ()

let yojson_of_instance_configuration =
  (function
   | {
       block_device_mapping = v_block_device_mapping;
       image = v_image;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image in
         ("image", arg) :: bnds
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
  arn : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_imagebuilder_container_recipe) -> ()

let yojson_of_aws_imagebuilder_container_recipe =
  (function
   | { arn = v_arn; id = v_id; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_imagebuilder_container_recipe ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_imagebuilder_container_recipe

[@@@deriving.end]

let aws_imagebuilder_container_recipe ?id ?tags ~arn () :
    aws_imagebuilder_container_recipe =
  { arn; id; tags }

type t = {
  tf_name : string;
  arn : string prop;
  component : component list prop;
  container_type : string prop;
  date_created : string prop;
  description : string prop;
  dockerfile_template_data : string prop;
  encrypted : bool prop;
  id : string prop;
  instance_configuration : instance_configuration list prop;
  kms_key_id : string prop;
  name : string prop;
  owner : string prop;
  parent_image : string prop;
  platform : string prop;
  tags : (string * string) list prop;
  target_repository : target_repository list prop;
  version : string prop;
  working_directory : string prop;
}

let make ?id ?tags ~arn __id =
  let __type = "aws_imagebuilder_container_recipe" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       component = Prop.computed __type __id "component";
       container_type = Prop.computed __type __id "container_type";
       date_created = Prop.computed __type __id "date_created";
       description = Prop.computed __type __id "description";
       dockerfile_template_data =
         Prop.computed __type __id "dockerfile_template_data";
       encrypted = Prop.computed __type __id "encrypted";
       id = Prop.computed __type __id "id";
       instance_configuration =
         Prop.computed __type __id "instance_configuration";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       name = Prop.computed __type __id "name";
       owner = Prop.computed __type __id "owner";
       parent_image = Prop.computed __type __id "parent_image";
       platform = Prop.computed __type __id "platform";
       tags = Prop.computed __type __id "tags";
       target_repository =
         Prop.computed __type __id "target_repository";
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
        (aws_imagebuilder_container_recipe ?id ?tags ~arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~arn __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~arn __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
