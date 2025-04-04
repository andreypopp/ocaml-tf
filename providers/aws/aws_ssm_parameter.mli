(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?tier:string prop ->
  ?value:string prop ->
  name:string prop ->
  type_:string prop ->
  unit ->
  aws_ssm_parameter

val yojson_of_aws_ssm_parameter : aws_ssm_parameter -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allowed_pattern : string prop;
  arn : string prop;
  data_type : string prop;
  description : string prop;
  id : string prop;
  insecure_value : string prop;
  key_id : string prop;
  name : string prop;
  overwrite : bool prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?tier:string prop ->
  ?value:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?allowed_pattern:string prop ->
  ?arn:string prop ->
  ?data_type:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?insecure_value:string prop ->
  ?key_id:string prop ->
  ?overwrite:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?tier:string prop ->
  ?value:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
