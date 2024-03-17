(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_endpoint__dns_options = {
  dns_record_ip_type : string option; [@option]
      (** dns_record_ip_type *)
  private_dns_only_for_inbound_resolver_endpoint : bool option;
      [@option]
      (** private_dns_only_for_inbound_resolver_endpoint *)
}
[@@deriving yojson_of]
(** aws_vpc_endpoint__dns_options *)

type aws_vpc_endpoint__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_vpc_endpoint__timeouts *)

type aws_vpc_endpoint__dns_entry = {
  dns_name : string;  (** dns_name *)
  hosted_zone_id : string;  (** hosted_zone_id *)
}
[@@deriving yojson_of]

type aws_vpc_endpoint = {
  auto_accept : bool option; [@option]  (** auto_accept *)
  id : string option; [@option]  (** id *)
  ip_address_type : string option; [@option]  (** ip_address_type *)
  policy : string option; [@option]  (** policy *)
  private_dns_enabled : bool option; [@option]
      (** private_dns_enabled *)
  route_table_ids : string list option; [@option]
      (** route_table_ids *)
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  service_name : string;  (** service_name *)
  subnet_ids : string list option; [@option]  (** subnet_ids *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  vpc_endpoint_type : string option; [@option]
      (** vpc_endpoint_type *)
  vpc_id : string;  (** vpc_id *)
  dns_options : aws_vpc_endpoint__dns_options list;
  timeouts : aws_vpc_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_endpoint *)

let aws_vpc_endpoint ?auto_accept ?id ?ip_address_type ?policy
    ?private_dns_enabled ?route_table_ids ?security_group_ids
    ?subnet_ids ?tags ?tags_all ?vpc_endpoint_type ?timeouts
    ~service_name ~vpc_id ~dns_options __resource_id =
  let __resource_type = "aws_vpc_endpoint" in
  let __resource =
    {
      auto_accept;
      id;
      ip_address_type;
      policy;
      private_dns_enabled;
      route_table_ids;
      security_group_ids;
      service_name;
      subnet_ids;
      tags;
      tags_all;
      vpc_endpoint_type;
      vpc_id;
      dns_options;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_endpoint __resource);
  ()
