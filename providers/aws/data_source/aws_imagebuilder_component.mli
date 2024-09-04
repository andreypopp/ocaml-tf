(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_imagebuilder_component

val aws_imagebuilder_component :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  arn:string prop ->
  unit ->
  aws_imagebuilder_component

val yojson_of_aws_imagebuilder_component :
  aws_imagebuilder_component -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  change_description : string prop;
  data : string prop;
  date_created : string prop;
  description : string prop;
  encrypted : bool prop;
  id : string prop;
  kms_key_id : string prop;
  name : string prop;
  owner : string prop;
  platform : string prop;
  supported_os_versions : string list prop;
  tags : string Tf_core.assoc prop;
  type_ : string prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  arn:string prop ->
  string ->
  t Tf_core.resource
