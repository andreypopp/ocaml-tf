(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_organizations_resource_policy = {
  content : string;  (** content *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_organizations_resource_policy *)

let aws_organizations_resource_policy ?tags ~content __resource_id =
  let __resource_type = "aws_organizations_resource_policy" in
  let __resource = { content; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_organizations_resource_policy __resource);
  ()
