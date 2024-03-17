(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_endpoint_subnet_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_vpc_endpoint_subnet_association__timeouts *)

type aws_vpc_endpoint_subnet_association = {
  id : string prop option; [@option]  (** id *)
  subnet_id : string prop;  (** subnet_id *)
  vpc_endpoint_id : string prop;  (** vpc_endpoint_id *)
  timeouts : aws_vpc_endpoint_subnet_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_endpoint_subnet_association *)

type t = {
  id : string prop;
  subnet_id : string prop;
  vpc_endpoint_id : string prop;
}

let aws_vpc_endpoint_subnet_association ?id ?timeouts ~subnet_id
    ~vpc_endpoint_id __resource_id =
  let __resource_type = "aws_vpc_endpoint_subnet_association" in
  let __resource =
    ({ id; subnet_id; vpc_endpoint_id; timeouts }
      : aws_vpc_endpoint_subnet_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_endpoint_subnet_association __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       subnet_id =
         Prop.computed __resource_type __resource_id "subnet_id";
       vpc_endpoint_id =
         Prop.computed __resource_type __resource_id
           "vpc_endpoint_id";
     }
      : t)
  in
  __resource_attributes
