(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_verifiedpermissions_policy_template = {
  description : string prop option; [@option]  (** description *)
  policy_store_id : string prop;  (** policy_store_id *)
  statement : string prop;  (** statement *)
}
[@@deriving yojson_of]
(** aws_verifiedpermissions_policy_template *)

type t = {
  created_date : string prop;
  description : string prop;
  id : string prop;
  policy_store_id : string prop;
  policy_template_id : string prop;
  statement : string prop;
}

let aws_verifiedpermissions_policy_template ?description
    ~policy_store_id ~statement __resource_id =
  let __resource_type = "aws_verifiedpermissions_policy_template" in
  let __resource =
    ({ description; policy_store_id; statement }
      : aws_verifiedpermissions_policy_template)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_verifiedpermissions_policy_template __resource);
  let __resource_attributes =
    ({
       created_date =
         Prop.computed __resource_type __resource_id "created_date";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       policy_store_id =
         Prop.computed __resource_type __resource_id
           "policy_store_id";
       policy_template_id =
         Prop.computed __resource_type __resource_id
           "policy_template_id";
       statement =
         Prop.computed __resource_type __resource_id "statement";
     }
      : t)
  in
  __resource_attributes
