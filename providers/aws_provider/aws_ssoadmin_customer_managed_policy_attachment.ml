(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssoadmin_customer_managed_policy_attachment__customer_managed_policy_reference = {
  name : string prop;  (** name *)
  path : string prop option; [@option]  (** path *)
}
[@@deriving yojson_of]
(** aws_ssoadmin_customer_managed_policy_attachment__customer_managed_policy_reference *)

type aws_ssoadmin_customer_managed_policy_attachment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_ssoadmin_customer_managed_policy_attachment__timeouts *)

type aws_ssoadmin_customer_managed_policy_attachment = {
  id : string prop option; [@option]  (** id *)
  instance_arn : string prop;  (** instance_arn *)
  permission_set_arn : string prop;  (** permission_set_arn *)
  customer_managed_policy_reference :
    aws_ssoadmin_customer_managed_policy_attachment__customer_managed_policy_reference
    list;
  timeouts :
    aws_ssoadmin_customer_managed_policy_attachment__timeouts option;
}
[@@deriving yojson_of]
(** aws_ssoadmin_customer_managed_policy_attachment *)

let aws_ssoadmin_customer_managed_policy_attachment ?id ?timeouts
    ~instance_arn ~permission_set_arn
    ~customer_managed_policy_reference __resource_id =
  let __resource_type =
    "aws_ssoadmin_customer_managed_policy_attachment"
  in
  let __resource =
    {
      id;
      instance_arn;
      permission_set_arn;
      customer_managed_policy_reference;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssoadmin_customer_managed_policy_attachment
       __resource);
  ()
