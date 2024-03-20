(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_athena_data_catalog = {
  description : string prop;  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list;  (** parameters *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_athena_data_catalog *)

let aws_athena_data_catalog ?id ?tags ?tags_all ~description ~name
    ~parameters ~type_ () : aws_athena_data_catalog =
  { description; id; name; parameters; tags; tags_all; type_ }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let make ?id ?tags ?tags_all ~description ~name ~parameters ~type_
    __id =
  let __type = "aws_athena_data_catalog" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_athena_data_catalog
        (aws_athena_data_catalog ?id ?tags ?tags_all ~description
           ~name ~parameters ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~description ~name
    ~parameters ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~description ~name ~parameters ~type_
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
