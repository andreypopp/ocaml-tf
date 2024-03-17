(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dax_subnet_group = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  subnet_ids : string prop list;  (** subnet_ids *)
}
[@@deriving yojson_of]
(** aws_dax_subnet_group *)

type t = {
  description : string prop;
  id : string prop;
  name : string prop;
  subnet_ids : string list prop;
  vpc_id : string prop;
}

let aws_dax_subnet_group ?description ?id ~name ~subnet_ids
    __resource_id =
  let __resource_type = "aws_dax_subnet_group" in
  let __resource =
    ({ description; id; name; subnet_ids } : aws_dax_subnet_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dax_subnet_group __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       subnet_ids =
         Prop.computed __resource_type __resource_id "subnet_ids";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
     }
      : t)
  in
  __resource_attributes
