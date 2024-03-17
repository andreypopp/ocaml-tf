(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_saml_provider = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  saml_metadata_document : string prop;
      (** saml_metadata_document *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_iam_saml_provider *)

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  saml_metadata_document : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  valid_until : string prop;
}

let aws_iam_saml_provider ?id ?tags ?tags_all ~name
    ~saml_metadata_document __resource_id =
  let __resource_type = "aws_iam_saml_provider" in
  let __resource =
    ({ id; name; saml_metadata_document; tags; tags_all }
      : aws_iam_saml_provider)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_saml_provider __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       saml_metadata_document =
         Prop.computed __resource_type __resource_id
           "saml_metadata_document";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       valid_until =
         Prop.computed __resource_type __resource_id "valid_until";
     }
      : t)
  in
  __resource_attributes
