(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ecs_tag = {
  id : string prop option; [@option]  (** id *)
  key : string prop;  (** key *)
  resource_arn : string prop;  (** resource_arn *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_ecs_tag *)

let aws_ecs_tag ?id ~key ~resource_arn ~value __resource_id =
  let __resource_type = "aws_ecs_tag" in
  let __resource = { id; key; resource_arn; value } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ecs_tag __resource);
  ()
