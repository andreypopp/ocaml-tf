(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_networkmanager_connect_peer__bgp_options = {
  peer_asn : float prop option; [@option]  (** peer_asn *)
}
[@@deriving yojson_of]
(** aws_networkmanager_connect_peer__bgp_options *)

type aws_networkmanager_connect_peer__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_networkmanager_connect_peer__timeouts *)

type aws_networkmanager_connect_peer__configuration__bgp_configurations = {
  core_network_address : string prop;  (** core_network_address *)
  core_network_asn : float prop;  (** core_network_asn *)
  peer_address : string prop;  (** peer_address *)
  peer_asn : float prop;  (** peer_asn *)
}
[@@deriving yojson_of]

type aws_networkmanager_connect_peer__configuration = {
  bgp_configurations :
    aws_networkmanager_connect_peer__configuration__bgp_configurations
    list;
      (** bgp_configurations *)
  core_network_address : string prop;  (** core_network_address *)
  inside_cidr_blocks : string prop list;  (** inside_cidr_blocks *)
  peer_address : string prop;  (** peer_address *)
  protocol : string prop;  (** protocol *)
}
[@@deriving yojson_of]

type aws_networkmanager_connect_peer = {
  connect_attachment_id : string prop;  (** connect_attachment_id *)
  core_network_address : string prop option; [@option]
      (** core_network_address *)
  id : string prop option; [@option]  (** id *)
  inside_cidr_blocks : string prop list option; [@option]
      (** inside_cidr_blocks *)
  peer_address : string prop;  (** peer_address *)
  subnet_arn : string prop option; [@option]  (** subnet_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  bgp_options : aws_networkmanager_connect_peer__bgp_options list;
  timeouts : aws_networkmanager_connect_peer__timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_connect_peer *)

type t = {
  arn : string prop;
  configuration :
    aws_networkmanager_connect_peer__configuration list prop;
  connect_attachment_id : string prop;
  connect_peer_id : string prop;
  core_network_address : string prop;
  core_network_id : string prop;
  created_at : string prop;
  edge_location : string prop;
  id : string prop;
  inside_cidr_blocks : string list prop;
  peer_address : string prop;
  state : string prop;
  subnet_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_networkmanager_connect_peer ?core_network_address ?id
    ?inside_cidr_blocks ?subnet_arn ?tags ?tags_all ?timeouts
    ~connect_attachment_id ~peer_address ~bgp_options __resource_id =
  let __resource_type = "aws_networkmanager_connect_peer" in
  let __resource =
    ({
       connect_attachment_id;
       core_network_address;
       id;
       inside_cidr_blocks;
       peer_address;
       subnet_arn;
       tags;
       tags_all;
       bgp_options;
       timeouts;
     }
      : aws_networkmanager_connect_peer)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_connect_peer __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       configuration =
         Prop.computed __resource_type __resource_id "configuration";
       connect_attachment_id =
         Prop.computed __resource_type __resource_id
           "connect_attachment_id";
       connect_peer_id =
         Prop.computed __resource_type __resource_id
           "connect_peer_id";
       core_network_address =
         Prop.computed __resource_type __resource_id
           "core_network_address";
       core_network_id =
         Prop.computed __resource_type __resource_id
           "core_network_id";
       created_at =
         Prop.computed __resource_type __resource_id "created_at";
       edge_location =
         Prop.computed __resource_type __resource_id "edge_location";
       id = Prop.computed __resource_type __resource_id "id";
       inside_cidr_blocks =
         Prop.computed __resource_type __resource_id
           "inside_cidr_blocks";
       peer_address =
         Prop.computed __resource_type __resource_id "peer_address";
       state = Prop.computed __resource_type __resource_id "state";
       subnet_arn =
         Prop.computed __resource_type __resource_id "subnet_arn";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
