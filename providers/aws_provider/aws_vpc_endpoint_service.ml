(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_endpoint_service__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_vpc_endpoint_service__timeouts *)

type aws_vpc_endpoint_service__private_dns_name_configuration = {
  name : string prop;  (** name *)
  state : string prop;  (** state *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]

type aws_vpc_endpoint_service = {
  acceptance_required : bool prop;  (** acceptance_required *)
  allowed_principals : string prop list option; [@option]
      (** allowed_principals *)
  gateway_load_balancer_arns : string prop list option; [@option]
      (** gateway_load_balancer_arns *)
  id : string prop option; [@option]  (** id *)
  network_load_balancer_arns : string prop list option; [@option]
      (** network_load_balancer_arns *)
  private_dns_name : string prop option; [@option]
      (** private_dns_name *)
  supported_ip_address_types : string prop list option; [@option]
      (** supported_ip_address_types *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : aws_vpc_endpoint_service__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_endpoint_service *)

let aws_vpc_endpoint_service ?allowed_principals
    ?gateway_load_balancer_arns ?id ?network_load_balancer_arns
    ?private_dns_name ?supported_ip_address_types ?tags ?tags_all
    ?timeouts ~acceptance_required __resource_id =
  let __resource_type = "aws_vpc_endpoint_service" in
  let __resource =
    {
      acceptance_required;
      allowed_principals;
      gateway_load_balancer_arns;
      id;
      network_load_balancer_arns;
      private_dns_name;
      supported_ip_address_types;
      tags;
      tags_all;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_endpoint_service __resource);
  ()
