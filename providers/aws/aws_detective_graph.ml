(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_detective_graph = {
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_detective_graph) -> ()

let yojson_of_aws_detective_graph =
  (function
   | { id = v_id; tags = v_tags; tags_all = v_tags_all } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_detective_graph -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_detective_graph

[@@@deriving.end]

let aws_detective_graph ?id ?tags ?tags_all () : aws_detective_graph
    =
  { id; tags; tags_all }

type t = {
  tf_name : string;
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
       tf_name = __id;
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
