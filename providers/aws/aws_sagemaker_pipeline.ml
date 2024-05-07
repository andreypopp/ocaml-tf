(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type parallelism_configuration = {
  max_parallel_execution_steps : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : parallelism_configuration) -> ()

let yojson_of_parallelism_configuration =
  (function
   | {
       max_parallel_execution_steps = v_max_parallel_execution_steps;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_max_parallel_execution_steps
         in
         ("max_parallel_execution_steps", arg) :: bnds
       in
       `Assoc bnds
    : parallelism_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_parallelism_configuration

[@@@deriving.end]

type pipeline_definition_s3_location = {
  bucket : string prop;
  object_key : string prop;
  version_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pipeline_definition_s3_location) -> ()

let yojson_of_pipeline_definition_s3_location =
  (function
   | {
       bucket = v_bucket;
       object_key = v_object_key;
       version_id = v_version_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_key in
         ("object_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : pipeline_definition_s3_location ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pipeline_definition_s3_location

[@@@deriving.end]

type aws_sagemaker_pipeline = {
  id : string prop option; [@option]
  pipeline_definition : string prop option; [@option]
  pipeline_description : string prop option; [@option]
  pipeline_display_name : string prop;
  pipeline_name : string prop;
  role_arn : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  parallelism_configuration : parallelism_configuration list;
  pipeline_definition_s3_location :
    pipeline_definition_s3_location list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sagemaker_pipeline) -> ()

let yojson_of_aws_sagemaker_pipeline =
  (function
   | {
       id = v_id;
       pipeline_definition = v_pipeline_definition;
       pipeline_description = v_pipeline_description;
       pipeline_display_name = v_pipeline_display_name;
       pipeline_name = v_pipeline_name;
       role_arn = v_role_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       parallelism_configuration = v_parallelism_configuration;
       pipeline_definition_s3_location =
         v_pipeline_definition_s3_location;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_pipeline_definition_s3_location
             v_pipeline_definition_s3_location
         in
         ("pipeline_definition_s3_location", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_parallelism_configuration
             v_parallelism_configuration
         in
         ("parallelism_configuration", arg) :: bnds
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
         match v_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pipeline_name in
         ("pipeline_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_pipeline_display_name
         in
         ("pipeline_display_name", arg) :: bnds
       in
       let bnds =
         match v_pipeline_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pipeline_description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pipeline_definition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pipeline_definition", arg in
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
       `Assoc bnds
    : aws_sagemaker_pipeline -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sagemaker_pipeline

[@@@deriving.end]

let parallelism_configuration ~max_parallel_execution_steps () :
    parallelism_configuration =
  { max_parallel_execution_steps }

let pipeline_definition_s3_location ?version_id ~bucket ~object_key
    () : pipeline_definition_s3_location =
  { bucket; object_key; version_id }

let aws_sagemaker_pipeline ?id ?pipeline_definition
    ?pipeline_description ?role_arn ?tags ?tags_all
    ?(parallelism_configuration = [])
    ?(pipeline_definition_s3_location = []) ~pipeline_display_name
    ~pipeline_name () : aws_sagemaker_pipeline =
  {
    id;
    pipeline_definition;
    pipeline_description;
    pipeline_display_name;
    pipeline_name;
    role_arn;
    tags;
    tags_all;
    parallelism_configuration;
    pipeline_definition_s3_location;
  }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  pipeline_definition : string prop;
  pipeline_description : string prop;
  pipeline_display_name : string prop;
  pipeline_name : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?pipeline_definition ?pipeline_description ?role_arn
    ?tags ?tags_all ?(parallelism_configuration = [])
    ?(pipeline_definition_s3_location = []) ~pipeline_display_name
    ~pipeline_name __id =
  let __type = "aws_sagemaker_pipeline" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       pipeline_definition =
         Prop.computed __type __id "pipeline_definition";
       pipeline_description =
         Prop.computed __type __id "pipeline_description";
       pipeline_display_name =
         Prop.computed __type __id "pipeline_display_name";
       pipeline_name = Prop.computed __type __id "pipeline_name";
       role_arn = Prop.computed __type __id "role_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_pipeline
        (aws_sagemaker_pipeline ?id ?pipeline_definition
           ?pipeline_description ?role_arn ?tags ?tags_all
           ~parallelism_configuration
           ~pipeline_definition_s3_location ~pipeline_display_name
           ~pipeline_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?pipeline_definition
    ?pipeline_description ?role_arn ?tags ?tags_all
    ?(parallelism_configuration = [])
    ?(pipeline_definition_s3_location = []) ~pipeline_display_name
    ~pipeline_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?pipeline_definition ?pipeline_description ?role_arn
      ?tags ?tags_all ~parallelism_configuration
      ~pipeline_definition_s3_location ~pipeline_display_name
      ~pipeline_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
