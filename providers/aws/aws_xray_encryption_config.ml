(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_xray_encryption_config = {
  id : string prop option; [@option]
  key_id : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_xray_encryption_config) -> ()

let yojson_of_aws_xray_encryption_config =
  (function
   | { id = v_id; key_id = v_key_id; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_id", arg in
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
    : aws_xray_encryption_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_xray_encryption_config

[@@@deriving.end]

let aws_xray_encryption_config ?id ?key_id ~type_ () :
    aws_xray_encryption_config =
  { id; key_id; type_ }

type t = {
  id : string prop;
  key_id : string prop;
  type_ : string prop;
}

let make ?id ?key_id ~type_ __id =
  let __type = "aws_xray_encryption_config" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       key_id = Prop.computed __type __id "key_id";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_xray_encryption_config
        (aws_xray_encryption_config ?id ?key_id ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?key_id ~type_ __id =
  let (r : _ Tf_core.resource) = make ?id ?key_id ~type_ __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
