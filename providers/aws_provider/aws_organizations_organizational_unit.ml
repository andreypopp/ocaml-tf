(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_organizations_organizational_unit__accounts = {
  arn : string;  (** arn *)
  email : string;  (** email *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_organizations_organizational_unit = {
  name : string;  (** name *)
  parent_id : string;  (** parent_id *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_organizations_organizational_unit *)

let aws_organizations_organizational_unit ?tags ~name ~parent_id
    __resource_id =
  let __resource_type = "aws_organizations_organizational_unit" in
  let __resource = { name; parent_id; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_organizations_organizational_unit __resource);
  ()
