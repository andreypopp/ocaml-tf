(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration__parameters = {
  name : string prop;  (** name *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** configuration__parameters *)

type configuration = {
  type_ : string prop; [@key "type"]  (** type *)
  parameters : configuration__parameters list;
}
[@@deriving yojson_of]
(** configuration *)

type resource_query = {
  query : string prop;  (** query *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** resource_query *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_resourcegroups_group = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  configuration : configuration list;
  resource_query : resource_query list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_resourcegroups_group *)

let configuration__parameters ~name ~values () :
    configuration__parameters =
  { name; values }

let configuration ~type_ ~parameters () : configuration =
  { type_; parameters }

let resource_query ?type_ ~query () : resource_query =
  { query; type_ }

let timeouts ?create ?update () : timeouts = { create; update }

let aws_resourcegroups_group ?description ?id ?tags ?tags_all
    ?timeouts ~name ~configuration ~resource_query () :
    aws_resourcegroups_group =
  {
    description;
    id;
    name;
    tags;
    tags_all;
    configuration;
    resource_query;
    timeouts;
  }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ?timeouts ~name
    ~configuration ~resource_query __id =
  let __type = "aws_resourcegroups_group" in
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
      yojson_of_aws_resourcegroups_group
        (aws_resourcegroups_group ?description ?id ?tags ?tags_all
           ?timeouts ~name ~configuration ~resource_query ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ?timeouts
    ~name ~configuration ~resource_query __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ?timeouts ~name
      ~configuration ~resource_query __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
