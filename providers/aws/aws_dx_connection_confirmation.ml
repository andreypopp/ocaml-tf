(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dx_connection_confirmation = {
  connection_id : string prop;  (** connection_id *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_dx_connection_confirmation *)

let aws_dx_connection_confirmation ?id ~connection_id () :
    aws_dx_connection_confirmation =
  { connection_id; id }

type t = { connection_id : string prop; id : string prop }

let make ?id ~connection_id __id =
  let __type = "aws_dx_connection_confirmation" in
  let __attrs =
    ({
       connection_id = Prop.computed __type __id "connection_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dx_connection_confirmation
        (aws_dx_connection_confirmation ?id ~connection_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~connection_id __id =
  let (r : _ Tf_core.resource) = make ?id ~connection_id __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
