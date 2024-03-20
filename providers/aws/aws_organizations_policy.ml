(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_organizations_policy = {
  content : string prop;  (** content *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  skip_destroy : bool prop option; [@option]  (** skip_destroy *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_organizations_policy *)

let aws_organizations_policy ?description ?id ?skip_destroy ?tags
    ?tags_all ?type_ ~content ~name () : aws_organizations_policy =
  {
    content;
    description;
    id;
    name;
    skip_destroy;
    tags;
    tags_all;
    type_;
  }

type t = {
  arn : string prop;
  content : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  skip_destroy : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let make ?description ?id ?skip_destroy ?tags ?tags_all ?type_
    ~content ~name __id =
  let __type = "aws_organizations_policy" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       content = Prop.computed __type __id "content";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       skip_destroy = Prop.computed __type __id "skip_destroy";
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
      yojson_of_aws_organizations_policy
        (aws_organizations_policy ?description ?id ?skip_destroy
           ?tags ?tags_all ?type_ ~content ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?skip_destroy ?tags
    ?tags_all ?type_ ~content ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?skip_destroy ?tags ?tags_all ?type_
      ~content ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
