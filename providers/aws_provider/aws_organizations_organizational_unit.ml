(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_organizations_organizational_unit__accounts = {
  arn : string;  (** arn *)
  email : string;  (** email *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_organizations_organizational_unit = {
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  parent_id : string;  (** parent_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_organizations_organizational_unit *)

let aws_organizations_organizational_unit ?id ?tags ?tags_all ~name
    ~parent_id __resource_id =
  let __resource_type = "aws_organizations_organizational_unit" in
  let __resource = { id; name; parent_id; tags; tags_all } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_organizations_organizational_unit __resource);
  ()
