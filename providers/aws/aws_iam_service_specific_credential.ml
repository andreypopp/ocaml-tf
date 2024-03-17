(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_service_specific_credential = {
  id : string prop option; [@option]  (** id *)
  service_name : string prop;  (** service_name *)
  status : string prop option; [@option]  (** status *)
  user_name : string prop;  (** user_name *)
}
[@@deriving yojson_of]
(** aws_iam_service_specific_credential *)

type t = {
  id : string prop;
  service_name : string prop;
  service_password : string prop;
  service_specific_credential_id : string prop;
  service_user_name : string prop;
  status : string prop;
  user_name : string prop;
}

let aws_iam_service_specific_credential ?id ?status ~service_name
    ~user_name __resource_id =
  let __resource_type = "aws_iam_service_specific_credential" in
  let __resource =
    ({ id; service_name; status; user_name }
      : aws_iam_service_specific_credential)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_service_specific_credential __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       service_name =
         Prop.computed __resource_type __resource_id "service_name";
       service_password =
         Prop.computed __resource_type __resource_id
           "service_password";
       service_specific_credential_id =
         Prop.computed __resource_type __resource_id
           "service_specific_credential_id";
       service_user_name =
         Prop.computed __resource_type __resource_id
           "service_user_name";
       status = Prop.computed __resource_type __resource_id "status";
       user_name =
         Prop.computed __resource_type __resource_id "user_name";
     }
      : t)
  in
  __resource_attributes
