(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dax_parameter_group__parameters = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_dax_parameter_group__parameters *)

type aws_dax_parameter_group = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  parameters : aws_dax_parameter_group__parameters list;
}
[@@deriving yojson_of]
(** aws_dax_parameter_group *)

let aws_dax_parameter_group ?description ~name ~parameters
    __resource_id =
  let __resource_type = "aws_dax_parameter_group" in
  let __resource = { description; name; parameters } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dax_parameter_group __resource);
  ()
