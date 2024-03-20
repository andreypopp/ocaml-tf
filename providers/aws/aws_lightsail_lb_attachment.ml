(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lightsail_lb_attachment = {
  id : string prop option; [@option]
  instance_name : string prop;
  lb_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lightsail_lb_attachment) -> ()

let yojson_of_aws_lightsail_lb_attachment =
  (function
   | {
       id = v_id;
       instance_name = v_instance_name;
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
         let arg = yojson_of_prop yojson_of_string v_instance_name in
         ("instance_name", arg) :: bnds
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
    : aws_lightsail_lb_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lightsail_lb_attachment

[@@@deriving.end]

let aws_lightsail_lb_attachment ?id ~instance_name ~lb_name () :
    aws_lightsail_lb_attachment =
  { id; instance_name; lb_name }

type t = {
  id : string prop;
  instance_name : string prop;
  lb_name : string prop;
}

let make ?id ~instance_name ~lb_name __id =
  let __type = "aws_lightsail_lb_attachment" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       instance_name = Prop.computed __type __id "instance_name";
       lb_name = Prop.computed __type __id "lb_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lightsail_lb_attachment
        (aws_lightsail_lb_attachment ?id ~instance_name ~lb_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~instance_name ~lb_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~instance_name ~lb_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
