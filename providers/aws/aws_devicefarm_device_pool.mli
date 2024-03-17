(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_devicefarm_device_pool__rule
type aws_devicefarm_device_pool

type t = private {
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

val aws_devicefarm_device_pool :
  ?description:string prop ->
  ?id:string prop ->
  ?max_devices:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  project_arn:string prop ->
  rule:aws_devicefarm_device_pool__rule list ->
  string ->
  t
