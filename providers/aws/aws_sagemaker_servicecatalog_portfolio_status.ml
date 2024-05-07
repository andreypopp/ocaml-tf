(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sagemaker_servicecatalog_portfolio_status = {
  id : string prop option; [@option]
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sagemaker_servicecatalog_portfolio_status) -> ()

let yojson_of_aws_sagemaker_servicecatalog_portfolio_status =
  (function
   | { id = v_id; status = v_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_sagemaker_servicecatalog_portfolio_status ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sagemaker_servicecatalog_portfolio_status

[@@@deriving.end]

let aws_sagemaker_servicecatalog_portfolio_status ?id ~status () :
    aws_sagemaker_servicecatalog_portfolio_status =
  { id; status }

type t = { tf_name : string; id : string prop; status : string prop }

let make ?id ~status __id =
  let __type = "aws_sagemaker_servicecatalog_portfolio_status" in
  let __attrs =
    ({
       tf_name = __id;
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
