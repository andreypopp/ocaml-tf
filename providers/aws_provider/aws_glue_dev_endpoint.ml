(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glue_dev_endpoint = {
  arguments : (string * string prop) list option; [@option]
      (** arguments *)
  extra_jars_s3_path : string prop option; [@option]
      (** extra_jars_s3_path *)
  extra_python_libs_s3_path : string prop option; [@option]
      (** extra_python_libs_s3_path *)
  glue_version : string prop option; [@option]  (** glue_version *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  number_of_nodes : float prop option; [@option]
      (** number_of_nodes *)
  number_of_workers : float prop option; [@option]
      (** number_of_workers *)
  public_key : string prop option; [@option]  (** public_key *)
  public_keys : string prop list option; [@option]
      (** public_keys *)
  role_arn : string prop;  (** role_arn *)
  security_configuration : string prop option; [@option]
      (** security_configuration *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  worker_type : string prop option; [@option]  (** worker_type *)
}
[@@deriving yojson_of]
(** aws_glue_dev_endpoint *)

type t = {
  arguments : (string * string) list prop;
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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
  worker_type : string prop;
  yarn_endpoint_address : string prop;
  zeppelin_remote_spark_interpreter_port : float prop;
}

let aws_glue_dev_endpoint ?arguments ?extra_jars_s3_path
    ?extra_python_libs_s3_path ?glue_version ?id ?number_of_nodes
    ?number_of_workers ?public_key ?public_keys
    ?security_configuration ?security_group_ids ?subnet_id ?tags
    ?tags_all ?worker_type ~name ~role_arn __resource_id =
  let __resource_type = "aws_glue_dev_endpoint" in
  let __resource =
    ({
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
      : aws_glue_dev_endpoint)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_dev_endpoint __resource);
  let __resource_attributes =
    ({
       arguments =
         Prop.computed __resource_type __resource_id "arguments";
       arn = Prop.computed __resource_type __resource_id "arn";
       availability_zone =
         Prop.computed __resource_type __resource_id
           "availability_zone";
       extra_jars_s3_path =
         Prop.computed __resource_type __resource_id
           "extra_jars_s3_path";
       extra_python_libs_s3_path =
         Prop.computed __resource_type __resource_id
           "extra_python_libs_s3_path";
       failure_reason =
         Prop.computed __resource_type __resource_id "failure_reason";
       glue_version =
         Prop.computed __resource_type __resource_id "glue_version";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       number_of_nodes =
         Prop.computed __resource_type __resource_id
           "number_of_nodes";
       number_of_workers =
         Prop.computed __resource_type __resource_id
           "number_of_workers";
       private_address =
         Prop.computed __resource_type __resource_id
           "private_address";
       public_address =
         Prop.computed __resource_type __resource_id "public_address";
       public_key =
         Prop.computed __resource_type __resource_id "public_key";
       public_keys =
         Prop.computed __resource_type __resource_id "public_keys";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       security_configuration =
         Prop.computed __resource_type __resource_id
           "security_configuration";
       security_group_ids =
         Prop.computed __resource_type __resource_id
           "security_group_ids";
       status = Prop.computed __resource_type __resource_id "status";
       subnet_id =
         Prop.computed __resource_type __resource_id "subnet_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
       worker_type =
         Prop.computed __resource_type __resource_id "worker_type";
       yarn_endpoint_address =
         Prop.computed __resource_type __resource_id
           "yarn_endpoint_address";
       zeppelin_remote_spark_interpreter_port =
         Prop.computed __resource_type __resource_id
           "zeppelin_remote_spark_interpreter_port";
     }
      : t)
  in
  __resource_attributes
