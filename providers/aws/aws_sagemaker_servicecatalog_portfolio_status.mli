(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_servicecatalog_portfolio_status
type t = private { id : string prop; status : string prop }

val aws_sagemaker_servicecatalog_portfolio_status :
  ?id:string prop -> status:string prop -> string -> t
