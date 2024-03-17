(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lambda_invocation = {
  function_name : string prop;  (** function_name *)
  id : string prop option; [@option]  (** id *)
  input : string prop;  (** input *)
  lifecycle_scope : string prop option; [@option]
      (** lifecycle_scope *)
  qualifier : string prop option; [@option]  (** qualifier *)
  terraform_key : string prop option; [@option]  (** terraform_key *)
  triggers : (string * string prop) list option; [@option]
      (** triggers *)
}
[@@deriving yojson_of]
(** aws_lambda_invocation *)

type t = {
  function_name : string prop;
  id : string prop;
  input : string prop;
  lifecycle_scope : string prop;
  qualifier : string prop;
  result : string prop;
  terraform_key : string prop;
  triggers : (string * string) list prop;
}

let aws_lambda_invocation ?id ?lifecycle_scope ?qualifier
    ?terraform_key ?triggers ~function_name ~input __resource_id =
  let __resource_type = "aws_lambda_invocation" in
  let __resource =
    ({
       function_name;
       id;
       input;
       lifecycle_scope;
       qualifier;
       terraform_key;
       triggers;
     }
      : aws_lambda_invocation)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lambda_invocation __resource);
  let __resource_attributes =
    ({
       function_name =
         Prop.computed __resource_type __resource_id "function_name";
       id = Prop.computed __resource_type __resource_id "id";
       input = Prop.computed __resource_type __resource_id "input";
       lifecycle_scope =
         Prop.computed __resource_type __resource_id
           "lifecycle_scope";
       qualifier =
         Prop.computed __resource_type __resource_id "qualifier";
       result = Prop.computed __resource_type __resource_id "result";
       terraform_key =
         Prop.computed __resource_type __resource_id "terraform_key";
       triggers =
         Prop.computed __resource_type __resource_id "triggers";
     }
      : t)
  in
  __resource_attributes
