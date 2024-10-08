(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_imagebuilder_component

val aws_imagebuilder_component :
  ?change_description:string prop ->
  ?data:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?skip_destroy:bool prop ->
  ?supported_os_versions:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?uri:string prop ->
  name:string prop ->
  platform:string prop ->
  version:string prop ->
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
  skip_destroy : bool prop;
  supported_os_versions : string list prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  type_ : string prop;
  uri : string prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?change_description:string prop ->
  ?data:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?skip_destroy:bool prop ->
  ?supported_os_versions:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?uri:string prop ->
  name:string prop ->
  platform:string prop ->
  version:string prop ->
  string ->
  t

val make :
  ?change_description:string prop ->
  ?data:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?skip_destroy:bool prop ->
  ?supported_os_versions:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?uri:string prop ->
  name:string prop ->
  platform:string prop ->
  version:string prop ->
  string ->
  t Tf_core.resource
