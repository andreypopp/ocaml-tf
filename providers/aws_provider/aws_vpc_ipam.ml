(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_ipam__operating_regions = {
  region_name : string prop;  (** region_name *)
}
[@@deriving yojson_of]
(** aws_vpc_ipam__operating_regions *)

type aws_vpc_ipam__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_vpc_ipam__timeouts *)

type aws_vpc_ipam = {
  cascade : bool prop option; [@option]  (** cascade *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
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
