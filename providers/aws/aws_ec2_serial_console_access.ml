(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_serial_console_access = {
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_serial_console_access) -> ()

let yojson_of_aws_ec2_serial_console_access =
  (function
   | { enabled = v_enabled; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ec2_serial_console_access ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_serial_console_access

[@@@deriving.end]

let aws_ec2_serial_console_access ?enabled ?id () :
    aws_ec2_serial_console_access =
  { enabled; id }

type t = { tf_name : string; enabled : bool prop; id : string prop }

let make ?enabled ?id __id =
  let __type = "aws_ec2_serial_console_access" in
  let __attrs =
    ({
       tf_name = __id;
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
