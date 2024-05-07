(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lb_trust_store = {
  arn : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lb_trust_store) -> ()

let yojson_of_aws_lb_trust_store =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
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
         match v_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_lb_trust_store -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lb_trust_store

[@@@deriving.end]

let aws_lb_trust_store ?arn ?id ?name () : aws_lb_trust_store =
  { arn; id; name }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
}

let make ?arn ?id ?name __id =
  let __type = "aws_lb_trust_store" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lb_trust_store
        (aws_lb_trust_store ?arn ?id ?name ());
    attrs = __attrs;
  }

let register ?tf_module ?arn ?id ?name __id =
  let (r : _ Tf_core.resource) = make ?arn ?id ?name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
