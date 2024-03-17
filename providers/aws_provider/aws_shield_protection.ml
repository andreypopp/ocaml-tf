(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_shield_protection = {
  name : string;  (** name *)
  resource_arn : string;  (** resource_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_shield_protection *)

let aws_shield_protection ?tags ~name ~resource_arn __resource_id =
  let __resource_type = "aws_shield_protection" in
  let __resource = { name; resource_arn; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_shield_protection __resource);
  ()
