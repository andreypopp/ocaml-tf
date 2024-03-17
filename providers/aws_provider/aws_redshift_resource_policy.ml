(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_redshift_resource_policy = {
  policy : string;  (** policy *)
  resource_arn : string;  (** resource_arn *)
}
[@@deriving yojson_of]
(** aws_redshift_resource_policy *)

let aws_redshift_resource_policy ~policy ~resource_arn __resource_id
    =
  let __resource_type = "aws_redshift_resource_policy" in
  let __resource = { policy; resource_arn } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_resource_policy __resource);
  ()
