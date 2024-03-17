(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_s3control_access_grants_location = {
  iam_role_arn : string;  (** iam_role_arn *)
  location_scope : string;  (** location_scope *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_s3control_access_grants_location *)

let aws_s3control_access_grants_location ?tags ~iam_role_arn
    ~location_scope __resource_id =
  let __resource_type = "aws_s3control_access_grants_location" in
  let __resource = { iam_role_arn; location_scope; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3control_access_grants_location __resource);
  ()
