(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_egress_only_internet_gateway = {
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_egress_only_internet_gateway *)

type t = {
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let aws_egress_only_internet_gateway ?id ?tags ?tags_all ~vpc_id
    __resource_id =
  let __resource_type = "aws_egress_only_internet_gateway" in
  let __resource =
    ({ id; tags; tags_all; vpc_id }
      : aws_egress_only_internet_gateway)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_egress_only_internet_gateway __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
     }
      : t)
  in
  __resource_attributes
