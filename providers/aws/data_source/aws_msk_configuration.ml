(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_msk_configuration = {
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_msk_configuration) -> ()

let yojson_of_aws_msk_configuration =
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
    : aws_msk_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_msk_configuration

[@@@deriving.end]

let aws_msk_configuration ?id ~name () : aws_msk_configuration =
  { id; name }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  kafka_versions : string list prop;
  latest_revision : float prop;
  name : string prop;
  server_properties : string prop;
}

let make ?id ~name __id =
  let __type = "aws_msk_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       kafka_versions = Prop.computed __type __id "kafka_versions";
       latest_revision = Prop.computed __type __id "latest_revision";
       name = Prop.computed __type __id "name";
       server_properties =
         Prop.computed __type __id "server_properties";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_msk_configuration
        (aws_msk_configuration ?id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
