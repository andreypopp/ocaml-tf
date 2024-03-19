(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?accept_language ?id ?principal_type
    ?timeouts ~portfolio_id ~principal_arn __resource_id =
  let __resource_type =
    "aws_servicecatalog_principal_portfolio_association"
  in
  let __resource =
    aws_servicecatalog_principal_portfolio_association
      ?accept_language ?id ?principal_type ?timeouts ~portfolio_id
      ~principal_arn ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_servicecatalog_principal_portfolio_association
       __resource);
  let __resource_attributes =
    ({
       accept_language =
         Prop.computed __resource_type __resource_id
           "accept_language";
       id = Prop.computed __resource_type __resource_id "id";
       portfolio_id =
         Prop.computed __resource_type __resource_id "portfolio_id";
       principal_arn =
         Prop.computed __resource_type __resource_id "principal_arn";
       principal_type =
         Prop.computed __resource_type __resource_id "principal_type";
     }
      : t)
  in
  __resource_attributes
