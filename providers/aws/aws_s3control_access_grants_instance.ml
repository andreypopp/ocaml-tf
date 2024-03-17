(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3control_access_grants_instance = {
  account_id : string prop option; [@option]  (** account_id *)
  identity_center_arn : string prop option; [@option]
      (** identity_center_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_s3control_access_grants_instance *)

type t = {
  access_grants_instance_arn : string prop;
  access_grants_instance_id : string prop;
  account_id : string prop;
  id : string prop;
  identity_center_application_arn : string prop;
  identity_center_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_s3control_access_grants_instance ?account_id
    ?identity_center_arn ?tags __resource_id =
  let __resource_type = "aws_s3control_access_grants_instance" in
  let __resource =
    ({ account_id; identity_center_arn; tags }
      : aws_s3control_access_grants_instance)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3control_access_grants_instance __resource);
  let __resource_attributes =
    ({
       access_grants_instance_arn =
         Prop.computed __resource_type __resource_id
           "access_grants_instance_arn";
       access_grants_instance_id =
         Prop.computed __resource_type __resource_id
           "access_grants_instance_id";
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       id = Prop.computed __resource_type __resource_id "id";
       identity_center_application_arn =
         Prop.computed __resource_type __resource_id
           "identity_center_application_arn";
       identity_center_arn =
         Prop.computed __resource_type __resource_id
           "identity_center_arn";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
