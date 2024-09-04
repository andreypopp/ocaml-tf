(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_imagebuilder_workflow

val aws_imagebuilder_workflow :
  ?change_description:string prop ->
  ?data:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?uri:string prop ->
  name:string prop ->
  type_:string prop ->
  version:string prop ->
  unit ->
  aws_imagebuilder_workflow

val yojson_of_aws_imagebuilder_workflow :
  aws_imagebuilder_workflow -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  change_description : string prop;
  data : string prop;
  date_created : string prop;
  description : string prop;
  id : string prop;
  kms_key_id : string prop;
  name : string prop;
  owner : string prop;
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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?uri:string prop ->
  name:string prop ->
  type_:string prop ->
  version:string prop ->
  string ->
  t

val make :
  ?change_description:string prop ->
  ?data:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?uri:string prop ->
  name:string prop ->
  type_:string prop ->
  version:string prop ->
  string ->
  t Tf_core.resource
