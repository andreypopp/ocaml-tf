(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_oam_link = {
  id : string prop option; [@option]  (** id *)
  label_template : string prop;  (** label_template *)
  resource_types : string prop list;  (** resource_types *)
  sink_identifier : string prop;  (** sink_identifier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_oam_link *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_oam_link ?id ?tags ?tags_all ?timeouts ~label_template
    ~resource_types ~sink_identifier () : aws_oam_link =
  {
    id;
    label_template;
    resource_types;
    sink_identifier;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  arn : string prop;
  id : string prop;
  label : string prop;
  label_template : string prop;
  link_id : string prop;
  resource_types : string list prop;
  sink_arn : string prop;
  sink_identifier : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ?timeouts ~label_template
    ~resource_types ~sink_identifier __id =
  let __type = "aws_oam_link" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       label = Prop.computed __type __id "label";
       label_template = Prop.computed __type __id "label_template";
       link_id = Prop.computed __type __id "link_id";
       resource_types = Prop.computed __type __id "resource_types";
       sink_arn = Prop.computed __type __id "sink_arn";
       sink_identifier = Prop.computed __type __id "sink_identifier";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_oam_link
        (aws_oam_link ?id ?tags ?tags_all ?timeouts ~label_template
           ~resource_types ~sink_identifier ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?timeouts ~label_template
    ~resource_types ~sink_identifier __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?timeouts ~label_template
      ~resource_types ~sink_identifier __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
