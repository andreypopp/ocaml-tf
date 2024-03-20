(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_simpledb_domain = { name : string prop  (** name *) }
[@@deriving yojson_of]
(** aws_simpledb_domain *)

let aws_simpledb_domain ~name () : aws_simpledb_domain = { name }

type t = { id : string prop; name : string prop }

let make ~name __id =
  let __type = "aws_simpledb_domain" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_simpledb_domain (aws_simpledb_domain ~name ());
    attrs = __attrs;
  }

let register ?tf_module ~name __id =
  let (r : _ Tf_core.resource) = make ~name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
