(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_ipam__operating_regions = {
  region_name : string;  (** region_name *)
}
[@@deriving yojson_of]
(** aws_vpc_ipam__operating_regions *)

type aws_vpc_ipam__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_vpc_ipam__timeouts *)

type aws_vpc_ipam = {
  cascade : bool option; [@option]  (** cascade *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  operating_regions : aws_vpc_ipam__operating_regions list;
  timeouts : aws_vpc_ipam__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_ipam *)

let aws_vpc_ipam ?cascade ?description ?id ?tags ?tags_all ?timeouts
    ~operating_regions __resource_id =
  let __resource_type = "aws_vpc_ipam" in
  let __resource =
    {
      cascade;
      description;
      id;
      tags;
      tags_all;
      operating_regions;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_ipam __resource);
  ()
