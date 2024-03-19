(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_dhcp_options = {
  domain_name : string prop option; [@option]  (** domain_name *)
  domain_name_servers : string prop list option; [@option]
      (** domain_name_servers *)
  id : string prop option; [@option]  (** id *)
  netbios_name_servers : string prop list option; [@option]
      (** netbios_name_servers *)
  netbios_node_type : string prop option; [@option]
      (** netbios_node_type *)
  ntp_servers : string prop list option; [@option]
      (** ntp_servers *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_vpc_dhcp_options *)

let aws_vpc_dhcp_options ?domain_name ?domain_name_servers ?id
    ?netbios_name_servers ?netbios_node_type ?ntp_servers ?tags
    ?tags_all () : aws_vpc_dhcp_options =
  {
    domain_name;
    domain_name_servers;
    id;
    netbios_name_servers;
    netbios_node_type;
    ntp_servers;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  domain_name : string prop;
  domain_name_servers : string list prop;
  id : string prop;
  netbios_name_servers : string list prop;
  netbios_node_type : string prop;
  ntp_servers : string list prop;
  owner_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?domain_name ?domain_name_servers ?id
    ?netbios_name_servers ?netbios_node_type ?ntp_servers ?tags
    ?tags_all __resource_id =
  let __resource_type = "aws_vpc_dhcp_options" in
  let __resource =
    aws_vpc_dhcp_options ?domain_name ?domain_name_servers ?id
      ?netbios_name_servers ?netbios_node_type ?ntp_servers ?tags
      ?tags_all ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_dhcp_options __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       domain_name =
         Prop.computed __resource_type __resource_id "domain_name";
       domain_name_servers =
         Prop.computed __resource_type __resource_id
           "domain_name_servers";
       id = Prop.computed __resource_type __resource_id "id";
       netbios_name_servers =
         Prop.computed __resource_type __resource_id
           "netbios_name_servers";
       netbios_node_type =
         Prop.computed __resource_type __resource_id
           "netbios_node_type";
       ntp_servers =
         Prop.computed __resource_type __resource_id "ntp_servers";
       owner_id =
         Prop.computed __resource_type __resource_id "owner_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
