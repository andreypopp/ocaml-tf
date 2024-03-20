(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type s3_path = {
  bucket : string prop;  (** bucket *)
  key : string prop;  (** key *)
}
[@@deriving yojson_of]
(** s3_path *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_kendra_faq = {
  description : string prop option; [@option]  (** description *)
  file_format : string prop option; [@option]  (** file_format *)
  id : string prop option; [@option]  (** id *)
  index_id : string prop;  (** index_id *)
  language_code : string prop option; [@option]  (** language_code *)
  name : string prop;  (** name *)
  role_arn : string prop;  (** role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  s3_path : s3_path list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_kendra_faq *)

let s3_path ~bucket ~key () : s3_path = { bucket; key }
let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_kendra_faq ?description ?file_format ?id ?language_code ?tags
    ?tags_all ?timeouts ~index_id ~name ~role_arn ~s3_path () :
    aws_kendra_faq =
  {
    description;
    file_format;
    id;
    index_id;
    language_code;
    name;
    role_arn;
    tags;
    tags_all;
    s3_path;
    timeouts;
  }

type t = {
  arn : string prop;
  created_at : string prop;
  description : string prop;
  error_message : string prop;
  faq_id : string prop;
  file_format : string prop;
  id : string prop;
  index_id : string prop;
  language_code : string prop;
  name : string prop;
  role_arn : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  updated_at : string prop;
}

let make ?description ?file_format ?id ?language_code ?tags ?tags_all
    ?timeouts ~index_id ~name ~role_arn ~s3_path __id =
  let __type = "aws_kendra_faq" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       created_at = Prop.computed __type __id "created_at";
       description = Prop.computed __type __id "description";
       error_message = Prop.computed __type __id "error_message";
       faq_id = Prop.computed __type __id "faq_id";
       file_format = Prop.computed __type __id "file_format";
       id = Prop.computed __type __id "id";
       index_id = Prop.computed __type __id "index_id";
       language_code = Prop.computed __type __id "language_code";
       name = Prop.computed __type __id "name";
       role_arn = Prop.computed __type __id "role_arn";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       updated_at = Prop.computed __type __id "updated_at";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kendra_faq
        (aws_kendra_faq ?description ?file_format ?id ?language_code
           ?tags ?tags_all ?timeouts ~index_id ~name ~role_arn
           ~s3_path ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?file_format ?id ?language_code
    ?tags ?tags_all ?timeouts ~index_id ~name ~role_arn ~s3_path __id
    =
  let (r : _ Tf_core.resource) =
    make ?description ?file_format ?id ?language_code ?tags ?tags_all
      ?timeouts ~index_id ~name ~role_arn ~s3_path __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
