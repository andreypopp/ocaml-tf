(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_traffic_mirror_session = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  network_interface_id : string prop;
  packet_length : float prop option; [@option]
  session_number : float prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  traffic_mirror_filter_id : string prop;
  traffic_mirror_target_id : string prop;
  virtual_network_id : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_traffic_mirror_session) -> ()

let yojson_of_aws_ec2_traffic_mirror_session =
  (function
   | {
       description = v_description;
       id = v_id;
       network_interface_id = v_network_interface_id;
       packet_length = v_packet_length;
       session_number = v_session_number;
       tags = v_tags;
       tags_all = v_tags_all;
       traffic_mirror_filter_id = v_traffic_mirror_filter_id;
       traffic_mirror_target_id = v_traffic_mirror_target_id;
       virtual_network_id = v_virtual_network_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_virtual_network_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "virtual_network_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_traffic_mirror_target_id
         in
         ("traffic_mirror_target_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_traffic_mirror_filter_id
         in
         ("traffic_mirror_filter_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_float v_session_number in
         ("session_number", arg) :: bnds
       in
       let bnds =
         match v_packet_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "packet_length", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_interface_id
         in
         ("network_interface_id", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ec2_traffic_mirror_session ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_traffic_mirror_session

[@@@deriving.end]

let aws_ec2_traffic_mirror_session ?description ?id ?packet_length
    ?tags ?tags_all ?virtual_network_id ~network_interface_id
    ~session_number ~traffic_mirror_filter_id
    ~traffic_mirror_target_id () : aws_ec2_traffic_mirror_session =
  {
    description;
    id;
    network_interface_id;
    packet_length;
    session_number;
    tags;
    tags_all;
    traffic_mirror_filter_id;
    traffic_mirror_target_id;
    virtual_network_id;
  }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  network_interface_id : string prop;
  owner_id : string prop;
  packet_length : float prop;
  session_number : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  traffic_mirror_filter_id : string prop;
  traffic_mirror_target_id : string prop;
  virtual_network_id : float prop;
}

let make ?description ?id ?packet_length ?tags ?tags_all
    ?virtual_network_id ~network_interface_id ~session_number
    ~traffic_mirror_filter_id ~traffic_mirror_target_id __id =
  let __type = "aws_ec2_traffic_mirror_session" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       network_interface_id =
         Prop.computed __type __id "network_interface_id";
       owner_id = Prop.computed __type __id "owner_id";
       packet_length = Prop.computed __type __id "packet_length";
       session_number = Prop.computed __type __id "session_number";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       traffic_mirror_filter_id =
         Prop.computed __type __id "traffic_mirror_filter_id";
       traffic_mirror_target_id =
         Prop.computed __type __id "traffic_mirror_target_id";
       virtual_network_id =
         Prop.computed __type __id "virtual_network_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_traffic_mirror_session
        (aws_ec2_traffic_mirror_session ?description ?id
           ?packet_length ?tags ?tags_all ?virtual_network_id
           ~network_interface_id ~session_number
           ~traffic_mirror_filter_id ~traffic_mirror_target_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?packet_length ?tags
    ?tags_all ?virtual_network_id ~network_interface_id
    ~session_number ~traffic_mirror_filter_id
    ~traffic_mirror_target_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?packet_length ?tags ?tags_all
      ?virtual_network_id ~network_interface_id ~session_number
      ~traffic_mirror_filter_id ~traffic_mirror_target_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
