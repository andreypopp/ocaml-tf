(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type port_info = {
  cidr_list_aliases : string prop list option; [@option]
  cidrs : string prop list option; [@option]
  from_port : float prop;
  ipv6_cidrs : string prop list option; [@option]
  protocol : string prop;
  to_port : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : port_info) -> ()

let yojson_of_port_info =
  (function
   | {
       cidr_list_aliases = v_cidr_list_aliases;
       cidrs = v_cidrs;
       from_port = v_from_port;
       ipv6_cidrs = v_ipv6_cidrs;
       protocol = v_protocol;
       to_port = v_to_port;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_to_port in
         ("to_port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         match v_ipv6_cidrs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ipv6_cidrs", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_from_port in
         ("from_port", arg) :: bnds
       in
       let bnds =
         match v_cidrs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "cidrs", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cidr_list_aliases with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "cidr_list_aliases", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : port_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_port_info

[@@@deriving.end]

type aws_lightsail_instance_public_ports = {
  id : string prop option; [@option]
  instance_name : string prop;
  port_info : port_info list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lightsail_instance_public_ports) -> ()

let yojson_of_aws_lightsail_instance_public_ports =
  (function
   | {
       id = v_id;
       instance_name = v_instance_name;
       port_info = v_port_info;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_port_info v_port_info in
         ("port_info", arg) :: bnds
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
    : aws_lightsail_instance_public_ports ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lightsail_instance_public_ports

[@@@deriving.end]

let port_info ?cidr_list_aliases ?cidrs ?ipv6_cidrs ~from_port
    ~protocol ~to_port () : port_info =
  {
    cidr_list_aliases;
    cidrs;
    from_port;
    ipv6_cidrs;
    protocol;
    to_port;
  }

let aws_lightsail_instance_public_ports ?id ~instance_name ~port_info
    () : aws_lightsail_instance_public_ports =
  { id; instance_name; port_info }

type t = { id : string prop; instance_name : string prop }

let make ?id ~instance_name ~port_info __id =
  let __type = "aws_lightsail_instance_public_ports" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       instance_name = Prop.computed __type __id "instance_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lightsail_instance_public_ports
        (aws_lightsail_instance_public_ports ?id ~instance_name
           ~port_info ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~instance_name ~port_info __id =
  let (r : _ Tf_core.resource) =
    make ?id ~instance_name ~port_info __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
