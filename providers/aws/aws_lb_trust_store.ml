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

type aws_lb_trust_store = {
  ca_certificates_bundle_s3_bucket : string prop;
  ca_certificates_bundle_s3_key : string prop;
  ca_certificates_bundle_s3_object_version : string prop option;
      [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lb_trust_store) -> ()

let yojson_of_aws_lb_trust_store =
  (function
   | {
       ca_certificates_bundle_s3_bucket =
         v_ca_certificates_bundle_s3_bucket;
       ca_certificates_bundle_s3_key =
         v_ca_certificates_bundle_s3_key;
       ca_certificates_bundle_s3_object_version =
         v_ca_certificates_bundle_s3_object_version;
       id = v_id;
       name = v_name;
       name_prefix = v_name_prefix;
       tags = v_tags;
       tags_all = v_tags_all;
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
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
             bnd :: bnds
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
       let bnds =
         match v_ca_certificates_bundle_s3_object_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "ca_certificates_bundle_s3_object_version", arg
             in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_ca_certificates_bundle_s3_key
         in
         ("ca_certificates_bundle_s3_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_ca_certificates_bundle_s3_bucket
         in
         ("ca_certificates_bundle_s3_bucket", arg) :: bnds
       in
       `Assoc bnds
    : aws_lb_trust_store -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lb_trust_store

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_lb_trust_store ?ca_certificates_bundle_s3_object_version ?id
    ?name ?name_prefix ?tags ?tags_all ?timeouts
    ~ca_certificates_bundle_s3_bucket ~ca_certificates_bundle_s3_key
    () : aws_lb_trust_store =
  {
    ca_certificates_bundle_s3_bucket;
    ca_certificates_bundle_s3_key;
    ca_certificates_bundle_s3_object_version;
    id;
    name;
    name_prefix;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  arn_suffix : string prop;
  ca_certificates_bundle_s3_bucket : string prop;
  ca_certificates_bundle_s3_key : string prop;
  ca_certificates_bundle_s3_object_version : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?ca_certificates_bundle_s3_object_version ?id ?name
    ?name_prefix ?tags ?tags_all ?timeouts
    ~ca_certificates_bundle_s3_bucket ~ca_certificates_bundle_s3_key
    __id =
  let __type = "aws_lb_trust_store" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       arn_suffix = Prop.computed __type __id "arn_suffix";
       ca_certificates_bundle_s3_bucket =
         Prop.computed __type __id "ca_certificates_bundle_s3_bucket";
       ca_certificates_bundle_s3_key =
         Prop.computed __type __id "ca_certificates_bundle_s3_key";
       ca_certificates_bundle_s3_object_version =
         Prop.computed __type __id
           "ca_certificates_bundle_s3_object_version";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lb_trust_store
        (aws_lb_trust_store ?ca_certificates_bundle_s3_object_version
           ?id ?name ?name_prefix ?tags ?tags_all ?timeouts
           ~ca_certificates_bundle_s3_bucket
           ~ca_certificates_bundle_s3_key ());
    attrs = __attrs;
  }

let register ?tf_module ?ca_certificates_bundle_s3_object_version ?id
    ?name ?name_prefix ?tags ?tags_all ?timeouts
    ~ca_certificates_bundle_s3_bucket ~ca_certificates_bundle_s3_key
    __id =
  let (r : _ Tf_core.resource) =
    make ?ca_certificates_bundle_s3_object_version ?id ?name
      ?name_prefix ?tags ?tags_all ?timeouts
      ~ca_certificates_bundle_s3_bucket
      ~ca_certificates_bundle_s3_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
