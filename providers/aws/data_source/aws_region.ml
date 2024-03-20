(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_region = {
  endpoint : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_region) -> ()

let yojson_of_aws_region =
  (function
   | { endpoint = v_endpoint; id = v_id; name = v_name } ->
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
         match v_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_region -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_region

[@@@deriving.end]

let aws_region ?endpoint ?id ?name () : aws_region =
  { endpoint; id; name }

type t = {
  description : string prop;
  endpoint : string prop;
  id : string prop;
  name : string prop;
}

let make ?endpoint ?id ?name __id =
  let __type = "aws_region" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       endpoint = Prop.computed __type __id "endpoint";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_aws_region (aws_region ?endpoint ?id ?name ());
    attrs = __attrs;
  }

let register ?tf_module ?endpoint ?id ?name __id =
  let (r : _ Tf_core.resource) = make ?endpoint ?id ?name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
