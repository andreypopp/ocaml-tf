(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_servicequotas_template_association = {
  skip_destroy : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_servicequotas_template_association) -> ()

let yojson_of_aws_servicequotas_template_association =
  (function
   | { skip_destroy = v_skip_destroy } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_skip_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_destroy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_servicequotas_template_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_servicequotas_template_association

[@@@deriving.end]

let aws_servicequotas_template_association ?skip_destroy () :
    aws_servicequotas_template_association =
  { skip_destroy }

type t = {
  id : string prop;
  skip_destroy : bool prop;
  status : string prop;
}

let make ?skip_destroy __id =
  let __type = "aws_servicequotas_template_association" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       skip_destroy = Prop.computed __type __id "skip_destroy";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_servicequotas_template_association
        (aws_servicequotas_template_association ?skip_destroy ());
    attrs = __attrs;
  }

let register ?tf_module ?skip_destroy __id =
  let (r : _ Tf_core.resource) = make ?skip_destroy __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
