(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_dhcp_options = {
  domain_name : string option; [@option]  (** domain_name *)
  domain_name_servers : string list option; [@option]
      (** domain_name_servers *)
  netbios_name_servers : string list option; [@option]
      (** netbios_name_servers *)
  netbios_node_type : string option; [@option]
      (** netbios_node_type *)
  ntp_servers : string list option; [@option]  (** ntp_servers *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_vpc_dhcp_options *)

let aws_vpc_dhcp_options ?domain_name ?domain_name_servers
    ?netbios_name_servers ?netbios_node_type ?ntp_servers ?tags
    __resource_id =
  let __resource_type = "aws_vpc_dhcp_options" in
  let __resource =
    {
      domain_name;
      domain_name_servers;
      netbios_name_servers;
      netbios_node_type;
      ntp_servers;
      tags;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_dhcp_options __resource);
  ()
