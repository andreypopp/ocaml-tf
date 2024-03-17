(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_verifiedpermissions_policy_store__validation_settings = {
  mode : string prop;  (** mode *)
}
[@@deriving yojson_of]
(** aws_verifiedpermissions_policy_store__validation_settings *)

type aws_verifiedpermissions_policy_store = {
  description : string prop option; [@option]  (** description *)
  validation_settings :
    aws_verifiedpermissions_policy_store__validation_settings list;
}
[@@deriving yojson_of]
(** aws_verifiedpermissions_policy_store *)

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  policy_store_id : string prop;
}

let aws_verifiedpermissions_policy_store ?description
    ~validation_settings __resource_id =
  let __resource_type = "aws_verifiedpermissions_policy_store" in
  let __resource =
    ({ description; validation_settings }
      : aws_verifiedpermissions_policy_store)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_verifiedpermissions_policy_store __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       policy_store_id =
         Prop.computed __resource_type __resource_id
           "policy_store_id";
     }
      : t)
  in
  __resource_attributes
