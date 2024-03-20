(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_servicecatalog_constraint = {
  accept_language : string prop option; [@option]
      (** accept_language *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  parameters : string prop;  (** parameters *)
  portfolio_id : string prop;  (** portfolio_id *)
  product_id : string prop;  (** product_id *)
  type_ : string prop; [@key "type"]  (** type *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_constraint *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let aws_servicecatalog_constraint ?accept_language ?description ?id
    ?timeouts ~parameters ~portfolio_id ~product_id ~type_ () :
    aws_servicecatalog_constraint =
  {
    accept_language;
    description;
    id;
    parameters;
    portfolio_id;
    product_id;
    type_;
    timeouts;
  }

type t = {
  accept_language : string prop;
  description : string prop;
  id : string prop;
  owner : string prop;
  parameters : string prop;
  portfolio_id : string prop;
  product_id : string prop;
  status : string prop;
  type_ : string prop;
}

let make ?accept_language ?description ?id ?timeouts ~parameters
    ~portfolio_id ~product_id ~type_ __id =
  let __type = "aws_servicecatalog_constraint" in
  let __attrs =
    ({
       accept_language = Prop.computed __type __id "accept_language";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       owner = Prop.computed __type __id "owner";
       parameters = Prop.computed __type __id "parameters";
       portfolio_id = Prop.computed __type __id "portfolio_id";
       product_id = Prop.computed __type __id "product_id";
       status = Prop.computed __type __id "status";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_servicecatalog_constraint
        (aws_servicecatalog_constraint ?accept_language ?description
           ?id ?timeouts ~parameters ~portfolio_id ~product_id ~type_
           ());
    attrs = __attrs;
  }

let register ?tf_module ?accept_language ?description ?id ?timeouts
    ~parameters ~portfolio_id ~product_id ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?accept_language ?description ?id ?timeouts ~parameters
      ~portfolio_id ~product_id ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
