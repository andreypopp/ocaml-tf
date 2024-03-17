(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudwatch_log_resource_policy = {
  id : string prop option; [@option]  (** id *)
  policy_document : string prop;  (** policy_document *)
  policy_name : string prop;  (** policy_name *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_log_resource_policy *)

type t = {
  id : string prop;
  policy_document : string prop;
  policy_name : string prop;
}

let aws_cloudwatch_log_resource_policy ?id ~policy_document
    ~policy_name __resource_id =
  let __resource_type = "aws_cloudwatch_log_resource_policy" in
  let __resource =
    ({ id; policy_document; policy_name }
      : aws_cloudwatch_log_resource_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_log_resource_policy __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       policy_document =
         Prop.computed __resource_type __resource_id
           "policy_document";
       policy_name =
         Prop.computed __resource_type __resource_id "policy_name";
     }
      : t)
  in
  __resource_attributes
