(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let aws_ec2_traffic_mirror_session ?description ?id ?packet_length
    ?tags ?tags_all ?virtual_network_id ~network_interface_id
    ~session_number ~traffic_mirror_filter_id
    ~traffic_mirror_target_id __resource_id =
  let __resource_type = "aws_ec2_traffic_mirror_session" in
  let __resource =
    ({
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
      : aws_ec2_traffic_mirror_session)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_traffic_mirror_session __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       network_interface_id =
         Prop.computed __resource_type __resource_id
           "network_interface_id";
       owner_id =
         Prop.computed __resource_type __resource_id "owner_id";
       packet_length =
         Prop.computed __resource_type __resource_id "packet_length";
       session_number =
         Prop.computed __resource_type __resource_id "session_number";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       traffic_mirror_filter_id =
         Prop.computed __resource_type __resource_id
           "traffic_mirror_filter_id";
       traffic_mirror_target_id =
         Prop.computed __resource_type __resource_id
           "traffic_mirror_target_id";
       virtual_network_id =
         Prop.computed __resource_type __resource_id
           "virtual_network_id";
     }
      : t)
  in
  __resource_attributes
