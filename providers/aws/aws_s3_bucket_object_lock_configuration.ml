(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rule__default_retention = {
  days : float prop option; [@option]
  mode : string prop option; [@option]
  years : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__default_retention) -> ()

let yojson_of_rule__default_retention =
  (function
   | { days = v_days; mode = v_mode; years = v_years } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_years with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "years", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "days", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__default_retention -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__default_retention

[@@@deriving.end]

type rule = { default_retention : rule__default_retention list }
[@@deriving_inline yojson_of]

let _ = fun (_ : rule) -> ()

let yojson_of_rule =
  (function
   | { default_retention = v_default_retention } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_rule__default_retention
             v_default_retention
         in
         ("default_retention", arg) :: bnds
       in
       `Assoc bnds
    : rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule

[@@@deriving.end]

type aws_s3_bucket_object_lock_configuration = {
  bucket : string prop;
  expected_bucket_owner : string prop option; [@option]
  id : string prop option; [@option]
  object_lock_enabled : string prop option; [@option]
  token : string prop option; [@option]
  rule : rule list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3_bucket_object_lock_configuration) -> ()

let yojson_of_aws_s3_bucket_object_lock_configuration =
  (function
   | {
       bucket = v_bucket;
       expected_bucket_owner = v_expected_bucket_owner;
       id = v_id;
       object_lock_enabled = v_object_lock_enabled;
       token = v_token;
       rule = v_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_rule v_rule in
         ("rule", arg) :: bnds
       in
       let bnds =
         match v_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_object_lock_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "object_lock_enabled", arg in
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
         match v_expected_bucket_owner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expected_bucket_owner", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : aws_s3_bucket_object_lock_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3_bucket_object_lock_configuration

[@@@deriving.end]

let rule__default_retention ?days ?mode ?years () :
    rule__default_retention =
  { days; mode; years }

let rule ~default_retention () : rule = { default_retention }

let aws_s3_bucket_object_lock_configuration ?expected_bucket_owner
    ?id ?object_lock_enabled ?token ?(rule = []) ~bucket () :
    aws_s3_bucket_object_lock_configuration =
  {
    bucket;
    expected_bucket_owner;
    id;
    object_lock_enabled;
    token;
    rule;
  }

type t = {
  tf_name : string;
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
  object_lock_enabled : string prop;
  token : string prop;
}

let make ?expected_bucket_owner ?id ?object_lock_enabled ?token
    ?(rule = []) ~bucket __id =
  let __type = "aws_s3_bucket_object_lock_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       bucket = Prop.computed __type __id "bucket";
       expected_bucket_owner =
         Prop.computed __type __id "expected_bucket_owner";
       id = Prop.computed __type __id "id";
       object_lock_enabled =
         Prop.computed __type __id "object_lock_enabled";
       token = Prop.computed __type __id "token";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_bucket_object_lock_configuration
        (aws_s3_bucket_object_lock_configuration
           ?expected_bucket_owner ?id ?object_lock_enabled ?token
           ~rule ~bucket ());
    attrs = __attrs;
  }

let register ?tf_module ?expected_bucket_owner ?id
    ?object_lock_enabled ?token ?(rule = []) ~bucket __id =
  let (r : _ Tf_core.resource) =
    make ?expected_bucket_owner ?id ?object_lock_enabled ?token ~rule
      ~bucket __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
