(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type metadata = { creation_date : string prop  (** creation_date *) }
type properties

val properties : ?description:string prop -> unit -> properties

type aws_iot_billing_group

val aws_iot_billing_group :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  properties:properties list ->
  unit ->
  aws_iot_billing_group

val yojson_of_aws_iot_billing_group : aws_iot_billing_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  metadata : metadata list prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  properties:properties list ->
  string ->
  t
