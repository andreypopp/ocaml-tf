(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_servicecatalog_principal_portfolio_association = {
  accept_language : string prop option; [@option]
      (** accept_language *)
  id : string prop option; [@option]  (** id *)
  portfolio_id : string prop;  (** portfolio_id *)
  principal_arn : string prop;  (** principal_arn *)
  principal_type : string prop option; [@option]
      (** principal_type *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_principal_portfolio_association *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let aws_servicecatalog_principal_portfolio_association
    ?accept_language ?id ?principal_type ?timeouts ~portfolio_id
    ~principal_arn () :
    aws_servicecatalog_principal_portfolio_association =
  {
    accept_language;
    id;
    portfolio_id;
    principal_arn;
    principal_type;
    timeouts;
  }

type t = {
  accept_language : string prop;
  id : string prop;
  portfolio_id : string prop;
  principal_arn : string prop;
  principal_type : string prop;
}

let make ?accept_language ?id ?principal_type ?timeouts ~portfolio_id
    ~principal_arn __id =
  let __type =
    "aws_servicecatalog_principal_portfolio_association"
  in
  let __attrs =
    ({
       accept_language = Prop.computed __type __id "accept_language";
       id = Prop.computed __type __id "id";
       portfolio_id = Prop.computed __type __id "portfolio_id";
       principal_arn = Prop.computed __type __id "principal_arn";
       principal_type = Prop.computed __type __id "principal_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_servicecatalog_principal_portfolio_association
        (aws_servicecatalog_principal_portfolio_association
           ?accept_language ?id ?principal_type ?timeouts
           ~portfolio_id ~principal_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?accept_language ?id ?principal_type
    ?timeouts ~portfolio_id ~principal_arn __id =
  let (r : _ Tf_core.resource) =
    make ?accept_language ?id ?principal_type ?timeouts ~portfolio_id
      ~principal_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
