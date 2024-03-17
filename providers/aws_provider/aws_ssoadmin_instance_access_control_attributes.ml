(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssoadmin_instance_access_control_attributes__attribute__value = {
  source : string prop list;  (** source *)
}
[@@deriving yojson_of]
(** aws_ssoadmin_instance_access_control_attributes__attribute__value *)

type aws_ssoadmin_instance_access_control_attributes__attribute = {
  key : string prop;  (** key *)
  value :
    aws_ssoadmin_instance_access_control_attributes__attribute__value
    list;
}
[@@deriving yojson_of]
(** aws_ssoadmin_instance_access_control_attributes__attribute *)

type aws_ssoadmin_instance_access_control_attributes = {
  id : string prop option; [@option]  (** id *)
  instance_arn : string prop;  (** instance_arn *)
  attribute :
    aws_ssoadmin_instance_access_control_attributes__attribute list;
}
[@@deriving yojson_of]
(** aws_ssoadmin_instance_access_control_attributes *)

type t = {
  id : string prop;
  instance_arn : string prop;
  status : string prop;
  status_reason : string prop;
}

let aws_ssoadmin_instance_access_control_attributes ?id ~instance_arn
    ~attribute __resource_id =
  let __resource_type =
    "aws_ssoadmin_instance_access_control_attributes"
  in
  let __resource =
    ({ id; instance_arn; attribute }
      : aws_ssoadmin_instance_access_control_attributes)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssoadmin_instance_access_control_attributes
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       instance_arn =
         Prop.computed __resource_type __resource_id "instance_arn";
       status = Prop.computed __resource_type __resource_id "status";
       status_reason =
         Prop.computed __resource_type __resource_id "status_reason";
     }
      : t)
  in
  __resource_attributes
