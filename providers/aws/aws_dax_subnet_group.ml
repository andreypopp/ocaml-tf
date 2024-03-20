(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dax_subnet_group = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  subnet_ids : string prop list;  (** subnet_ids *)
}
[@@deriving yojson_of]
(** aws_dax_subnet_group *)

let aws_dax_subnet_group ?description ?id ~name ~subnet_ids () :
    aws_dax_subnet_group =
  { description; id; name; subnet_ids }

type t = {
  description : string prop;
  id : string prop;
  name : string prop;
  subnet_ids : string list prop;
  vpc_id : string prop;
}

let make ?description ?id ~name ~subnet_ids __id =
  let __type = "aws_dax_subnet_group" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dax_subnet_group
        (aws_dax_subnet_group ?description ?id ~name ~subnet_ids ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~name ~subnet_ids __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~name ~subnet_ids __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
