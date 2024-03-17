(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_ipam_resource_discovery_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_vpc_ipam_resource_discovery_association__timeouts *)

type aws_vpc_ipam_resource_discovery_association = {
  ipam_id : string;  (** ipam_id *)
  ipam_resource_discovery_id : string;
      (** ipam_resource_discovery_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts :
    aws_vpc_ipam_resource_discovery_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_ipam_resource_discovery_association *)

let aws_vpc_ipam_resource_discovery_association ?tags ?timeouts
    ~ipam_id ~ipam_resource_discovery_id __resource_id =
  let __resource_type =
    "aws_vpc_ipam_resource_discovery_association"
  in
  let __resource =
    { ipam_id; ipam_resource_discovery_id; tags; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_ipam_resource_discovery_association __resource);
  ()
