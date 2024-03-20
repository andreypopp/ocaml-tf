(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_schemas_discoverer = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  source_arn : string prop;  (** source_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_schemas_discoverer *)

let aws_schemas_discoverer ?description ?id ?tags ?tags_all
    ~source_arn () : aws_schemas_discoverer =
  { description; id; source_arn; tags; tags_all }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  source_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ~source_arn __id =
  let __type = "aws_schemas_discoverer" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       source_arn = Prop.computed __type __id "source_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_schemas_discoverer
        (aws_schemas_discoverer ?description ?id ?tags ?tags_all
           ~source_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~source_arn
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~source_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
