(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_vpclattice_service_network_vpc_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_vpclattice_service_network_vpc_association__timeouts *)

type aws_vpclattice_service_network_vpc_association = {
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  service_network_identifier : string;
      (** service_network_identifier *)
  tags : (string * string) list option; [@option]  (** tags *)
  vpc_identifier : string;  (** vpc_identifier *)
  timeouts :
    aws_vpclattice_service_network_vpc_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpclattice_service_network_vpc_association *)

let aws_vpclattice_service_network_vpc_association
    ?security_group_ids ?tags ?timeouts ~service_network_identifier
    ~vpc_identifier __resource_id =
  let __resource_type =
    "aws_vpclattice_service_network_vpc_association"
  in
  let __resource =
    {
      security_group_ids;
      service_network_identifier;
      tags;
      vpc_identifier;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpclattice_service_network_vpc_association
       __resource);
  ()
