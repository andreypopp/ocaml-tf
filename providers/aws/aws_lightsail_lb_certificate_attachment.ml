(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lightsail_lb_certificate_attachment = {
  certificate_name : string prop;
  id : string prop option; [@option]
  lb_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lightsail_lb_certificate_attachment) -> ()

let yojson_of_aws_lightsail_lb_certificate_attachment =
  (function
   | {
       certificate_name = v_certificate_name;
       id = v_id;
       lb_name = v_lb_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_lb_name in
         ("lb_name", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_certificate_name
         in
         ("certificate_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_lightsail_lb_certificate_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lightsail_lb_certificate_attachment

[@@@deriving.end]

let aws_lightsail_lb_certificate_attachment ?id ~certificate_name
    ~lb_name () : aws_lightsail_lb_certificate_attachment =
  { certificate_name; id; lb_name }

type t = {
  certificate_name : string prop;
  id : string prop;
  lb_name : string prop;
}

let make ?id ~certificate_name ~lb_name __id =
  let __type = "aws_lightsail_lb_certificate_attachment" in
  let __attrs =
    ({
       certificate_name =
         Prop.computed __type __id "certificate_name";
       id = Prop.computed __type __id "id";
       lb_name = Prop.computed __type __id "lb_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lightsail_lb_certificate_attachment
        (aws_lightsail_lb_certificate_attachment ?id
           ~certificate_name ~lb_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~certificate_name ~lb_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~certificate_name ~lb_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
