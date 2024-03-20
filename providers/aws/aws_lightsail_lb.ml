(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lightsail_lb = {
  health_check_path : string prop option; [@option]
  id : string prop option; [@option]
  instance_port : float prop;
  ip_address_type : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lightsail_lb) -> ()

let yojson_of_aws_lightsail_lb =
  (function
   | {
       health_check_path = v_health_check_path;
       id = v_id;
       instance_port = v_instance_port;
       ip_address_type = v_ip_address_type;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_ip_address_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_address_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_instance_port in
         ("instance_port", arg) :: bnds
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
         match v_health_check_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "health_check_path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_lightsail_lb -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lightsail_lb

[@@@deriving.end]

let aws_lightsail_lb ?health_check_path ?id ?ip_address_type ?tags
    ?tags_all ~instance_port ~name () : aws_lightsail_lb =
  {
    health_check_path;
    id;
    instance_port;
    ip_address_type;
    name;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  created_at : string prop;
  dns_name : string prop;
  health_check_path : string prop;
  id : string prop;
  instance_port : float prop;
  ip_address_type : string prop;
  name : string prop;
  protocol : string prop;
  public_ports : float list prop;
  support_code : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?health_check_path ?id ?ip_address_type ?tags ?tags_all
    ~instance_port ~name __id =
  let __type = "aws_lightsail_lb" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       created_at = Prop.computed __type __id "created_at";
       dns_name = Prop.computed __type __id "dns_name";
       health_check_path =
         Prop.computed __type __id "health_check_path";
       id = Prop.computed __type __id "id";
       instance_port = Prop.computed __type __id "instance_port";
       ip_address_type = Prop.computed __type __id "ip_address_type";
       name = Prop.computed __type __id "name";
       protocol = Prop.computed __type __id "protocol";
       public_ports = Prop.computed __type __id "public_ports";
       support_code = Prop.computed __type __id "support_code";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lightsail_lb
        (aws_lightsail_lb ?health_check_path ?id ?ip_address_type
           ?tags ?tags_all ~instance_port ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?health_check_path ?id ?ip_address_type ?tags
    ?tags_all ~instance_port ~name __id =
  let (r : _ Tf_core.resource) =
    make ?health_check_path ?id ?ip_address_type ?tags ?tags_all
      ~instance_port ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
