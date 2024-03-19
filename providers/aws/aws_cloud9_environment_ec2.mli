(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_cloud9_environment_ec2

val aws_cloud9_environment_ec2 :
  ?automatic_stop_time_minutes:float prop ->
  ?connection_type:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?owner_arn:string prop ->
  ?subnet_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  image_id:string prop ->
  instance_type:string prop ->
  name:string prop ->
  unit ->
  aws_cloud9_environment_ec2

val yojson_of_aws_cloud9_environment_ec2 :
  aws_cloud9_environment_ec2 -> json

(** RESOURCE REGISTRATION *)

type t = private {
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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  image_id:string prop ->
  instance_type:string prop ->
  name:string prop ->
  string ->
  t
