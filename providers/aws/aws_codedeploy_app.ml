(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codedeploy_app = {
  compute_platform : string prop option; [@option]
      (** compute_platform *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_codedeploy_app *)

type t = {
  application_id : string prop;
  arn : string prop;
  compute_platform : string prop;
  github_account_name : string prop;
  id : string prop;
  linked_to_github : bool prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_codedeploy_app ?compute_platform ?id ?tags ?tags_all ~name
    __resource_id =
  let __resource_type = "aws_codedeploy_app" in
  let __resource =
    ({ compute_platform; id; name; tags; tags_all }
      : aws_codedeploy_app)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codedeploy_app __resource);
  let __resource_attributes =
    ({
       application_id =
         Prop.computed __resource_type __resource_id "application_id";
       arn = Prop.computed __resource_type __resource_id "arn";
       compute_platform =
         Prop.computed __resource_type __resource_id
           "compute_platform";
       github_account_name =
         Prop.computed __resource_type __resource_id
           "github_account_name";
       id = Prop.computed __resource_type __resource_id "id";
       linked_to_github =
         Prop.computed __resource_type __resource_id
           "linked_to_github";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
