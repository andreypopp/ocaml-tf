(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_serial_console_access = {
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_ec2_serial_console_access *)

let aws_ec2_serial_console_access ?enabled ?id () :
    aws_ec2_serial_console_access =
  { enabled; id }

type t = { enabled : bool prop; id : string prop }

let register ?tf_module ?enabled ?id __resource_id =
  let __resource_type = "aws_ec2_serial_console_access" in
  let __resource = aws_ec2_serial_console_access ?enabled ?id () in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_serial_console_access __resource);
  let __resource_attributes =
    ({
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
