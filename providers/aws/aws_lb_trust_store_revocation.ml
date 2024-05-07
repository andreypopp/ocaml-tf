(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type aws_lb_trust_store_revocation = {
  id : string prop option; [@option]
  revocations_s3_bucket : string prop;
  revocations_s3_key : string prop;
  revocations_s3_object_version : string prop option; [@option]
  trust_store_arn : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lb_trust_store_revocation) -> ()

let yojson_of_aws_lb_trust_store_revocation =
  (function
   | {
       id = v_id;
       revocations_s3_bucket = v_revocations_s3_bucket;
       revocations_s3_key = v_revocations_s3_key;
       revocations_s3_object_version =
         v_revocations_s3_object_version;
       trust_store_arn = v_trust_store_arn;
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
         let arg =
           yojson_of_prop yojson_of_string v_trust_store_arn
         in
         ("trust_store_arn", arg) :: bnds
       in
       let bnds =
         match v_revocations_s3_object_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "revocations_s3_object_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_revocations_s3_key
         in
         ("revocations_s3_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_revocations_s3_bucket
         in
         ("revocations_s3_bucket", arg) :: bnds
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
    : aws_lb_trust_store_revocation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lb_trust_store_revocation

[@@@deriving.end]

let timeouts ?create () : timeouts = { create }

let aws_lb_trust_store_revocation ?id ?revocations_s3_object_version
    ?timeouts ~revocations_s3_bucket ~revocations_s3_key
    ~trust_store_arn () : aws_lb_trust_store_revocation =
  {
    id;
    revocations_s3_bucket;
    revocations_s3_key;
    revocations_s3_object_version;
    trust_store_arn;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  revocation_id : float prop;
  revocations_s3_bucket : string prop;
  revocations_s3_key : string prop;
  revocations_s3_object_version : string prop;
  trust_store_arn : string prop;
}

let make ?id ?revocations_s3_object_version ?timeouts
    ~revocations_s3_bucket ~revocations_s3_key ~trust_store_arn __id
    =
  let __type = "aws_lb_trust_store_revocation" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       revocation_id = Prop.computed __type __id "revocation_id";
       revocations_s3_bucket =
         Prop.computed __type __id "revocations_s3_bucket";
       revocations_s3_key =
         Prop.computed __type __id "revocations_s3_key";
       revocations_s3_object_version =
         Prop.computed __type __id "revocations_s3_object_version";
       trust_store_arn = Prop.computed __type __id "trust_store_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lb_trust_store_revocation
        (aws_lb_trust_store_revocation ?id
           ?revocations_s3_object_version ?timeouts
           ~revocations_s3_bucket ~revocations_s3_key
           ~trust_store_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?revocations_s3_object_version ?timeouts
    ~revocations_s3_bucket ~revocations_s3_key ~trust_store_arn __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?revocations_s3_object_version ?timeouts
      ~revocations_s3_bucket ~revocations_s3_key ~trust_store_arn
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
