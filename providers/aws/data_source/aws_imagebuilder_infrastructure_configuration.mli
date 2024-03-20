(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type instance_metadata_options = {
  http_put_response_hop_limit : float prop;
      (** http_put_response_hop_limit *)
  http_tokens : string prop;  (** http_tokens *)
}

type logging__s3_logs = {
  s3_bucket_name : string prop;  (** s3_bucket_name *)
  s3_key_prefix : string prop;  (** s3_key_prefix *)
}

type logging = { s3_logs : logging__s3_logs list  (** s3_logs *) }
type aws_imagebuilder_infrastructure_configuration

val aws_imagebuilder_infrastructure_configuration :
  ?id:string prop ->
  ?resource_tags:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  arn:string prop ->
  unit ->
  aws_imagebuilder_infrastructure_configuration

val yojson_of_aws_imagebuilder_infrastructure_configuration :
  aws_imagebuilder_infrastructure_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  date_created : string prop;
  date_updated : string prop;
  description : string prop;
  id : string prop;
  instance_metadata_options : instance_metadata_options list prop;
  instance_profile_name : string prop;
  instance_types : string list prop;
  key_pair : string prop;
  logging : logging list prop;
  name : string prop;
  resource_tags : (string * string) list prop;
  security_group_ids : string list prop;
  sns_topic_arn : string prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  terminate_instance_on_failure : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?resource_tags:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?resource_tags:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  arn:string prop ->
  string ->
  t Tf_core.resource
