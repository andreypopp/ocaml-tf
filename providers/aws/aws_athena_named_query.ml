(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_athena_named_query = {
  database : string prop;  (** database *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  query : string prop;  (** query *)
  workgroup : string prop option; [@option]  (** workgroup *)
}
[@@deriving yojson_of]
(** aws_athena_named_query *)

let aws_athena_named_query ?description ?id ?workgroup ~database
    ~name ~query () : aws_athena_named_query =
  { database; description; id; name; query; workgroup }

type t = {
  database : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  query : string prop;
  workgroup : string prop;
}

let make ?description ?id ?workgroup ~database ~name ~query __id =
  let __type = "aws_athena_named_query" in
  let __attrs =
    ({
       database = Prop.computed __type __id "database";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       query = Prop.computed __type __id "query";
       workgroup = Prop.computed __type __id "workgroup";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_athena_named_query
        (aws_athena_named_query ?description ?id ?workgroup ~database
           ~name ~query ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?workgroup ~database ~name
    ~query __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?workgroup ~database ~name ~query __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
