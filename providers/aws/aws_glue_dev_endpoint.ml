(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_glue_dev_endpoint = {
  arguments : string prop Tf_core.assoc option; [@option]
  extra_jars_s3_path : string prop option; [@option]
  extra_python_libs_s3_path : string prop option; [@option]
  glue_version : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  number_of_nodes : float prop option; [@option]
  number_of_workers : float prop option; [@option]
  public_key : string prop option; [@option]
  public_keys : string prop list option; [@option]
  role_arn : string prop;
  security_configuration : string prop option; [@option]
  security_group_ids : string prop list option; [@option]
  subnet_id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  worker_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_glue_dev_endpoint) -> ()

let yojson_of_aws_glue_dev_endpoint =
  (function
   | {
       arguments = v_arguments;
       extra_jars_s3_path = v_extra_jars_s3_path;
       extra_python_libs_s3_path = v_extra_python_libs_s3_path;
       glue_version = v_glue_version;
       id = v_id;
       name = v_name;
       number_of_nodes = v_number_of_nodes;
       number_of_workers = v_number_of_workers;
       public_key = v_public_key;
       public_keys = v_public_keys;
       role_arn = v_role_arn;
       security_configuration = v_security_configuration;
       security_group_ids = v_security_group_ids;
       subnet_id = v_subnet_id;
       tags = v_tags;
       tags_all = v_tags_all;
       worker_type = v_worker_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_worker_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "worker_type", arg in
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
         match v_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_group_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_configuration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "security_configuration", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_public_keys with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "public_keys", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_number_of_workers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "number_of_workers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_number_of_nodes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "number_of_nodes", arg in
             bnd :: bnds
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
         match v_glue_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "glue_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_extra_python_libs_s3_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "extra_python_libs_s3_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_extra_jars_s3_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "extra_jars_s3_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_arguments with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "arguments", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_glue_dev_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_glue_dev_endpoint

[@@@deriving.end]

let aws_glue_dev_endpoint ?arguments ?extra_jars_s3_path
    ?extra_python_libs_s3_path ?glue_version ?id ?number_of_nodes
    ?number_of_workers ?public_key ?public_keys
    ?security_configuration ?security_group_ids ?subnet_id ?tags
    ?tags_all ?worker_type ~name ~role_arn () : aws_glue_dev_endpoint
    =
  {
    arguments;
    extra_jars_s3_path;
    extra_python_libs_s3_path;
    glue_version;
    id;
    name;
    number_of_nodes;
    number_of_workers;
    public_key;
    public_keys;
    role_arn;
    security_configuration;
    security_group_ids;
    subnet_id;
    tags;
    tags_all;
    worker_type;
  }

type t = {
  tf_name : string;
  arguments : string Tf_core.assoc prop;
  arn : string prop;
  availability_zone : string prop;
  extra_jars_s3_path : string prop;
  extra_python_libs_s3_path : string prop;
  failure_reason : string prop;
  glue_version : string prop;
  id : string prop;
  name : string prop;
  number_of_nodes : float prop;
  number_of_workers : float prop;
  private_address : string prop;
  public_address : string prop;
  public_key : string prop;
  public_keys : string list prop;
  role_arn : string prop;
  security_configuration : string prop;
  security_group_ids : string list prop;
  status : string prop;
  subnet_id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  vpc_id : string prop;
  worker_type : string prop;
  yarn_endpoint_address : string prop;
  zeppelin_remote_spark_interpreter_port : float prop;
}

let make ?arguments ?extra_jars_s3_path ?extra_python_libs_s3_path
    ?glue_version ?id ?number_of_nodes ?number_of_workers ?public_key
    ?public_keys ?security_configuration ?security_group_ids
    ?subnet_id ?tags ?tags_all ?worker_type ~name ~role_arn __id =
  let __type = "aws_glue_dev_endpoint" in
  let __attrs =
    ({
       tf_name = __id;
       arguments = Prop.computed __type __id "arguments";
       arn = Prop.computed __type __id "arn";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       extra_jars_s3_path =
         Prop.computed __type __id "extra_jars_s3_path";
       extra_python_libs_s3_path =
         Prop.computed __type __id "extra_python_libs_s3_path";
       failure_reason = Prop.computed __type __id "failure_reason";
       glue_version = Prop.computed __type __id "glue_version";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       number_of_nodes = Prop.computed __type __id "number_of_nodes";
       number_of_workers =
         Prop.computed __type __id "number_of_workers";
       private_address = Prop.computed __type __id "private_address";
       public_address = Prop.computed __type __id "public_address";
       public_key = Prop.computed __type __id "public_key";
       public_keys = Prop.computed __type __id "public_keys";
       role_arn = Prop.computed __type __id "role_arn";
       security_configuration =
         Prop.computed __type __id "security_configuration";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       status = Prop.computed __type __id "status";
       subnet_id = Prop.computed __type __id "subnet_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_id = Prop.computed __type __id "vpc_id";
       worker_type = Prop.computed __type __id "worker_type";
       yarn_endpoint_address =
         Prop.computed __type __id "yarn_endpoint_address";
       zeppelin_remote_spark_interpreter_port =
         Prop.computed __type __id
           "zeppelin_remote_spark_interpreter_port";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_glue_dev_endpoint
        (aws_glue_dev_endpoint ?arguments ?extra_jars_s3_path
           ?extra_python_libs_s3_path ?glue_version ?id
           ?number_of_nodes ?number_of_workers ?public_key
           ?public_keys ?security_configuration ?security_group_ids
           ?subnet_id ?tags ?tags_all ?worker_type ~name ~role_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?arguments ?extra_jars_s3_path
    ?extra_python_libs_s3_path ?glue_version ?id ?number_of_nodes
    ?number_of_workers ?public_key ?public_keys
    ?security_configuration ?security_group_ids ?subnet_id ?tags
    ?tags_all ?worker_type ~name ~role_arn __id =
  let (r : _ Tf_core.resource) =
    make ?arguments ?extra_jars_s3_path ?extra_python_libs_s3_path
      ?glue_version ?id ?number_of_nodes ?number_of_workers
      ?public_key ?public_keys ?security_configuration
      ?security_group_ids ?subnet_id ?tags ?tags_all ?worker_type
      ~name ~role_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
