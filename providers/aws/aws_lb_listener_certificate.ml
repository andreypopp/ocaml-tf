(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lb_listener_certificate = {
  certificate_arn : string prop;
  id : string prop option; [@option]
  listener_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lb_listener_certificate) -> ()

let yojson_of_aws_lb_listener_certificate =
  (function
   | {
       certificate_arn = v_certificate_arn;
       id = v_id;
       listener_arn = v_listener_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_listener_arn in
         ("listener_arn", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_certificate_arn
         in
         ("certificate_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_lb_listener_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lb_listener_certificate

[@@@deriving.end]

let aws_lb_listener_certificate ?id ~certificate_arn ~listener_arn ()
    : aws_lb_listener_certificate =
  { certificate_arn; id; listener_arn }

type t = {
  certificate_arn : string prop;
  id : string prop;
  listener_arn : string prop;
}

let make ?id ~certificate_arn ~listener_arn __id =
  let __type = "aws_lb_listener_certificate" in
  let __attrs =
    ({
       certificate_arn = Prop.computed __type __id "certificate_arn";
       id = Prop.computed __type __id "id";
       listener_arn = Prop.computed __type __id "listener_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lb_listener_certificate
        (aws_lb_listener_certificate ?id ~certificate_arn
           ~listener_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~certificate_arn ~listener_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ~certificate_arn ~listener_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
