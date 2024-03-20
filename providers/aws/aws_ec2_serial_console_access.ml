(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?enabled ?id __id =
  let __type = "aws_ec2_serial_console_access" in
  let __attrs =
    ({
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_serial_console_access
        (aws_ec2_serial_console_access ?enabled ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id __id =
  let (r : _ Tf_core.resource) = make ?enabled ?id __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
