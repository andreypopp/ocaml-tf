(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_ipam_resource_discovery__operating_regions = {
  region_name : string;  (** region_name *)
}
[@@deriving yojson_of]
(** aws_vpc_ipam_resource_discovery__operating_regions *)

type aws_vpc_ipam_resource_discovery__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_vpc_ipam_resource_discovery__timeouts *)

type aws_vpc_ipam_resource_discovery = {
  description : string option; [@option]  (** description *)
  tags : (string * string) list option; [@option]  (** tags *)
  operating_regions :
    aws_vpc_ipam_resource_discovery__operating_regions list;
  timeouts : aws_vpc_ipam_resource_discovery__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_ipam_resource_discovery *)

let aws_vpc_ipam_resource_discovery ?description ?tags ?timeouts
    ~operating_regions __resource_id =
  let __resource_type = "aws_vpc_ipam_resource_discovery" in
  let __resource =
    { description; tags; operating_regions; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_ipam_resource_discovery __resource);
  ()
