(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type properties = {
  description : string prop option; [@option]  (** description *)
  searchable_attributes : string prop list option; [@option]
      (** searchable_attributes *)
}
[@@deriving yojson_of]
(** properties *)

type aws_iot_thing_type = {
  deprecated : bool prop option; [@option]  (** deprecated *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  properties : properties list;
}
[@@deriving yojson_of]
(** aws_iot_thing_type *)

let properties ?description ?searchable_attributes () : properties =
  { description; searchable_attributes }

let aws_iot_thing_type ?deprecated ?id ?tags ?tags_all ~name
    ~properties () : aws_iot_thing_type =
  { deprecated; id; name; tags; tags_all; properties }

type t = {
  arn : string prop;
  deprecated : bool prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?deprecated ?id ?tags ?tags_all ~name ~properties __id =
  let __type = "aws_iot_thing_type" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       deprecated = Prop.computed __type __id "deprecated";
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
      yojson_of_aws_iot_thing_type
        (aws_iot_thing_type ?deprecated ?id ?tags ?tags_all ~name
           ~properties ());
    attrs = __attrs;
  }

let register ?tf_module ?deprecated ?id ?tags ?tags_all ~name
    ~properties __id =
  let (r : _ Tf_core.resource) =
    make ?deprecated ?id ?tags ?tags_all ~name ~properties __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
