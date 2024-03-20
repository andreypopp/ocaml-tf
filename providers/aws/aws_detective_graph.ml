(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_detective_graph = {
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_detective_graph *)

let aws_detective_graph ?id ?tags ?tags_all () : aws_detective_graph
    =
  { id; tags; tags_all }

type t = {
  created_time : string prop;
  graph_arn : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all __id =
  let __type = "aws_detective_graph" in
  let __attrs =
    ({
       created_time = Prop.computed __type __id "created_time";
       graph_arn = Prop.computed __type __id "graph_arn";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_detective_graph
        (aws_detective_graph ?id ?tags ?tags_all ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ?tags_all __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
