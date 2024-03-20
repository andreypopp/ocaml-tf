(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_schemas_registry = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_schemas_registry *)

let aws_schemas_registry ?description ?id ?tags ?tags_all ~name () :
    aws_schemas_registry =
  { description; id; name; tags; tags_all }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ~name __id =
  let __type = "aws_schemas_registry" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_schemas_registry
        (aws_schemas_registry ?description ?id ?tags ?tags_all ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
