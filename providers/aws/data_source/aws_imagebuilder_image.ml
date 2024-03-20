(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type image_scanning_configuration__ecr_configuration = {
  container_tags : string prop list;
  repository_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : image_scanning_configuration__ecr_configuration) -> ()

let yojson_of_image_scanning_configuration__ecr_configuration =
  (function
   | {
       container_tags = v_container_tags;
       repository_name = v_repository_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_repository_name
         in
         ("repository_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_container_tags
         in
         ("container_tags", arg) :: bnds
       in
       `Assoc bnds
    : image_scanning_configuration__ecr_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_image_scanning_configuration__ecr_configuration

[@@@deriving.end]

type image_scanning_configuration = {
  ecr_configuration :
    image_scanning_configuration__ecr_configuration list;
  image_scanning_enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : image_scanning_configuration) -> ()

let yojson_of_image_scanning_configuration =
  (function
   | {
       ecr_configuration = v_ecr_configuration;
       image_scanning_enabled = v_image_scanning_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_image_scanning_enabled
         in
         ("image_scanning_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_image_scanning_configuration__ecr_configuration
             v_ecr_configuration
         in
         ("ecr_configuration", arg) :: bnds
       in
       `Assoc bnds
    : image_scanning_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_image_scanning_configuration

[@@@deriving.end]

type image_tests_configuration = {
  image_tests_enabled : bool prop;
  timeout_minutes : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : image_tests_configuration) -> ()

let yojson_of_image_tests_configuration =
  (function
   | {
       image_tests_enabled = v_image_tests_enabled;
       timeout_minutes = v_timeout_minutes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_timeout_minutes
         in
         ("timeout_minutes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_image_tests_enabled
         in
         ("image_tests_enabled", arg) :: bnds
       in
       `Assoc bnds
    : image_tests_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_image_tests_configuration

[@@@deriving.end]

type output_resources__containers = {
  image_uris : string prop list;
  region : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output_resources__containers) -> ()

let yojson_of_output_resources__containers =
  (function
   | { image_uris = v_image_uris; region = v_region } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_image_uris
         in
         ("image_uris", arg) :: bnds
       in
       `Assoc bnds
    : output_resources__containers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output_resources__containers

[@@@deriving.end]

type output_resources__amis = {
  account_id : string prop;
  description : string prop;
  image : string prop;
  name : string prop;
  region : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output_resources__amis) -> ()

let yojson_of_output_resources__amis =
  (function
   | {
       account_id = v_account_id;
       description = v_description;
       image = v_image;
       name = v_name;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image in
         ("image", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : output_resources__amis -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output_resources__amis

[@@@deriving.end]

type output_resources = {
  amis : output_resources__amis list;
  containers : output_resources__containers list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output_resources) -> ()

let yojson_of_output_resources =
  (function
   | { amis = v_amis; containers = v_containers } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_output_resources__containers
             v_containers
         in
         ("containers", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_output_resources__amis v_amis
         in
         ("amis", arg) :: bnds
       in
       `Assoc bnds
    : output_resources -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output_resources

[@@@deriving.end]

type aws_imagebuilder_image = {
  arn : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_imagebuilder_image) -> ()

let yojson_of_aws_imagebuilder_image =
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
    : aws_imagebuilder_image -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_imagebuilder_image

[@@@deriving.end]

let aws_imagebuilder_image ?id ?tags ~arn () : aws_imagebuilder_image
    =
  { arn; id; tags }

type t = {
  arn : string prop;
  build_version_arn : string prop;
  container_recipe_arn : string prop;
  date_created : string prop;
  distribution_configuration_arn : string prop;
  enhanced_image_metadata_enabled : bool prop;
  id : string prop;
  image_recipe_arn : string prop;
  image_scanning_configuration :
    image_scanning_configuration list prop;
  image_tests_configuration : image_tests_configuration list prop;
  infrastructure_configuration_arn : string prop;
  name : string prop;
  os_version : string prop;
  output_resources : output_resources list prop;
  platform : string prop;
  tags : (string * string) list prop;
  version : string prop;
}

let make ?id ?tags ~arn __id =
  let __type = "aws_imagebuilder_image" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       build_version_arn =
         Prop.computed __type __id "build_version_arn";
       container_recipe_arn =
         Prop.computed __type __id "container_recipe_arn";
       date_created = Prop.computed __type __id "date_created";
       distribution_configuration_arn =
         Prop.computed __type __id "distribution_configuration_arn";
       enhanced_image_metadata_enabled =
         Prop.computed __type __id "enhanced_image_metadata_enabled";
       id = Prop.computed __type __id "id";
       image_recipe_arn =
         Prop.computed __type __id "image_recipe_arn";
       image_scanning_configuration =
         Prop.computed __type __id "image_scanning_configuration";
       image_tests_configuration =
         Prop.computed __type __id "image_tests_configuration";
       infrastructure_configuration_arn =
         Prop.computed __type __id "infrastructure_configuration_arn";
       name = Prop.computed __type __id "name";
       os_version = Prop.computed __type __id "os_version";
       output_resources =
         Prop.computed __type __id "output_resources";
       platform = Prop.computed __type __id "platform";
       tags = Prop.computed __type __id "tags";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_imagebuilder_image
        (aws_imagebuilder_image ?id ?tags ~arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~arn __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~arn __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
