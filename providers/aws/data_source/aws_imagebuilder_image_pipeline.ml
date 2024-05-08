(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type image_scanning_configuration__ecr_configuration = {
  container_tags : string prop list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_container_tags then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_container_tags
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
  ecr_configuration :
    image_scanning_configuration__ecr_configuration list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_ecr_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_image_scanning_configuration__ecr_configuration)
               v_ecr_configuration
           in
           let bnd = "ecr_configuration", arg in
           bnd :: bnds
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

type schedule = {
  pipeline_execution_start_condition : string prop;
  schedule_expression : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schedule) -> ()

let yojson_of_schedule =
  (function
   | {
       pipeline_execution_start_condition =
         v_pipeline_execution_start_condition;
       schedule_expression = v_schedule_expression;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_schedule_expression
         in
         ("schedule_expression", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_pipeline_execution_start_condition
         in
         ("pipeline_execution_start_condition", arg) :: bnds
       in
       `Assoc bnds
    : schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schedule

[@@@deriving.end]

type aws_imagebuilder_image_pipeline = {
  arn : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_imagebuilder_image_pipeline) -> ()

let yojson_of_aws_imagebuilder_image_pipeline =
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
    : aws_imagebuilder_image_pipeline ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_imagebuilder_image_pipeline

[@@@deriving.end]

let aws_imagebuilder_image_pipeline ?id ?tags ~arn () :
    aws_imagebuilder_image_pipeline =
  { arn; id; tags }

type t = {
  tf_name : string;
  arn : string prop;
  container_recipe_arn : string prop;
  date_created : string prop;
  date_last_run : string prop;
  date_next_run : string prop;
  date_updated : string prop;
  description : string prop;
  distribution_configuration_arn : string prop;
  enhanced_image_metadata_enabled : bool prop;
  id : string prop;
  image_recipe_arn : string prop;
  image_scanning_configuration :
    image_scanning_configuration list prop;
  image_tests_configuration : image_tests_configuration list prop;
  infrastructure_configuration_arn : string prop;
  name : string prop;
  platform : string prop;
  schedule : schedule list prop;
  status : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ~arn __id =
  let __type = "aws_imagebuilder_image_pipeline" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       container_recipe_arn =
         Prop.computed __type __id "container_recipe_arn";
       date_created = Prop.computed __type __id "date_created";
       date_last_run = Prop.computed __type __id "date_last_run";
       date_next_run = Prop.computed __type __id "date_next_run";
       date_updated = Prop.computed __type __id "date_updated";
       description = Prop.computed __type __id "description";
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
       platform = Prop.computed __type __id "platform";
       schedule = Prop.computed __type __id "schedule";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_imagebuilder_image_pipeline
        (aws_imagebuilder_image_pipeline ?id ?tags ~arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~arn __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~arn __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
