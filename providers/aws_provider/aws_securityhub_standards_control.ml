(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_securityhub_standards_control = {
  control_status : string;  (** control_status *)
  standards_control_arn : string;  (** standards_control_arn *)
}
[@@deriving yojson_of]
(** aws_securityhub_standards_control *)

let aws_securityhub_standards_control ~control_status
    ~standards_control_arn __resource_id =
  let __resource_type = "aws_securityhub_standards_control" in
  let __resource = { control_status; standards_control_arn } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_securityhub_standards_control __resource);
  ()
