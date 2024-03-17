(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_serial_console_access = {
  enabled : bool option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_ec2_serial_console_access *)

let aws_ec2_serial_console_access ?enabled __resource_id =
  let __resource_type = "aws_ec2_serial_console_access" in
  let __resource = { enabled } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_serial_console_access __resource);
  ()
