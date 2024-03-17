(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_shield_protection = {
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  resource_arn : string;  (** resource_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_shield_protection *)

let aws_shield_protection ?id ?tags ?tags_all ~name ~resource_arn
    __resource_id =
  let __resource_type = "aws_shield_protection" in
  let __resource = { id; name; resource_arn; tags; tags_all } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_shield_protection __resource);
  ()
