(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type customer_managed_policy_reference = {
  name : string prop;  (** name *)
  path : string prop option; [@option]  (** path *)
}
[@@deriving yojson_of]
(** customer_managed_policy_reference *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ssoadmin_customer_managed_policy_attachment = {
  id : string prop option; [@option]  (** id *)
  instance_arn : string prop;  (** instance_arn *)
  permission_set_arn : string prop;  (** permission_set_arn *)
  customer_managed_policy_reference :
    customer_managed_policy_reference list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ssoadmin_customer_managed_policy_attachment *)

let customer_managed_policy_reference ?path ~name () :
    customer_managed_policy_reference =
  { name; path }

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ssoadmin_customer_managed_policy_attachment ?id ?timeouts
    ~instance_arn ~permission_set_arn
    ~customer_managed_policy_reference () :
    aws_ssoadmin_customer_managed_policy_attachment =
  {
    id;
    instance_arn;
    permission_set_arn;
    customer_managed_policy_reference;
    timeouts;
  }

type t = {
  id : string prop;
  instance_arn : string prop;
  permission_set_arn : string prop;
}

let register ?tf_module ?id ?timeouts ~instance_arn
    ~permission_set_arn ~customer_managed_policy_reference
    __resource_id =
  let __resource_type =
    "aws_ssoadmin_customer_managed_policy_attachment"
  in
  let __resource =
    aws_ssoadmin_customer_managed_policy_attachment ?id ?timeouts
      ~instance_arn ~permission_set_arn
      ~customer_managed_policy_reference ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssoadmin_customer_managed_policy_attachment
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       instance_arn =
         Prop.computed __resource_type __resource_id "instance_arn";
       permission_set_arn =
         Prop.computed __resource_type __resource_id
           "permission_set_arn";
     }
      : t)
  in
  __resource_attributes
