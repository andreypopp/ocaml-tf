(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_dev_endpoint

type t = private {
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

val aws_glue_dev_endpoint :
  ?arguments:(string * string prop) list ->
  ?extra_jars_s3_path:string prop ->
  ?extra_python_libs_s3_path:string prop ->
  ?glue_version:string prop ->
  ?id:string prop ->
  ?number_of_nodes:float prop ->
  ?number_of_workers:float prop ->
  ?public_key:string prop ->
  ?public_keys:string prop list ->
  ?security_configuration:string prop ->
  ?security_group_ids:string prop list ->
  ?subnet_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?worker_type:string prop ->
  name:string prop ->
  role_arn:string prop ->
  string ->
  t
