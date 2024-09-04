(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type image_scanning_configuration__ecr_configuration = {
  container_tags : string prop list option; [@option]
  repository_name : string prop option; [@option]
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
         match v_repository_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repository_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "container_tags", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : image_scanning_configuration__ecr_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_image_scanning_configuration__ecr_configuration

[@@@deriving.end]

type image_scanning_configuration = {
  image_scanning_enabled : bool prop option; [@option]
  ecr_configuration :
    image_scanning_configuration__ecr_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : image_scanning_configuration) -> ()

let yojson_of_image_scanning_configuration =
  (function
   | {
       image_scanning_enabled = v_image_scanning_enabled;
       ecr_configuration = v_ecr_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ecr_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_image_scanning_configuration__ecr_configuration)
               v_ecr_configuration
           in
           let bnd = "ecr_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_image_scanning_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "image_scanning_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : image_scanning_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_image_scanning_configuration

[@@@deriving.end]

type image_tests_configuration = {
  image_tests_enabled : bool prop option; [@option]
  timeout_minutes : float prop option; [@option]
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
         match v_timeout_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_tests_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "image_tests_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : image_tests_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_image_tests_configuration

[@@@deriving.end]

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type workflow__parameter = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : workflow__parameter) -> ()

let yojson_of_workflow__parameter =
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
    : workflow__parameter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_workflow__parameter

[@@@deriving.end]

type workflow = {
  on_failure : string prop option; [@option]
  parallel_group : string prop option; [@option]
  workflow_arn : string prop;
  parameter : workflow__parameter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : workflow) -> ()

let yojson_of_workflow =
  (function
   | {
       on_failure = v_on_failure;
       parallel_group = v_parallel_group;
       workflow_arn = v_workflow_arn;
       parameter = v_parameter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_parameter then bnds
         else
           let arg =
             (yojson_of_list yojson_of_workflow__parameter)
               v_parameter
           in
           let bnd = "parameter", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_workflow_arn in
         ("workflow_arn", arg) :: bnds
       in
       let bnds =
         match v_parallel_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parallel_group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_on_failure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "on_failure", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : workflow -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_workflow

[@@@deriving.end]

type output_resources__containers = {
  image_uris : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_image_uris then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_image_uris
           in
           let bnd = "image_uris", arg in
           bnd :: bnds
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
      [@default []] [@yojson_drop_default Stdlib.( = )]
  containers : output_resources__containers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_containers then bnds
         else
           let arg =
             (yojson_of_list yojson_of_output_resources__containers)
               v_containers
           in
           let bnd = "containers", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_amis then bnds
         else
           let arg =
             (yojson_of_list yojson_of_output_resources__amis) v_amis
           in
           let bnd = "amis", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : output_resources -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output_resources

[@@@deriving.end]

type aws_imagebuilder_image = {
  container_recipe_arn : string prop option; [@option]
  distribution_configuration_arn : string prop option; [@option]
  enhanced_image_metadata_enabled : bool prop option; [@option]
  execution_role : string prop option; [@option]
  id : string prop option; [@option]
  image_recipe_arn : string prop option; [@option]
  infrastructure_configuration_arn : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  image_scanning_configuration : image_scanning_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  image_tests_configuration : image_tests_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  workflow : workflow list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_imagebuilder_image) -> ()

let yojson_of_aws_imagebuilder_image =
  (function
   | {
       container_recipe_arn = v_container_recipe_arn;
       distribution_configuration_arn =
         v_distribution_configuration_arn;
       enhanced_image_metadata_enabled =
         v_enhanced_image_metadata_enabled;
       execution_role = v_execution_role;
       id = v_id;
       image_recipe_arn = v_image_recipe_arn;
       infrastructure_configuration_arn =
         v_infrastructure_configuration_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       image_scanning_configuration = v_image_scanning_configuration;
       image_tests_configuration = v_image_tests_configuration;
       timeouts = v_timeouts;
       workflow = v_workflow;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_workflow then bnds
         else
           let arg =
             (yojson_of_list yojson_of_workflow) v_workflow
           in
           let bnd = "workflow", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_image_tests_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_image_tests_configuration)
               v_image_tests_configuration
           in
           let bnd = "image_tests_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_image_scanning_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_image_scanning_configuration)
               v_image_scanning_configuration
           in
           let bnd = "image_scanning_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_infrastructure_configuration_arn
         in
         ("infrastructure_configuration_arn", arg) :: bnds
       in
       let bnds =
         match v_image_recipe_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_recipe_arn", arg in
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
         match v_execution_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "execution_role", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enhanced_image_metadata_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enhanced_image_metadata_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_distribution_configuration_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "distribution_configuration_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_recipe_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "container_recipe_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_imagebuilder_image -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_imagebuilder_image

[@@@deriving.end]

let image_scanning_configuration__ecr_configuration ?container_tags
    ?repository_name () :
    image_scanning_configuration__ecr_configuration =
  { container_tags; repository_name }

let image_scanning_configuration ?image_scanning_enabled
    ?(ecr_configuration = []) () : image_scanning_configuration =
  { image_scanning_enabled; ecr_configuration }

let image_tests_configuration ?image_tests_enabled ?timeout_minutes
    () : image_tests_configuration =
  { image_tests_enabled; timeout_minutes }

let timeouts ?create () : timeouts = { create }

let workflow__parameter ~name ~value () : workflow__parameter =
  { name; value }

let workflow ?on_failure ?parallel_group ~workflow_arn ~parameter ()
    : workflow =
  { on_failure; parallel_group; workflow_arn; parameter }

let aws_imagebuilder_image ?container_recipe_arn
    ?distribution_configuration_arn ?enhanced_image_metadata_enabled
    ?execution_role ?id ?image_recipe_arn ?tags ?tags_all
    ?(image_scanning_configuration = [])
    ?(image_tests_configuration = []) ?timeouts
    ~infrastructure_configuration_arn ~workflow () :
    aws_imagebuilder_image =
  {
    container_recipe_arn;
    distribution_configuration_arn;
    enhanced_image_metadata_enabled;
    execution_role;
    id;
    image_recipe_arn;
    infrastructure_configuration_arn;
    tags;
    tags_all;
    image_scanning_configuration;
    image_tests_configuration;
    timeouts;
    workflow;
  }

type t = {
  tf_name : string;
  arn : string prop;
  container_recipe_arn : string prop;
  date_created : string prop;
  distribution_configuration_arn : string prop;
  enhanced_image_metadata_enabled : bool prop;
  execution_role : string prop;
  id : string prop;
  image_recipe_arn : string prop;
  infrastructure_configuration_arn : string prop;
  name : string prop;
  os_version : string prop;
  output_resources : output_resources list prop;
  platform : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  version : string prop;
}

let make ?container_recipe_arn ?distribution_configuration_arn
    ?enhanced_image_metadata_enabled ?execution_role ?id
    ?image_recipe_arn ?tags ?tags_all
    ?(image_scanning_configuration = [])
    ?(image_tests_configuration = []) ?timeouts
    ~infrastructure_configuration_arn ~workflow __id =
  let __type = "aws_imagebuilder_image" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       container_recipe_arn =
         Prop.computed __type __id "container_recipe_arn";
       date_created = Prop.computed __type __id "date_created";
       distribution_configuration_arn =
         Prop.computed __type __id "distribution_configuration_arn";
       enhanced_image_metadata_enabled =
         Prop.computed __type __id "enhanced_image_metadata_enabled";
       execution_role = Prop.computed __type __id "execution_role";
       id = Prop.computed __type __id "id";
       image_recipe_arn =
         Prop.computed __type __id "image_recipe_arn";
       infrastructure_configuration_arn =
         Prop.computed __type __id "infrastructure_configuration_arn";
       name = Prop.computed __type __id "name";
       os_version = Prop.computed __type __id "os_version";
       output_resources =
         Prop.computed __type __id "output_resources";
       platform = Prop.computed __type __id "platform";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_imagebuilder_image
        (aws_imagebuilder_image ?container_recipe_arn
           ?distribution_configuration_arn
           ?enhanced_image_metadata_enabled ?execution_role ?id
           ?image_recipe_arn ?tags ?tags_all
           ~image_scanning_configuration ~image_tests_configuration
           ?timeouts ~infrastructure_configuration_arn ~workflow ());
    attrs = __attrs;
  }

let register ?tf_module ?container_recipe_arn
    ?distribution_configuration_arn ?enhanced_image_metadata_enabled
    ?execution_role ?id ?image_recipe_arn ?tags ?tags_all
    ?(image_scanning_configuration = [])
    ?(image_tests_configuration = []) ?timeouts
    ~infrastructure_configuration_arn ~workflow __id =
  let (r : _ Tf_core.resource) =
    make ?container_recipe_arn ?distribution_configuration_arn
      ?enhanced_image_metadata_enabled ?execution_role ?id
      ?image_recipe_arn ?tags ?tags_all ~image_scanning_configuration
      ~image_tests_configuration ?timeouts
      ~infrastructure_configuration_arn ~workflow __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
