(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_outposts_outpost_instance_types = {
  arn : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_outposts_outpost_instance_types) -> ()

let yojson_of_aws_outposts_outpost_instance_types =
  (function
   | { arn = v_arn; id = v_id } ->
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
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_outposts_outpost_instance_types ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_outposts_outpost_instance_types

[@@@deriving.end]

let aws_outposts_outpost_instance_types ?id ~arn () :
    aws_outposts_outpost_instance_types =
  { arn; id }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  instance_types : string list prop;
}

let make ?id ~arn __id =
  let __type = "aws_outposts_outpost_instance_types" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       instance_types = Prop.computed __type __id "instance_types";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_outposts_outpost_instance_types
        (aws_outposts_outpost_instance_types ?id ~arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~arn __id =
  let (r : _ Tf_core.resource) = make ?id ~arn __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
