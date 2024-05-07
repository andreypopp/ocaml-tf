(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_storagegateway_local_disk = {
  disk_node : string prop option; [@option]
  disk_path : string prop option; [@option]
  gateway_arn : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_storagegateway_local_disk) -> ()

let yojson_of_aws_storagegateway_local_disk =
  (function
   | {
       disk_node = v_disk_node;
       disk_path = v_disk_path;
       gateway_arn = v_gateway_arn;
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
         let arg = yojson_of_prop yojson_of_string v_gateway_arn in
         ("gateway_arn", arg) :: bnds
       in
       let bnds =
         match v_disk_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "disk_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_node with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "disk_node", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_storagegateway_local_disk ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_storagegateway_local_disk

[@@@deriving.end]

let aws_storagegateway_local_disk ?disk_node ?disk_path ?id
    ~gateway_arn () : aws_storagegateway_local_disk =
  { disk_node; disk_path; gateway_arn; id }

type t = {
  tf_name : string;
  disk_id : string prop;
  disk_node : string prop;
  disk_path : string prop;
  gateway_arn : string prop;
  id : string prop;
}

let make ?disk_node ?disk_path ?id ~gateway_arn __id =
  let __type = "aws_storagegateway_local_disk" in
  let __attrs =
    ({
       tf_name = __id;
       disk_id = Prop.computed __type __id "disk_id";
       disk_node = Prop.computed __type __id "disk_node";
       disk_path = Prop.computed __type __id "disk_path";
       gateway_arn = Prop.computed __type __id "gateway_arn";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_storagegateway_local_disk
        (aws_storagegateway_local_disk ?disk_node ?disk_path ?id
           ~gateway_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?disk_node ?disk_path ?id ~gateway_arn __id =
  let (r : _ Tf_core.resource) =
    make ?disk_node ?disk_path ?id ~gateway_arn __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
