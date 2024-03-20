(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_opensearchserverless_collection = {
  id : string prop option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_opensearchserverless_collection) -> ()

let yojson_of_aws_opensearchserverless_collection =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
    : aws_opensearchserverless_collection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_opensearchserverless_collection

[@@@deriving.end]

let aws_opensearchserverless_collection ?id ?name () :
    aws_opensearchserverless_collection =
  { id; name }

type t = {
  arn : string prop;
  collection_endpoint : string prop;
  created_date : string prop;
  dashboard_endpoint : string prop;
  description : string prop;
  id : string prop;
  kms_key_arn : string prop;
  last_modified_date : string prop;
  name : string prop;
  standby_replicas : string prop;
  tags : (string * string) list prop;
  type_ : string prop;
}

let make ?id ?name __id =
  let __type = "aws_opensearchserverless_collection" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       collection_endpoint =
         Prop.computed __type __id "collection_endpoint";
       created_date = Prop.computed __type __id "created_date";
       dashboard_endpoint =
         Prop.computed __type __id "dashboard_endpoint";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       kms_key_arn = Prop.computed __type __id "kms_key_arn";
       last_modified_date =
         Prop.computed __type __id "last_modified_date";
       name = Prop.computed __type __id "name";
       standby_replicas =
         Prop.computed __type __id "standby_replicas";
       tags = Prop.computed __type __id "tags";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_opensearchserverless_collection
        (aws_opensearchserverless_collection ?id ?name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name __id =
  let (r : _ Tf_core.resource) = make ?id ?name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
