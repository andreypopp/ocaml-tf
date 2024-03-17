(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_connect_security_profile = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** instance_id *)
  name : string prop;  (** name *)
  permissions : string prop list option; [@option]
      (** permissions *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_connect_security_profile *)

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
  organization_resource_id : string prop;
  permissions : string list prop;
  security_profile_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_connect_security_profile ?description ?id ?permissions ?tags
    ?tags_all ~instance_id ~name __resource_id =
  let __resource_type = "aws_connect_security_profile" in
  let __resource =
    ({
       description;
       id;
       instance_id;
       name;
       permissions;
       tags;
       tags_all;
     }
      : aws_connect_security_profile)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_security_profile __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       instance_id =
         Prop.computed __resource_type __resource_id "instance_id";
       name = Prop.computed __resource_type __resource_id "name";
       organization_resource_id =
         Prop.computed __resource_type __resource_id
           "organization_resource_id";
       permissions =
         Prop.computed __resource_type __resource_id "permissions";
       security_profile_id =
         Prop.computed __resource_type __resource_id
           "security_profile_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
