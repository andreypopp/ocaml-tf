(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cloud9_environment_ec2

val aws_cloud9_environment_ec2 :
  ?automatic_stop_time_minutes:float prop ->
  ?connection_type:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?owner_arn:string prop ->
  ?subnet_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  image_id:string prop ->
  instance_type:string prop ->
  name:string prop ->
  unit ->
  aws_cloud9_environment_ec2

val yojson_of_aws_cloud9_environment_ec2 :
  aws_cloud9_environment_ec2 -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  automatic_stop_time_minutes : float prop;
  connection_type : string prop;
  description : string prop;
  id : string prop;
  image_id : string prop;
  instance_type : string prop;
  name : string prop;
  owner_arn : string prop;
  subnet_id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?automatic_stop_time_minutes:float prop ->
  ?connection_type:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?owner_arn:string prop ->
  ?subnet_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  image_id:string prop ->
  instance_type:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?automatic_stop_time_minutes:float prop ->
  ?connection_type:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?owner_arn:string prop ->
  ?subnet_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  image_id:string prop ->
  instance_type:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
