(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpclattice_service_network_service_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_vpclattice_service_network_service_association__timeouts *)

type aws_vpclattice_service_network_service_association__dns_entry = {
  domain_name : string;  (** domain_name *)
  hosted_zone_id : string;  (** hosted_zone_id *)
}
[@@deriving yojson_of]

type aws_vpclattice_service_network_service_association = {
  id : string option; [@option]  (** id *)
  service_identifier : string;  (** service_identifier *)
  service_network_identifier : string;
      (** service_network_identifier *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  timeouts :
    aws_vpclattice_service_network_service_association__timeouts
    option;
}
[@@deriving yojson_of]
(** aws_vpclattice_service_network_service_association *)

let aws_vpclattice_service_network_service_association ?id ?tags
    ?tags_all ?timeouts ~service_identifier
    ~service_network_identifier __resource_id =
  let __resource_type =
    "aws_vpclattice_service_network_service_association"
  in
  let __resource =
    {
      id;
      service_identifier;
      service_network_identifier;
      tags;
      tags_all;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpclattice_service_network_service_association
       __resource);
  ()
