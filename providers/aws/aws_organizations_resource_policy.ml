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

let aws_organizations_resource_policy ?id ?tags ?tags_all ~content ()
    : aws_organizations_resource_policy =
  { content; id; tags; tags_all }

type t = {
  arn : string prop;
  content : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?tags_all ~content __resource_id =
  let __resource_type = "aws_organizations_resource_policy" in
  let __resource =
    aws_organizations_resource_policy ?id ?tags ?tags_all ~content ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_organizations_resource_policy __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       content =
         Prop.computed __resource_type __resource_id "content";
       id = Prop.computed __resource_type __resource_id "id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
