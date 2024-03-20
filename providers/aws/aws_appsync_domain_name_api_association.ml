(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_appsync_domain_name_api_association = {
  api_id : string prop;
  domain_name : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appsync_domain_name_api_association) -> ()

let yojson_of_aws_appsync_domain_name_api_association =
  (function
   | { api_id = v_api_id; domain_name = v_domain_name; id = v_id } ->
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
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_id in
         ("api_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_appsync_domain_name_api_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appsync_domain_name_api_association

[@@@deriving.end]

let aws_appsync_domain_name_api_association ?id ~api_id ~domain_name
    () : aws_appsync_domain_name_api_association =
  { api_id; domain_name; id }

type t = {
  api_id : string prop;
  domain_name : string prop;
  id : string prop;
}

let make ?id ~api_id ~domain_name __id =
  let __type = "aws_appsync_domain_name_api_association" in
  let __attrs =
    ({
       api_id = Prop.computed __type __id "api_id";
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appsync_domain_name_api_association
        (aws_appsync_domain_name_api_association ?id ~api_id
           ~domain_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~api_id ~domain_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~api_id ~domain_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
