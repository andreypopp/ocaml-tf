(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_opensearchserverless_collection = {
  description : string prop option; [@option]
  name : string prop;
  standby_replicas : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_opensearchserverless_collection) -> ()

let yojson_of_aws_opensearchserverless_collection =
  (function
   | {
       description = v_description;
       name = v_name;
       standby_replicas = v_standby_replicas;
       tags = v_tags;
       type_ = v_type_;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_standby_replicas with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "standby_replicas", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_opensearchserverless_collection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_opensearchserverless_collection

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_opensearchserverless_collection ?description
    ?standby_replicas ?tags ?type_ ?timeouts ~name () :
    aws_opensearchserverless_collection =
  { description; name; standby_replicas; tags; type_; timeouts }

type t = {
  tf_name : string;
  arn : string prop;
  collection_endpoint : string prop;
  dashboard_endpoint : string prop;
  description : string prop;
  id : string prop;
  kms_key_arn : string prop;
  name : string prop;
  standby_replicas : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  type_ : string prop;
}

let make ?description ?standby_replicas ?tags ?type_ ?timeouts ~name
    __id =
  let __type = "aws_opensearchserverless_collection" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       collection_endpoint =
         Prop.computed __type __id "collection_endpoint";
       dashboard_endpoint =
         Prop.computed __type __id "dashboard_endpoint";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       kms_key_arn = Prop.computed __type __id "kms_key_arn";
       name = Prop.computed __type __id "name";
       standby_replicas =
         Prop.computed __type __id "standby_replicas";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_opensearchserverless_collection
        (aws_opensearchserverless_collection ?description
           ?standby_replicas ?tags ?type_ ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?standby_replicas ?tags ?type_
    ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?standby_replicas ?tags ?type_ ?timeouts ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
