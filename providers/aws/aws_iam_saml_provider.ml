(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
    ~saml_metadata_document () : aws_iam_saml_provider =
  { id; name; saml_metadata_document; tags; tags_all }

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  saml_metadata_document : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  valid_until : string prop;
}

let make ?id ?tags ?tags_all ~name ~saml_metadata_document __id =
  let __type = "aws_iam_saml_provider" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       saml_metadata_document =
         Prop.computed __type __id "saml_metadata_document";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       valid_until = Prop.computed __type __id "valid_until";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_saml_provider
        (aws_iam_saml_provider ?id ?tags ?tags_all ~name
           ~saml_metadata_document ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~name
    ~saml_metadata_document __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~name ~saml_metadata_document __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
