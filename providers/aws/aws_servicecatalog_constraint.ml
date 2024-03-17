(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_servicecatalog_constraint__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_servicecatalog_constraint__timeouts *)

type aws_servicecatalog_constraint = {
  accept_language : string prop option; [@option]
      (** accept_language *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  parameters : string prop;  (** parameters *)
  portfolio_id : string prop;  (** portfolio_id *)
  product_id : string prop;  (** product_id *)
  type_ : string prop; [@key "type"]  (** type *)
  timeouts : aws_servicecatalog_constraint__timeouts option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_constraint *)

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

let aws_servicecatalog_constraint ?accept_language ?description ?id
    ?timeouts ~parameters ~portfolio_id ~product_id ~type_
    __resource_id =
  let __resource_type = "aws_servicecatalog_constraint" in
  let __resource =
    ({
       accept_language;
       description;
       id;
       parameters;
       portfolio_id;
       product_id;
       type_;
       timeouts;
     }
      : aws_servicecatalog_constraint)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_servicecatalog_constraint __resource);
  let __resource_attributes =
    ({
       accept_language =
         Prop.computed __resource_type __resource_id
           "accept_language";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       owner = Prop.computed __resource_type __resource_id "owner";
       parameters =
         Prop.computed __resource_type __resource_id "parameters";
       portfolio_id =
         Prop.computed __resource_type __resource_id "portfolio_id";
       product_id =
         Prop.computed __resource_type __resource_id "product_id";
       status = Prop.computed __resource_type __resource_id "status";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
