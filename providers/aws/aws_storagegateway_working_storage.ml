(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_storagegateway_working_storage = {
  disk_id : string prop;  (** disk_id *)
  gateway_arn : string prop;  (** gateway_arn *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_storagegateway_working_storage *)

let aws_storagegateway_working_storage ?id ~disk_id ~gateway_arn () :
    aws_storagegateway_working_storage =
  { disk_id; gateway_arn; id }

type t = {
  disk_id : string prop;
  gateway_arn : string prop;
  id : string prop;
}

let make ?id ~disk_id ~gateway_arn __id =
  let __type = "aws_storagegateway_working_storage" in
  let __attrs =
    ({
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
      yojson_of_aws_storagegateway_working_storage
        (aws_storagegateway_working_storage ?id ~disk_id ~gateway_arn
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~disk_id ~gateway_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ~disk_id ~gateway_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
