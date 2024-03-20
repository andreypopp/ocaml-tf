(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sagemaker_servicecatalog_portfolio_status = {
  id : string prop option; [@option]  (** id *)
  status : string prop;  (** status *)
}
[@@deriving yojson_of]
(** aws_sagemaker_servicecatalog_portfolio_status *)

let aws_sagemaker_servicecatalog_portfolio_status ?id ~status () :
    aws_sagemaker_servicecatalog_portfolio_status =
  { id; status }

type t = { id : string prop; status : string prop }

let make ?id ~status __id =
  let __type = "aws_sagemaker_servicecatalog_portfolio_status" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_servicecatalog_portfolio_status
        (aws_sagemaker_servicecatalog_portfolio_status ?id ~status ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~status __id =
  let (r : _ Tf_core.resource) = make ?id ~status __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
