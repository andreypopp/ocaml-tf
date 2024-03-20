(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_appsync_api_key = {
  api_id : string prop;
  description : string prop option; [@option]
  expires : string prop option; [@option]
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appsync_api_key) -> ()

let yojson_of_aws_appsync_api_key =
  (function
   | {
       api_id = v_api_id;
       description = v_description;
       expires = v_expires;
       id = v_id;
     } ->
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
         match v_expires with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expires", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_id in
         ("api_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_appsync_api_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appsync_api_key

[@@@deriving.end]

let aws_appsync_api_key ?description ?expires ?id ~api_id () :
    aws_appsync_api_key =
  { api_id; description; expires; id }

type t = {
  api_id : string prop;
  description : string prop;
  expires : string prop;
  id : string prop;
  key : string prop;
}

let make ?description ?expires ?id ~api_id __id =
  let __type = "aws_appsync_api_key" in
  let __attrs =
    ({
       api_id = Prop.computed __type __id "api_id";
       description = Prop.computed __type __id "description";
       expires = Prop.computed __type __id "expires";
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appsync_api_key
        (aws_appsync_api_key ?description ?expires ?id ~api_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?expires ?id ~api_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?expires ?id ~api_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
