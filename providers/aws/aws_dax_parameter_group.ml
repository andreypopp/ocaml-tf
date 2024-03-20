(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type parameters = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** parameters *)

type aws_dax_parameter_group = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  parameters : parameters list;
}
[@@deriving yojson_of]
(** aws_dax_parameter_group *)

let parameters ~name ~value () : parameters = { name; value }

let aws_dax_parameter_group ?description ?id ~name ~parameters () :
    aws_dax_parameter_group =
  { description; id; name; parameters }

type t = {
  description : string prop;
  id : string prop;
  name : string prop;
}

let make ?description ?id ~name ~parameters __id =
  let __type = "aws_dax_parameter_group" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dax_parameter_group
        (aws_dax_parameter_group ?description ?id ~name ~parameters
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~name ~parameters __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~name ~parameters __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
