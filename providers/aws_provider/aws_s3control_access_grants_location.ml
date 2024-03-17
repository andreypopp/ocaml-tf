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

let aws_s3control_access_grants_location ?account_id ?tags
    ~iam_role_arn ~location_scope __resource_id =
  let __resource_type = "aws_s3control_access_grants_location" in
  let __resource =
    { account_id; iam_role_arn; location_scope; tags }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3control_access_grants_location __resource);
  ()
