(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type accepter = {
  allow_remote_vpc_dns_resolution : bool prop option; [@option]
      (** allow_remote_vpc_dns_resolution *)
}
[@@deriving yojson_of]
(** accepter *)

type requester = {
  allow_remote_vpc_dns_resolution : bool prop option; [@option]
      (** allow_remote_vpc_dns_resolution *)
}
[@@deriving yojson_of]
(** requester *)

type aws_vpc_peering_connection_options = {
  id : string prop option; [@option]  (** id *)
  vpc_peering_connection_id : string prop;
      (** vpc_peering_connection_id *)
  accepter : accepter list;
  requester : requester list;
}
[@@deriving yojson_of]
(** aws_vpc_peering_connection_options *)

let accepter ?allow_remote_vpc_dns_resolution () : accepter =
  { allow_remote_vpc_dns_resolution }

let requester ?allow_remote_vpc_dns_resolution () : requester =
  { allow_remote_vpc_dns_resolution }

let aws_vpc_peering_connection_options ?id ~vpc_peering_connection_id
    ~accepter ~requester () : aws_vpc_peering_connection_options =
  { id; vpc_peering_connection_id; accepter; requester }

type t = {
  id : string prop;
  vpc_peering_connection_id : string prop;
}

let register ?tf_module ?id ~vpc_peering_connection_id ~accepter
    ~requester __resource_id =
  let __resource_type = "aws_vpc_peering_connection_options" in
  let __resource =
    aws_vpc_peering_connection_options ?id ~vpc_peering_connection_id
      ~accepter ~requester ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_peering_connection_options __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       vpc_peering_connection_id =
         Prop.computed __resource_type __resource_id
           "vpc_peering_connection_id";
     }
      : t)
  in
  __resource_attributes
