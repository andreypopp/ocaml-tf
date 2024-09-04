(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_glue_dev_endpoint

val aws_glue_dev_endpoint :
  ?arguments:string prop Tf_core.assoc ->
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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?worker_type:string prop ->
  name:string prop ->
  role_arn:string prop ->
  unit ->
  aws_glue_dev_endpoint

val yojson_of_aws_glue_dev_endpoint : aws_glue_dev_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?arguments:string prop Tf_core.assoc ->
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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?worker_type:string prop ->
  name:string prop ->
  role_arn:string prop ->
  string ->
  t

val make :
  ?arguments:string prop Tf_core.assoc ->
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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?worker_type:string prop ->
  name:string prop ->
  role_arn:string prop ->
  string ->
  t Tf_core.resource
