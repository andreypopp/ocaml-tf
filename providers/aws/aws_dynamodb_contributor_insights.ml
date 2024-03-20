(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_dynamodb_contributor_insights = {
  id : string prop option; [@option]  (** id *)
  index_name : string prop option; [@option]  (** index_name *)
  table_name : string prop;  (** table_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_dynamodb_contributor_insights *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_dynamodb_contributor_insights ?id ?index_name ?timeouts
    ~table_name () : aws_dynamodb_contributor_insights =
  { id; index_name; table_name; timeouts }

type t = {
  id : string prop;
  index_name : string prop;
  table_name : string prop;
}

let make ?id ?index_name ?timeouts ~table_name __id =
  let __type = "aws_dynamodb_contributor_insights" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       index_name = Prop.computed __type __id "index_name";
       table_name = Prop.computed __type __id "table_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dynamodb_contributor_insights
        (aws_dynamodb_contributor_insights ?id ?index_name ?timeouts
           ~table_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?index_name ?timeouts ~table_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?index_name ?timeouts ~table_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
