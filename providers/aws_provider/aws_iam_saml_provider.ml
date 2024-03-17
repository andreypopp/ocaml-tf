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

let aws_iam_saml_provider ?id ?tags ?tags_all ~name
    ~saml_metadata_document __resource_id =
  let __resource_type = "aws_iam_saml_provider" in
  let __resource =
    { id; name; saml_metadata_document; tags; tags_all }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_saml_provider __resource);
  ()
