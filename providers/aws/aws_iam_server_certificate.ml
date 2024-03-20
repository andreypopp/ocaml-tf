(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_server_certificate = {
  certificate_body : string prop;  (** certificate_body *)
  certificate_chain : string prop option; [@option]
      (** certificate_chain *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  path : string prop option; [@option]  (** path *)
  private_key : string prop;  (** private_key *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_iam_server_certificate *)

let aws_iam_server_certificate ?certificate_chain ?id ?name
    ?name_prefix ?path ?tags ?tags_all ~certificate_body ~private_key
    () : aws_iam_server_certificate =
  {
    certificate_body;
    certificate_chain;
    id;
    name;
    name_prefix;
    path;
    private_key;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  certificate_body : string prop;
  certificate_chain : string prop;
  expiration : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  path : string prop;
  private_key : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  upload_date : string prop;
}

let make ?certificate_chain ?id ?name ?name_prefix ?path ?tags
    ?tags_all ~certificate_body ~private_key __id =
  let __type = "aws_iam_server_certificate" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       certificate_body =
         Prop.computed __type __id "certificate_body";
       certificate_chain =
         Prop.computed __type __id "certificate_chain";
       expiration = Prop.computed __type __id "expiration";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       path = Prop.computed __type __id "path";
       private_key = Prop.computed __type __id "private_key";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       upload_date = Prop.computed __type __id "upload_date";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_server_certificate
        (aws_iam_server_certificate ?certificate_chain ?id ?name
           ?name_prefix ?path ?tags ?tags_all ~certificate_body
           ~private_key ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_chain ?id ?name ?name_prefix
    ?path ?tags ?tags_all ~certificate_body ~private_key __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_chain ?id ?name ?name_prefix ?path ?tags
      ?tags_all ~certificate_body ~private_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
