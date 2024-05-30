(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_rest_api = {
  endpoint : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_rest_api) -> ()

let yojson_of_github_rest_api =
  (function
   | { endpoint = v_endpoint; id = v_id } ->
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
         let arg = yojson_of_prop yojson_of_string v_endpoint in
         ("endpoint", arg) :: bnds
       in
       `Assoc bnds
    : github_rest_api -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_rest_api

[@@@deriving.end]

let github_rest_api ?id ~endpoint () : github_rest_api =
  { endpoint; id }

type t = {
  tf_name : string;
  body : string prop;
  code : float prop;
  endpoint : string prop;
  headers : string prop;
  id : string prop;
  status : string prop;
}

let make ?id ~endpoint __id =
  let __type = "github_rest_api" in
  let __attrs =
    ({
       tf_name = __id;
       body = Prop.computed __type __id "body";
       code = Prop.computed __type __id "code";
       endpoint = Prop.computed __type __id "endpoint";
       headers = Prop.computed __type __id "headers";
       id = Prop.computed __type __id "id";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_rest_api (github_rest_api ?id ~endpoint ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~endpoint __id =
  let (r : _ Tf_core.resource) = make ?id ~endpoint __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
