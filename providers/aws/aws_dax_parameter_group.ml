(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type parameters = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** parameters *)

type aws_dax_parameter_group = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  parameters : parameters list;
}
[@@deriving yojson_of]
(** aws_dax_parameter_group *)

let parameters ~name ~value () : parameters = { name; value }

let aws_dax_parameter_group ?description ?id ~name ~parameters () :
    aws_dax_parameter_group =
  { description; id; name; parameters }

type t = {
  description : string prop;
  id : string prop;
  name : string prop;
}

let register ?tf_module ?description ?id ~name ~parameters
    __resource_id =
  let __resource_type = "aws_dax_parameter_group" in
  let __resource =
    aws_dax_parameter_group ?description ?id ~name ~parameters ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dax_parameter_group __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
