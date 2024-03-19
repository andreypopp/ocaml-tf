(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_securityhub_product_subscription = {
  id : string prop option; [@option]  (** id *)
  product_arn : string prop;  (** product_arn *)
}
[@@deriving yojson_of]
(** aws_securityhub_product_subscription *)

let aws_securityhub_product_subscription ?id ~product_arn () :
    aws_securityhub_product_subscription =
  { id; product_arn }

type t = {
  arn : string prop;
  id : string prop;
  product_arn : string prop;
}

let register ?tf_module ?id ~product_arn __resource_id =
  let __resource_type = "aws_securityhub_product_subscription" in
  let __resource =
    aws_securityhub_product_subscription ?id ~product_arn ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_securityhub_product_subscription __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       product_arn =
         Prop.computed __resource_type __resource_id "product_arn";
     }
      : t)
  in
  __resource_attributes
