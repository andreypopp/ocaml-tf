(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssoadmin_instance_access_control_attributes__attribute__value = {
  source : string list;  (** source *)
}
[@@deriving yojson_of]
(** aws_ssoadmin_instance_access_control_attributes__attribute__value *)

type aws_ssoadmin_instance_access_control_attributes__attribute = {
  key : string;  (** key *)
  value :
    aws_ssoadmin_instance_access_control_attributes__attribute__value
    list;
}
[@@deriving yojson_of]
(** aws_ssoadmin_instance_access_control_attributes__attribute *)

type aws_ssoadmin_instance_access_control_attributes = {
  id : string option; [@option]  (** id *)
  instance_arn : string;  (** instance_arn *)
  attribute :
    aws_ssoadmin_instance_access_control_attributes__attribute list;
}
[@@deriving yojson_of]
(** aws_ssoadmin_instance_access_control_attributes *)

let aws_ssoadmin_instance_access_control_attributes ?id ~instance_arn
    ~attribute __resource_id =
  let __resource_type =
    "aws_ssoadmin_instance_access_control_attributes"
  in
  let __resource = { id; instance_arn; attribute } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssoadmin_instance_access_control_attributes
       __resource);
  ()
