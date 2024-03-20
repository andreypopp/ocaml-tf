(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_traffic_mirror_session = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  network_interface_id : string prop;  (** network_interface_id *)
  packet_length : float prop option; [@option]  (** packet_length *)
  session_number : float prop;  (** session_number *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  traffic_mirror_filter_id : string prop;
      (** traffic_mirror_filter_id *)
  traffic_mirror_target_id : string prop;
      (** traffic_mirror_target_id *)
  virtual_network_id : float prop option; [@option]
      (** virtual_network_id *)
}
[@@deriving yojson_of]
(** aws_ec2_traffic_mirror_session *)

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
