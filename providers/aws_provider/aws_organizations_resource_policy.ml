(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_organizations_resource_policy = {
  content : string prop;  (** content *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_organizations_resource_policy *)

let aws_organizations_resource_policy ?id ?tags ?tags_all ~content
    __resource_id =
  let __resource_type = "aws_organizations_resource_policy" in
  let __resource = { content; id; tags; tags_all } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_organizations_resource_policy __resource);
  ()
