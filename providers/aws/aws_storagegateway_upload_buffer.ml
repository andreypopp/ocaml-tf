(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_storagegateway_upload_buffer = {
  disk_id : string prop option; [@option]  (** disk_id *)
  disk_path : string prop option; [@option]  (** disk_path *)
  gateway_arn : string prop;  (** gateway_arn *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_storagegateway_upload_buffer *)

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
