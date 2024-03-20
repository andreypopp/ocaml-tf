(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type table_reference = {
  database_name : string prop;  (** database_name *)
  table_name : string prop;  (** table_name *)
}
[@@deriving yojson_of]
(** table_reference *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_cleanrooms_configured_table = {
  allowed_columns : string prop list;  (** allowed_columns *)
  analysis_method : string prop;  (** analysis_method *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  table_reference : table_reference list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_cleanrooms_configured_table *)

let table_reference ~database_name ~table_name () : table_reference =
  { database_name; table_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_cleanrooms_configured_table ?description ?id ?tags ?tags_all
    ?timeouts ~allowed_columns ~analysis_method ~name
    ~table_reference () : aws_cleanrooms_configured_table =
  {
    allowed_columns;
    analysis_method;
    description;
    id;
    name;
    tags;
    tags_all;
    table_reference;
    timeouts;
  }

type t = {
  allowed_columns : string list prop;
  analysis_method : string prop;
  arn : string prop;
  create_time : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  update_time : string prop;
}

let make ?description ?id ?tags ?tags_all ?timeouts ~allowed_columns
    ~analysis_method ~name ~table_reference __id =
  let __type = "aws_cleanrooms_configured_table" in
  let __attrs =
    ({
       allowed_columns = Prop.computed __type __id "allowed_columns";
       analysis_method = Prop.computed __type __id "analysis_method";
       arn = Prop.computed __type __id "arn";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cleanrooms_configured_table
        (aws_cleanrooms_configured_table ?description ?id ?tags
           ?tags_all ?timeouts ~allowed_columns ~analysis_method
           ~name ~table_reference ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ?timeouts
    ~allowed_columns ~analysis_method ~name ~table_reference __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ?timeouts ~allowed_columns
      ~analysis_method ~name ~table_reference __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
