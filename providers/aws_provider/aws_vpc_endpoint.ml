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
  private_dns_enabled : bool option; [@option]
      (** private_dns_enabled *)
  service_name : string;  (** service_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  vpc_endpoint_type : string option; [@option]
      (** vpc_endpoint_type *)
  vpc_id : string;  (** vpc_id *)
  dns_options : aws_vpc_endpoint__dns_options list;
  timeouts : aws_vpc_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_endpoint *)

let aws_vpc_endpoint ?auto_accept ?private_dns_enabled ?tags
    ?vpc_endpoint_type ?timeouts ~service_name ~vpc_id ~dns_options
    __resource_id =
  let __resource_type = "aws_vpc_endpoint" in
  let __resource =
    {
      auto_accept;
      private_dns_enabled;
      service_name;
      tags;
      vpc_endpoint_type;
      vpc_id;
      dns_options;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_endpoint __resource);
  ()
