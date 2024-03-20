(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_detective_invitation_accepter = {
  graph_arn : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_detective_invitation_accepter) -> ()

let yojson_of_aws_detective_invitation_accepter =
  (function
   | { graph_arn = v_graph_arn; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_graph_arn in
         ("graph_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_detective_invitation_accepter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_detective_invitation_accepter

[@@@deriving.end]

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
