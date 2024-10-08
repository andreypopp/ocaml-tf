(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_oam_sinks = { id : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_oam_sinks) -> ()

let yojson_of_aws_oam_sinks =
  (function
   | { id = v_id } ->
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
       `Assoc bnds
    : aws_oam_sinks -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_oam_sinks

[@@@deriving.end]

let aws_oam_sinks ?id () : aws_oam_sinks = { id }

type t = {
  tf_name : string;
  arns : string list prop;
  id : string prop;
}

let make ?id __id =
  let __type = "aws_oam_sinks" in
  let __attrs =
    ({
       tf_name = __id;
       arns = Prop.computed __type __id "arns";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_aws_oam_sinks (aws_oam_sinks ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?id __id =
  let (r : _ Tf_core.resource) = make ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
