(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lambda_invocation = {
  function_name : string;  (** function_name *)
  id : string option; [@option]  (** id *)
  input : string;  (** input *)
  lifecycle_scope : string option; [@option]  (** lifecycle_scope *)
  qualifier : string option; [@option]  (** qualifier *)
  terraform_key : string option; [@option]  (** terraform_key *)
  triggers : (string * string) list option; [@option]  (** triggers *)
}
[@@deriving yojson_of]
(** aws_lambda_invocation *)

let aws_lambda_invocation ?id ?lifecycle_scope ?qualifier
    ?terraform_key ?triggers ~function_name ~input __resource_id =
  let __resource_type = "aws_lambda_invocation" in
  let __resource =
    {
      function_name;
      id;
      input;
      lifecycle_scope;
      qualifier;
      terraform_key;
      triggers;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lambda_invocation __resource);
  ()
