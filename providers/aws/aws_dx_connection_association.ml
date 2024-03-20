(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dx_connection_association = {
  connection_id : string prop;  (** connection_id *)
  id : string prop option; [@option]  (** id *)
  lag_id : string prop;  (** lag_id *)
}
[@@deriving yojson_of]
(** aws_dx_connection_association *)

let aws_dx_connection_association ?id ~connection_id ~lag_id () :
    aws_dx_connection_association =
  { connection_id; id; lag_id }

type t = {
  connection_id : string prop;
  id : string prop;
  lag_id : string prop;
}

let make ?id ~connection_id ~lag_id __id =
  let __type = "aws_dx_connection_association" in
  let __attrs =
    ({
       connection_id = Prop.computed __type __id "connection_id";
       id = Prop.computed __type __id "id";
       lag_id = Prop.computed __type __id "lag_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dx_connection_association
        (aws_dx_connection_association ?id ~connection_id ~lag_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~connection_id ~lag_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~connection_id ~lag_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
