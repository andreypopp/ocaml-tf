(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata = { creation_date : string prop  (** creation_date *) }
type properties

val properties : ?description:string prop -> unit -> properties

type aws_iot_billing_group

val aws_iot_billing_group :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?properties:properties list ->
  name:string prop ->
  unit ->
  aws_iot_billing_group

val yojson_of_aws_iot_billing_group : aws_iot_billing_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  metadata : metadata list prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  version : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?properties:properties list ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?properties:properties list ->
  name:string prop ->
  string ->
  t Tf_core.resource
