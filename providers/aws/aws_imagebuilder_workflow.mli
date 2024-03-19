(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_imagebuilder_workflow

val aws_imagebuilder_workflow :
  ?change_description:string prop ->
  ?data:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
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
  arn : string prop;
  change_description : string prop;
  data : string prop;
  date_created : string prop;
  description : string prop;
  id : string prop;
  kms_key_id : string prop;
  name : string prop;
  owner : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?uri:string prop ->
  name:string prop ->
  type_:string prop ->
  version:string prop ->
  string ->
  t
