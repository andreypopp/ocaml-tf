(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_cloudwatch_log_destination = {
  name : string;  (** name *)
  role_arn : string;  (** role_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  target_arn : string;  (** target_arn *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_log_destination *)

let aws_cloudwatch_log_destination ?tags ~name ~role_arn ~target_arn
    __resource_id =
  let __resource_type = "aws_cloudwatch_log_destination" in
  let __resource = { name; role_arn; tags; target_arn } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_log_destination __resource);
  ()
