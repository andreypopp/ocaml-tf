(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_servicequotas_template_association

type t = private {
  id : string prop;
  skip_destroy : bool prop;
  status : string prop;
}

val aws_servicequotas_template_association :
  ?skip_destroy:bool prop -> string -> t
