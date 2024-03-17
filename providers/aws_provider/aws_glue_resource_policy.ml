(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glue_resource_policy = {
  enable_hybrid : string prop option; [@option]  (** enable_hybrid *)
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** aws_glue_resource_policy *)

let aws_glue_resource_policy ?enable_hybrid ?id ~policy __resource_id
    =
  let __resource_type = "aws_glue_resource_policy" in
  let __resource = { enable_hybrid; id; policy } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_resource_policy __resource);
  ()
