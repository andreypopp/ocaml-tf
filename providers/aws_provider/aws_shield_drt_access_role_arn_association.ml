(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_shield_drt_access_role_arn_association__timeouts = {
  create : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
  update : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** aws_shield_drt_access_role_arn_association__timeouts *)

type aws_shield_drt_access_role_arn_association = {
  role_arn : string;  (** role_arn *)
  timeouts :
    aws_shield_drt_access_role_arn_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_shield_drt_access_role_arn_association *)

let aws_shield_drt_access_role_arn_association ?timeouts ~role_arn
    __resource_id =
  let __resource_type =
    "aws_shield_drt_access_role_arn_association"
  in
  let __resource = { role_arn; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_shield_drt_access_role_arn_association __resource);
  ()
