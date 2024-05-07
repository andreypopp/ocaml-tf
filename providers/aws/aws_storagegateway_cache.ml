(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_storagegateway_cache = {
  disk_id : string prop;
  gateway_arn : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_storagegateway_cache) -> ()

let yojson_of_aws_storagegateway_cache =
  (function
   | { disk_id = v_disk_id; gateway_arn = v_gateway_arn; id = v_id }
     ->
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
         let arg = yojson_of_prop yojson_of_string v_gateway_arn in
         ("gateway_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_disk_id in
         ("disk_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_storagegateway_cache -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_storagegateway_cache

[@@@deriving.end]

let aws_storagegateway_cache ?id ~disk_id ~gateway_arn () :
    aws_storagegateway_cache =
  { disk_id; gateway_arn; id }

type t = {
  tf_name : string;
  disk_id : string prop;
  gateway_arn : string prop;
  id : string prop;
}

let make ?id ~disk_id ~gateway_arn __id =
  let __type = "aws_storagegateway_cache" in
  let __attrs =
    ({
       tf_name = __id;
       disk_id = Prop.computed __type __id "disk_id";
       gateway_arn = Prop.computed __type __id "gateway_arn";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_storagegateway_cache
        (aws_storagegateway_cache ?id ~disk_id ~gateway_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~disk_id ~gateway_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ~disk_id ~gateway_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
