(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_elb_attachment = {
  elb : string prop;
  id : string prop option; [@option]
  instance : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_elb_attachment) -> ()

let yojson_of_aws_elb_attachment =
  (function
   | { elb = v_elb; id = v_id; instance = v_instance } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance in
         ("instance", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_elb in
         ("elb", arg) :: bnds
       in
       `Assoc bnds
    : aws_elb_attachment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_elb_attachment

[@@@deriving.end]

let aws_elb_attachment ?id ~elb ~instance () : aws_elb_attachment =
  { elb; id; instance }

type t = {
  tf_name : string;
  elb : string prop;
  id : string prop;
  instance : string prop;
}

let make ?id ~elb ~instance __id =
  let __type = "aws_elb_attachment" in
  let __attrs =
    ({
       tf_name = __id;
       elb = Prop.computed __type __id "elb";
       id = Prop.computed __type __id "id";
       instance = Prop.computed __type __id "instance";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_elb_attachment
        (aws_elb_attachment ?id ~elb ~instance ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~elb ~instance __id =
  let (r : _ Tf_core.resource) = make ?id ~elb ~instance __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
