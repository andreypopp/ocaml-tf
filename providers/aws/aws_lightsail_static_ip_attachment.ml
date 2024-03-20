(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lightsail_static_ip_attachment = {
  id : string prop option; [@option]
  instance_name : string prop;
  static_ip_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lightsail_static_ip_attachment) -> ()

let yojson_of_aws_lightsail_static_ip_attachment =
  (function
   | {
       id = v_id;
       instance_name = v_instance_name;
       static_ip_name = v_static_ip_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_static_ip_name
         in
         ("static_ip_name", arg) :: bnds
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
    : aws_lightsail_static_ip_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lightsail_static_ip_attachment

[@@@deriving.end]

let aws_lightsail_static_ip_attachment ?id ~instance_name
    ~static_ip_name () : aws_lightsail_static_ip_attachment =
  { id; instance_name; static_ip_name }

type t = {
  id : string prop;
  instance_name : string prop;
  ip_address : string prop;
  static_ip_name : string prop;
}

let make ?id ~instance_name ~static_ip_name __id =
  let __type = "aws_lightsail_static_ip_attachment" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       instance_name = Prop.computed __type __id "instance_name";
       ip_address = Prop.computed __type __id "ip_address";
       static_ip_name = Prop.computed __type __id "static_ip_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lightsail_static_ip_attachment
        (aws_lightsail_static_ip_attachment ?id ~instance_name
           ~static_ip_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~instance_name ~static_ip_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~instance_name ~static_ip_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
