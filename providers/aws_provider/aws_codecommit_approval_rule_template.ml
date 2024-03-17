(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codecommit_approval_rule_template = {
  content : string prop;  (** content *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_codecommit_approval_rule_template *)

type t = {
  approval_rule_template_id : string prop;
  content : string prop;
  creation_date : string prop;
  description : string prop;
  id : string prop;
  last_modified_date : string prop;
  last_modified_user : string prop;
  name : string prop;
  rule_content_sha256 : string prop;
}

let aws_codecommit_approval_rule_template ?description ?id ~content
    ~name __resource_id =
  let __resource_type = "aws_codecommit_approval_rule_template" in
  let __resource =
    ({ content; description; id; name }
      : aws_codecommit_approval_rule_template)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codecommit_approval_rule_template __resource);
  let __resource_attributes =
    ({
       approval_rule_template_id =
         Prop.computed __resource_type __resource_id
           "approval_rule_template_id";
       content =
         Prop.computed __resource_type __resource_id "content";
       creation_date =
         Prop.computed __resource_type __resource_id "creation_date";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       last_modified_date =
         Prop.computed __resource_type __resource_id
           "last_modified_date";
       last_modified_user =
         Prop.computed __resource_type __resource_id
           "last_modified_user";
       name = Prop.computed __resource_type __resource_id "name";
       rule_content_sha256 =
         Prop.computed __resource_type __resource_id
           "rule_content_sha256";
     }
      : t)
  in
  __resource_attributes
