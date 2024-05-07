(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type rule

val rule :
  ?attribute:string prop ->
  ?operator:string prop ->
  ?value:string prop ->
  unit ->
  rule

type aws_devicefarm_device_pool

val aws_devicefarm_device_pool :
  ?description:string prop ->
  ?id:string prop ->
  ?max_devices:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  project_arn:string prop ->
  rule:rule list ->
  unit ->
  aws_devicefarm_device_pool

val yojson_of_aws_devicefarm_device_pool :
  aws_devicefarm_device_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  max_devices : float prop;
  name : string prop;
  project_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?max_devices:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  project_arn:string prop ->
  rule:rule list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?max_devices:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  project_arn:string prop ->
  rule:rule list ->
  string ->
  t Tf_core.resource
