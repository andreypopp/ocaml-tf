(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_securityhub_standards_control = {
  control_status : string prop;  (** control_status *)
  disabled_reason : string prop option; [@option]
      (** disabled_reason *)
  id : string prop option; [@option]  (** id *)
  standards_control_arn : string prop;  (** standards_control_arn *)
}
[@@deriving yojson_of]
(** aws_securityhub_standards_control *)

let aws_securityhub_standards_control ?disabled_reason ?id
    ~control_status ~standards_control_arn __resource_id =
  let __resource_type = "aws_securityhub_standards_control" in
  let __resource =
    { control_status; disabled_reason; id; standards_control_arn }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_securityhub_standards_control __resource);
  ()
