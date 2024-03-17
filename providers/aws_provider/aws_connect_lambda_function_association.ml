(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_connect_lambda_function_association = {
  function_arn : string;  (** function_arn *)
  instance_id : string;  (** instance_id *)
}
[@@deriving yojson_of]
(** aws_connect_lambda_function_association *)

let aws_connect_lambda_function_association ~function_arn
    ~instance_id __resource_id =
  let __resource_type = "aws_connect_lambda_function_association" in
  let __resource = { function_arn; instance_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_lambda_function_association __resource);
  ()
