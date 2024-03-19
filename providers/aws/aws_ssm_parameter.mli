(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_ssm_parameter

val aws_ssm_parameter :
  ?allowed_pattern:string prop ->
  ?arn:string prop ->
  ?data_type:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?insecure_value:string prop ->
  ?key_id:string prop ->
  ?overwrite:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?tier:string prop ->
  ?value:string prop ->
  name:string prop ->
  type_:string prop ->
  unit ->
  aws_ssm_parameter

val yojson_of_aws_ssm_parameter : aws_ssm_parameter -> json

(** RESOURCE REGISTRATION *)

type t = private {
  allowed_pattern : string prop;
  arn : string prop;
  data_type : string prop;
  description : string prop;
  id : string prop;
  insecure_value : string prop;
  key_id : string prop;
  name : string prop;
  overwrite : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  tier : string prop;
  type_ : string prop;
  value : string prop;
  version : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?allowed_pattern:string prop ->
  ?arn:string prop ->
  ?data_type:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?insecure_value:string prop ->
  ?key_id:string prop ->
  ?overwrite:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?tier:string prop ->
  ?value:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t
