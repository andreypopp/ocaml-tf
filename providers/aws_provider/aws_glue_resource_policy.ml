(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_glue_resource_policy = {
  enable_hybrid : string option; [@option]  (** enable_hybrid *)
  policy : string;  (** policy *)
}
[@@deriving yojson_of]
(** aws_glue_resource_policy *)

let aws_glue_resource_policy ?enable_hybrid ~policy __resource_id =
  let __resource_type = "aws_glue_resource_policy" in
  let __resource = { enable_hybrid; policy } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_resource_policy __resource);
  ()
