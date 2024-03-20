(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_schemas_schema = {
  content : string prop;  (** content *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  registry_name : string prop;  (** registry_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_schemas_schema *)

let aws_schemas_schema ?description ?id ?tags ?tags_all ~content
    ~name ~registry_name ~type_ () : aws_schemas_schema =
  {
    content;
    description;
    id;
    name;
    registry_name;
    tags;
    tags_all;
    type_;
  }

type t = {
  arn : string prop;
  content : string prop;
  description : string prop;
  id : string prop;
  last_modified : string prop;
  name : string prop;
  registry_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
  version : string prop;
  version_created_date : string prop;
}

let make ?description ?id ?tags ?tags_all ~content ~name
    ~registry_name ~type_ __id =
  let __type = "aws_schemas_schema" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       content = Prop.computed __type __id "content";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       last_modified = Prop.computed __type __id "last_modified";
       name = Prop.computed __type __id "name";
       registry_name = Prop.computed __type __id "registry_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
       version = Prop.computed __type __id "version";
       version_created_date =
         Prop.computed __type __id "version_created_date";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_schemas_schema
        (aws_schemas_schema ?description ?id ?tags ?tags_all ~content
           ~name ~registry_name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~content
    ~name ~registry_name ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~content ~name
      ~registry_name ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
