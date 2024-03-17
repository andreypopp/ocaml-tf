(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3control_access_point_policy = {
  access_point_arn : string;  (** access_point_arn *)
  id : string option; [@option]  (** id *)
  policy : string;  (** policy *)
}
[@@deriving yojson_of]
(** aws_s3control_access_point_policy *)

let aws_s3control_access_point_policy ?id ~access_point_arn ~policy
    __resource_id =
  let __resource_type = "aws_s3control_access_point_policy" in
  let __resource = { access_point_arn; id; policy } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3control_access_point_policy __resource);
  ()
