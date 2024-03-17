(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dax_parameter_group__parameters = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_dax_parameter_group__parameters *)

type aws_dax_parameter_group = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  parameters : aws_dax_parameter_group__parameters list;
}
[@@deriving yojson_of]
(** aws_dax_parameter_group *)

let aws_dax_parameter_group ?description ?id ~name ~parameters
    __resource_id =
  let __resource_type = "aws_dax_parameter_group" in
  let __resource = { description; id; name; parameters } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dax_parameter_group __resource);
  ()
