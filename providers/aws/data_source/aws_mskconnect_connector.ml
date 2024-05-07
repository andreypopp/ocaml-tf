(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_mskconnect_connector = {
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_mskconnect_connector) -> ()

let yojson_of_aws_mskconnect_connector =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : aws_mskconnect_connector -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_mskconnect_connector

[@@@deriving.end]

let aws_mskconnect_connector ?id ~name () : aws_mskconnect_connector
    =
  { id; name }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  version : string prop;
}

let make ?id ~name __id =
  let __type = "aws_mskconnect_connector" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_mskconnect_connector
        (aws_mskconnect_connector ?id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
