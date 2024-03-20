(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_storagegateway_upload_buffer = {
  disk_id : string prop option; [@option]
  disk_path : string prop option; [@option]
  gateway_arn : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_storagegateway_upload_buffer) -> ()

let yojson_of_aws_storagegateway_upload_buffer =
  (function
   | {
       disk_id = v_disk_id;
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
         match v_disk_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "disk_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_storagegateway_upload_buffer ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_storagegateway_upload_buffer

[@@@deriving.end]

let aws_storagegateway_upload_buffer ?disk_id ?disk_path ?id
    ~gateway_arn () : aws_storagegateway_upload_buffer =
  { disk_id; disk_path; gateway_arn; id }

type t = {
  disk_id : string prop;
  disk_path : string prop;
  gateway_arn : string prop;
  id : string prop;
}

let make ?disk_id ?disk_path ?id ~gateway_arn __id =
  let __type = "aws_storagegateway_upload_buffer" in
  let __attrs =
    ({
       disk_id = Prop.computed __type __id "disk_id";
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
      yojson_of_aws_storagegateway_upload_buffer
        (aws_storagegateway_upload_buffer ?disk_id ?disk_path ?id
           ~gateway_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?disk_id ?disk_path ?id ~gateway_arn __id =
  let (r : _ Tf_core.resource) =
    make ?disk_id ?disk_path ?id ~gateway_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
