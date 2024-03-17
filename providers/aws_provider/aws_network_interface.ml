(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_network_interface__attachment = {
  attachment_id : string;  (** attachment_id *)
  device_index : float;  (** device_index *)
  instance : string;  (** instance *)
}
[@@deriving yojson_of]
(** aws_network_interface__attachment *)

type aws_network_interface = {
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  interface_type : string option; [@option]  (** interface_type *)
  ipv4_prefix_count : float option; [@option]
      (** ipv4_prefix_count *)
  ipv4_prefixes : string list option; [@option]  (** ipv4_prefixes *)
  ipv6_address_count : float option; [@option]
      (** ipv6_address_count *)
  ipv6_address_list : string list option; [@option]
      (** ipv6_address_list *)
  ipv6_address_list_enabled : bool option; [@option]
      (** ipv6_address_list_enabled *)
  ipv6_addresses : string list option; [@option]
      (** ipv6_addresses *)
  ipv6_prefix_count : float option; [@option]
      (** ipv6_prefix_count *)
  ipv6_prefixes : string list option; [@option]  (** ipv6_prefixes *)
  private_ip : string option; [@option]  (** private_ip *)
  private_ip_list : string list option; [@option]
      (** private_ip_list *)
  private_ip_list_enabled : bool option; [@option]
      (** private_ip_list_enabled *)
  private_ips : string list option; [@option]  (** private_ips *)
  private_ips_count : float option; [@option]
      (** private_ips_count *)
  security_groups : string list option; [@option]
      (** security_groups *)
  source_dest_check : bool option; [@option]
      (** source_dest_check *)
  subnet_id : string;  (** subnet_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  attachment : aws_network_interface__attachment list;
}
[@@deriving yojson_of]
(** aws_network_interface *)

let aws_network_interface ?description ?id ?interface_type
    ?ipv4_prefix_count ?ipv4_prefixes ?ipv6_address_count
    ?ipv6_address_list ?ipv6_address_list_enabled ?ipv6_addresses
    ?ipv6_prefix_count ?ipv6_prefixes ?private_ip ?private_ip_list
    ?private_ip_list_enabled ?private_ips ?private_ips_count
    ?security_groups ?source_dest_check ?tags ?tags_all ~subnet_id
    ~attachment __resource_id =
  let __resource_type = "aws_network_interface" in
  let __resource =
    {
      description;
      id;
      interface_type;
      ipv4_prefix_count;
      ipv4_prefixes;
      ipv6_address_count;
      ipv6_address_list;
      ipv6_address_list_enabled;
      ipv6_addresses;
      ipv6_prefix_count;
      ipv6_prefixes;
      private_ip;
      private_ip_list;
      private_ip_list_enabled;
      private_ips;
      private_ips_count;
      security_groups;
      source_dest_check;
      subnet_id;
      tags;
      tags_all;
      attachment;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_network_interface __resource);
  ()
