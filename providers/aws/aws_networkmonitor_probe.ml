(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_networkmonitor_probe = {
  destination : string prop;
  destination_port : float prop option; [@option]
  monitor_name : string prop;
  packet_size : float prop option; [@option]
  protocol : string prop;
  source_arn : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_networkmonitor_probe) -> ()

let yojson_of_aws_networkmonitor_probe =
  (function
   | {
       destination = v_destination;
       destination_port = v_destination_port;
       monitor_name = v_monitor_name;
       packet_size = v_packet_size;
       protocol = v_protocol;
       source_arn = v_source_arn;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_source_arn in
         ("source_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         match v_packet_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "packet_size", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_monitor_name in
         ("monitor_name", arg) :: bnds
       in
       let bnds =
         match v_destination_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "destination_port", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_destination in
         ("destination", arg) :: bnds
       in
       `Assoc bnds
    : aws_networkmonitor_probe -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_networkmonitor_probe

[@@@deriving.end]

let aws_networkmonitor_probe ?destination_port ?packet_size ?tags
    ~destination ~monitor_name ~protocol ~source_arn () :
    aws_networkmonitor_probe =
  {
    destination;
    destination_port;
    monitor_name;
    packet_size;
    protocol;
    source_arn;
    tags;
  }

type t = {
  tf_name : string;
  address_family : string prop;
  arn : string prop;
  destination : string prop;
  destination_port : float prop;
  id : string prop;
  monitor_name : string prop;
  packet_size : float prop;
  probe_id : string prop;
  protocol : string prop;
  source_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let make ?destination_port ?packet_size ?tags ~destination
    ~monitor_name ~protocol ~source_arn __id =
  let __type = "aws_networkmonitor_probe" in
  let __attrs =
    ({
       tf_name = __id;
       address_family = Prop.computed __type __id "address_family";
       arn = Prop.computed __type __id "arn";
       destination = Prop.computed __type __id "destination";
       destination_port =
         Prop.computed __type __id "destination_port";
       id = Prop.computed __type __id "id";
       monitor_name = Prop.computed __type __id "monitor_name";
       packet_size = Prop.computed __type __id "packet_size";
       probe_id = Prop.computed __type __id "probe_id";
       protocol = Prop.computed __type __id "protocol";
       source_arn = Prop.computed __type __id "source_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkmonitor_probe
        (aws_networkmonitor_probe ?destination_port ?packet_size
           ?tags ~destination ~monitor_name ~protocol ~source_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?destination_port ?packet_size ?tags
    ~destination ~monitor_name ~protocol ~source_arn __id =
  let (r : _ Tf_core.resource) =
    make ?destination_port ?packet_size ?tags ~destination
      ~monitor_name ~protocol ~source_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
