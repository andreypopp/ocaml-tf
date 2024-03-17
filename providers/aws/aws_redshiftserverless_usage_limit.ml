(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshiftserverless_usage_limit = {
  amount : float prop;  (** amount *)
  breach_action : string prop option; [@option]  (** breach_action *)
  id : string prop option; [@option]  (** id *)
  period : string prop option; [@option]  (** period *)
  resource_arn : string prop;  (** resource_arn *)
  usage_type : string prop;  (** usage_type *)
}
[@@deriving yojson_of]
(** aws_redshiftserverless_usage_limit *)

type t = {
  amount : float prop;
  arn : string prop;
  breach_action : string prop;
  id : string prop;
  period : string prop;
  resource_arn : string prop;
  usage_type : string prop;
}

let aws_redshiftserverless_usage_limit ?breach_action ?id ?period
    ~amount ~resource_arn ~usage_type __resource_id =
  let __resource_type = "aws_redshiftserverless_usage_limit" in
  let __resource =
    ({ amount; breach_action; id; period; resource_arn; usage_type }
      : aws_redshiftserverless_usage_limit)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshiftserverless_usage_limit __resource);
  let __resource_attributes =
    ({
       amount = Prop.computed __resource_type __resource_id "amount";
       arn = Prop.computed __resource_type __resource_id "arn";
       breach_action =
         Prop.computed __resource_type __resource_id "breach_action";
       id = Prop.computed __resource_type __resource_id "id";
       period = Prop.computed __resource_type __resource_id "period";
       resource_arn =
         Prop.computed __resource_type __resource_id "resource_arn";
       usage_type =
         Prop.computed __resource_type __resource_id "usage_type";
     }
      : t)
  in
  __resource_attributes
