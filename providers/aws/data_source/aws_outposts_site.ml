(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_outposts_site = {
  id : string prop option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_outposts_site) -> ()

let yojson_of_aws_outposts_site =
  (function
   | { id = v_id; name = v_name } ->
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
       `Assoc bnds
    : aws_outposts_site -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_outposts_site

[@@@deriving.end]

let aws_outposts_site ?id ?name () : aws_outposts_site = { id; name }

type t = {
  tf_name : string;
  account_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ?name __id =
  let __type = "aws_outposts_site" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
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
      yojson_of_aws_outposts_site (aws_outposts_site ?id ?name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name __id =
  let (r : _ Tf_core.resource) = make ?id ?name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
