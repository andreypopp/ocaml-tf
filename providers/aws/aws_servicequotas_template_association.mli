(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_servicequotas_template_association

val aws_servicequotas_template_association :
  ?skip_destroy:bool prop ->
  unit ->
  aws_servicequotas_template_association

val yojson_of_aws_servicequotas_template_association :
  aws_servicequotas_template_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  skip_destroy : bool prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module -> ?skip_destroy:bool prop -> string -> t
