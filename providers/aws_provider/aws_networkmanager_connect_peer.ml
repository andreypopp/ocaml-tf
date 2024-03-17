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

let aws_networkmanager_connect_peer ?core_network_address ?id
    ?inside_cidr_blocks ?subnet_arn ?tags ?tags_all ?timeouts
    ~connect_attachment_id ~peer_address ~bgp_options __resource_id =
  let __resource_type = "aws_networkmanager_connect_peer" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_connect_peer __resource);
  ()
