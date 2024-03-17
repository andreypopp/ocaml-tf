(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_servicecatalog_portfolio_status = {
  id : string prop option; [@option]  (** id *)
  status : string prop;  (** status *)
}
[@@deriving yojson_of]
(** aws_sagemaker_servicecatalog_portfolio_status *)

type t = { id : string prop; status : string prop }

let aws_sagemaker_servicecatalog_portfolio_status ?id ~status
    __resource_id =
  let __resource_type =
    "aws_sagemaker_servicecatalog_portfolio_status"
  in
  let __resource =
    ({ id; status } : aws_sagemaker_servicecatalog_portfolio_status)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_servicecatalog_portfolio_status
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       status = Prop.computed __resource_type __resource_id "status";
     }
      : t)
  in
  __resource_attributes
