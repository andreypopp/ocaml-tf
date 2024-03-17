(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3control_access_grants_location = {
  account_id : string prop option; [@option]  (** account_id *)
  iam_role_arn : string prop;  (** iam_role_arn *)
  location_scope : string prop;  (** location_scope *)
  tags : (string * string prop) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_s3control_access_grants_location *)

type t = {
  access_grants_location_arn : string prop;
  access_grants_location_id : string prop;
  account_id : string prop;
  iam_role_arn : string prop;
  id : string prop;
  location_scope : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_s3control_access_grants_location ?account_id ?tags
    ~iam_role_arn ~location_scope __resource_id =
  let __resource_type = "aws_s3control_access_grants_location" in
  let __resource =
    ({ account_id; iam_role_arn; location_scope; tags }
      : aws_s3control_access_grants_location)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3control_access_grants_location __resource);
  let __resource_attributes =
    ({
       access_grants_location_arn =
         Prop.computed __resource_type __resource_id
           "access_grants_location_arn";
       access_grants_location_id =
         Prop.computed __resource_type __resource_id
           "access_grants_location_id";
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       iam_role_arn =
         Prop.computed __resource_type __resource_id "iam_role_arn";
       id = Prop.computed __resource_type __resource_id "id";
       location_scope =
         Prop.computed __resource_type __resource_id "location_scope";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
