(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_athena_prepared_statement = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  query_statement : string prop;  (** query_statement *)
  workgroup : string prop;  (** workgroup *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_athena_prepared_statement *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_athena_prepared_statement ?description ?id ?timeouts ~name
    ~query_statement ~workgroup () : aws_athena_prepared_statement =
  { description; id; name; query_statement; workgroup; timeouts }

type t = {
  description : string prop;
  id : string prop;
  name : string prop;
  query_statement : string prop;
  workgroup : string prop;
}

let make ?description ?id ?timeouts ~name ~query_statement ~workgroup
    __id =
  let __type = "aws_athena_prepared_statement" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       query_statement = Prop.computed __type __id "query_statement";
       workgroup = Prop.computed __type __id "workgroup";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_athena_prepared_statement
        (aws_athena_prepared_statement ?description ?id ?timeouts
           ~name ~query_statement ~workgroup ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts ~name
    ~query_statement ~workgroup __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~name ~query_statement ~workgroup
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
