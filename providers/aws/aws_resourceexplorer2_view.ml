(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filters = { filter_string : string prop  (** filter_string *) }
[@@deriving yojson_of]
(** filters *)

type included_property = { name : string prop  (** name *) }
[@@deriving yojson_of]
(** included_property *)

type aws_resourceexplorer2_view = {
  default_view : bool prop option; [@option]  (** default_view *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  filters : filters list;
  included_property : included_property list;
}
[@@deriving yojson_of]
(** aws_resourceexplorer2_view *)

let filters ~filter_string () : filters = { filter_string }
let included_property ~name () : included_property = { name }

let aws_resourceexplorer2_view ?default_view ?tags ~name ~filters
    ~included_property () : aws_resourceexplorer2_view =
  { default_view; name; tags; filters; included_property }

type t = {
  arn : string prop;
  default_view : bool prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?default_view ?tags ~name ~filters ~included_property __id =
  let __type = "aws_resourceexplorer2_view" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       default_view = Prop.computed __type __id "default_view";
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
      yojson_of_aws_resourceexplorer2_view
        (aws_resourceexplorer2_view ?default_view ?tags ~name
           ~filters ~included_property ());
    attrs = __attrs;
  }

let register ?tf_module ?default_view ?tags ~name ~filters
    ~included_property __id =
  let (r : _ Tf_core.resource) =
    make ?default_view ?tags ~name ~filters ~included_property __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
