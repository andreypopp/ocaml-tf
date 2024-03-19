(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudwatch_log_data_protection_policy = {
  id : string prop option; [@option]  (** id *)
  log_group_name : string prop;  (** log_group_name *)
  policy_document : string prop;  (** policy_document *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_log_data_protection_policy *)

let aws_cloudwatch_log_data_protection_policy ?id ~log_group_name
    ~policy_document () : aws_cloudwatch_log_data_protection_policy =
  { id; log_group_name; policy_document }

type t = {
  id : string prop;
  log_group_name : string prop;
  policy_document : string prop;
}

let register ?tf_module ?id ~log_group_name ~policy_document
    __resource_id =
  let __resource_type =
    "aws_cloudwatch_log_data_protection_policy"
  in
  let __resource =
    aws_cloudwatch_log_data_protection_policy ?id ~log_group_name
      ~policy_document ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_log_data_protection_policy __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       log_group_name =
         Prop.computed __resource_type __resource_id "log_group_name";
       policy_document =
         Prop.computed __resource_type __resource_id
           "policy_document";
     }
      : t)
  in
  __resource_attributes
