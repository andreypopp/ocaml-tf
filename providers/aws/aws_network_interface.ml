(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type attachment = {
  device_index : float prop;  (** device_index *)
  instance : string prop;  (** instance *)
}
[@@deriving yojson_of]
(** attachment *)

type aws_network_interface = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  interface_type : string prop option; [@option]
      (** interface_type *)
  ipv4_prefix_count : float prop option; [@option]
      (** ipv4_prefix_count *)
  ipv4_prefixes : string prop list option; [@option]
      (** ipv4_prefixes *)
  ipv6_address_count : float prop option; [@option]
      (** ipv6_address_count *)
  ipv6_address_list : string prop list option; [@option]
      (** ipv6_address_list *)
  ipv6_address_list_enabled : bool prop option; [@option]
      (** ipv6_address_list_enabled *)
  ipv6_addresses : string prop list option; [@option]
      (** ipv6_addresses *)
  ipv6_prefix_count : float prop option; [@option]
      (** ipv6_prefix_count *)
  ipv6_prefixes : string prop list option; [@option]
      (** ipv6_prefixes *)
  private_ip : string prop option; [@option]  (** private_ip *)
  private_ip_list : string prop list option; [@option]
      (** private_ip_list *)
  private_ip_list_enabled : bool prop option; [@option]
      (** private_ip_list_enabled *)
  private_ips : string prop list option; [@option]
      (** private_ips *)
  private_ips_count : float prop option; [@option]
      (** private_ips_count *)
  security_groups : string prop list option; [@option]
      (** security_groups *)
  source_dest_check : bool prop option; [@option]
      (** source_dest_check *)
  subnet_id : string prop;  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  attachment : attachment list;
}
[@@deriving yojson_of]
(** aws_network_interface *)

let attachment ~device_index ~instance () : attachment =
  { device_index; instance }

let aws_network_interface ?description ?id ?interface_type
    ?ipv4_prefix_count ?ipv4_prefixes ?ipv6_address_count
    ?ipv6_address_list ?ipv6_address_list_enabled ?ipv6_addresses
    ?ipv6_prefix_count ?ipv6_prefixes ?private_ip ?private_ip_list
    ?private_ip_list_enabled ?private_ips ?private_ips_count
    ?security_groups ?source_dest_check ?tags ?tags_all ~subnet_id
    ~attachment () : aws_network_interface =
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

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  interface_type : string prop;
  ipv4_prefix_count : float prop;
  ipv4_prefixes : string list prop;
  ipv6_address_count : float prop;
  ipv6_address_list : string list prop;
  ipv6_address_list_enabled : bool prop;
  ipv6_addresses : string list prop;
  ipv6_prefix_count : float prop;
  ipv6_prefixes : string list prop;
  mac_address : string prop;
  outpost_arn : string prop;
  owner_id : string prop;
  private_dns_name : string prop;
  private_ip : string prop;
  private_ip_list : string list prop;
  private_ip_list_enabled : bool prop;
  private_ips : string list prop;
  private_ips_count : float prop;
  security_groups : string list prop;
  source_dest_check : bool prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?description ?id ?interface_type
    ?ipv4_prefix_count ?ipv4_prefixes ?ipv6_address_count
    ?ipv6_address_list ?ipv6_address_list_enabled ?ipv6_addresses
    ?ipv6_prefix_count ?ipv6_prefixes ?private_ip ?private_ip_list
    ?private_ip_list_enabled ?private_ips ?private_ips_count
    ?security_groups ?source_dest_check ?tags ?tags_all ~subnet_id
    ~attachment __resource_id =
  let __resource_type = "aws_network_interface" in
  let __resource =
    aws_network_interface ?description ?id ?interface_type
      ?ipv4_prefix_count ?ipv4_prefixes ?ipv6_address_count
      ?ipv6_address_list ?ipv6_address_list_enabled ?ipv6_addresses
      ?ipv6_prefix_count ?ipv6_prefixes ?private_ip ?private_ip_list
      ?private_ip_list_enabled ?private_ips ?private_ips_count
      ?security_groups ?source_dest_check ?tags ?tags_all ~subnet_id
      ~attachment ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_network_interface __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       interface_type =
         Prop.computed __resource_type __resource_id "interface_type";
       ipv4_prefix_count =
         Prop.computed __resource_type __resource_id
           "ipv4_prefix_count";
       ipv4_prefixes =
         Prop.computed __resource_type __resource_id "ipv4_prefixes";
       ipv6_address_count =
         Prop.computed __resource_type __resource_id
           "ipv6_address_count";
       ipv6_address_list =
         Prop.computed __resource_type __resource_id
           "ipv6_address_list";
       ipv6_address_list_enabled =
         Prop.computed __resource_type __resource_id
           "ipv6_address_list_enabled";
       ipv6_addresses =
         Prop.computed __resource_type __resource_id "ipv6_addresses";
       ipv6_prefix_count =
         Prop.computed __resource_type __resource_id
           "ipv6_prefix_count";
       ipv6_prefixes =
         Prop.computed __resource_type __resource_id "ipv6_prefixes";
       mac_address =
         Prop.computed __resource_type __resource_id "mac_address";
       outpost_arn =
         Prop.computed __resource_type __resource_id "outpost_arn";
       owner_id =
         Prop.computed __resource_type __resource_id "owner_id";
       private_dns_name =
         Prop.computed __resource_type __resource_id
           "private_dns_name";
       private_ip =
         Prop.computed __resource_type __resource_id "private_ip";
       private_ip_list =
         Prop.computed __resource_type __resource_id
           "private_ip_list";
       private_ip_list_enabled =
         Prop.computed __resource_type __resource_id
           "private_ip_list_enabled";
       private_ips =
         Prop.computed __resource_type __resource_id "private_ips";
       private_ips_count =
         Prop.computed __resource_type __resource_id
           "private_ips_count";
       security_groups =
         Prop.computed __resource_type __resource_id
           "security_groups";
       source_dest_check =
         Prop.computed __resource_type __resource_id
           "source_dest_check";
       subnet_id =
         Prop.computed __resource_type __resource_id "subnet_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
