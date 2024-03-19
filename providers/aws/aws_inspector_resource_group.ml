(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_inspector_resource_group = {
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list;  (** tags *)
}
[@@deriving yojson_of]
(** aws_inspector_resource_group *)

let aws_inspector_resource_group ?id ~tags () :
    aws_inspector_resource_group =
  { id; tags }

type t = {
  arn : string prop;
  id : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?id ~tags __resource_id =
  let __resource_type = "aws_inspector_resource_group" in
  let __resource = aws_inspector_resource_group ?id ~tags () in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_inspector_resource_group __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
