(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_detective_invitation_accepter = {
  graph_arn : string prop;  (** graph_arn *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_detective_invitation_accepter *)

let aws_detective_invitation_accepter ?id ~graph_arn () :
    aws_detective_invitation_accepter =
  { graph_arn; id }

type t = { graph_arn : string prop; id : string prop }

let make ?id ~graph_arn __id =
  let __type = "aws_detective_invitation_accepter" in
  let __attrs =
    ({
       graph_arn = Prop.computed __type __id "graph_arn";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_detective_invitation_accepter
        (aws_detective_invitation_accepter ?id ~graph_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~graph_arn __id =
  let (r : _ Tf_core.resource) = make ?id ~graph_arn __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
