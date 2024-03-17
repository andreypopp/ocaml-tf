(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssoadmin_application_assignment = {
  application_arn : string prop;  (** application_arn *)
  principal_id : string prop;  (** principal_id *)
  principal_type : string prop;  (** principal_type *)
}
[@@deriving yojson_of]
(** aws_ssoadmin_application_assignment *)

type t = {
  application_arn : string prop;
  id : string prop;
  principal_id : string prop;
  principal_type : string prop;
}

let aws_ssoadmin_application_assignment ~application_arn
    ~principal_id ~principal_type __resource_id =
  let __resource_type = "aws_ssoadmin_application_assignment" in
  let __resource =
    ({ application_arn; principal_id; principal_type }
      : aws_ssoadmin_application_assignment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssoadmin_application_assignment __resource);
  let __resource_attributes =
    ({
       application_arn =
         Prop.computed __resource_type __resource_id
           "application_arn";
       id = Prop.computed __resource_type __resource_id "id";
       principal_id =
         Prop.computed __resource_type __resource_id "principal_id";
       principal_type =
         Prop.computed __resource_type __resource_id "principal_type";
     }
      : t)
  in
  __resource_attributes
