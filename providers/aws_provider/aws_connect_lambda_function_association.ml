(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_connect_lambda_function_association = {
  function_arn : string prop;  (** function_arn *)
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** instance_id *)
}
[@@deriving yojson_of]
(** aws_connect_lambda_function_association *)

type t = {
  function_arn : string prop;
  id : string prop;
  instance_id : string prop;
}

let aws_connect_lambda_function_association ?id ~function_arn
    ~instance_id __resource_id =
  let __resource_type = "aws_connect_lambda_function_association" in
  let __resource =
    ({ function_arn; id; instance_id }
      : aws_connect_lambda_function_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_lambda_function_association __resource);
  let __resource_attributes =
    ({
       function_arn =
         Prop.computed __resource_type __resource_id "function_arn";
       id = Prop.computed __resource_type __resource_id "id";
       instance_id =
         Prop.computed __resource_type __resource_id "instance_id";
     }
      : t)
  in
  __resource_attributes
