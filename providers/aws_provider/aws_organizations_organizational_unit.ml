(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_organizations_organizational_unit__accounts = {
  arn : string prop;  (** arn *)
  email : string prop;  (** email *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]

type aws_organizations_organizational_unit = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  parent_id : string prop;  (** parent_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_organizations_organizational_unit *)

type t = {
  accounts :
    aws_organizations_organizational_unit__accounts list prop;
  arn : string prop;
  id : string prop;
  name : string prop;
  parent_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_organizations_organizational_unit ?id ?tags ?tags_all ~name
    ~parent_id __resource_id =
  let __resource_type = "aws_organizations_organizational_unit" in
  let __resource =
    ({ id; name; parent_id; tags; tags_all }
      : aws_organizations_organizational_unit)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_organizations_organizational_unit __resource);
  let __resource_attributes =
    ({
       accounts =
         Prop.computed __resource_type __resource_id "accounts";
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       parent_id =
         Prop.computed __resource_type __resource_id "parent_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
