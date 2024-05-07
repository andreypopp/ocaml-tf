(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_spot_datafeed_subscription = {
  bucket : string prop;
  id : string prop option; [@option]
  prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_spot_datafeed_subscription) -> ()

let yojson_of_aws_spot_datafeed_subscription =
  (function
   | { bucket = v_bucket; id = v_id; prefix = v_prefix } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
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
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : aws_spot_datafeed_subscription ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_spot_datafeed_subscription

[@@@deriving.end]

let aws_spot_datafeed_subscription ?id ?prefix ~bucket () :
    aws_spot_datafeed_subscription =
  { bucket; id; prefix }

type t = {
  tf_name : string;
  bucket : string prop;
  id : string prop;
  prefix : string prop;
}

let make ?id ?prefix ~bucket __id =
  let __type = "aws_spot_datafeed_subscription" in
  let __attrs =
    ({
       tf_name = __id;
       bucket = Prop.computed __type __id "bucket";
       id = Prop.computed __type __id "id";
       prefix = Prop.computed __type __id "prefix";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_spot_datafeed_subscription
        (aws_spot_datafeed_subscription ?id ?prefix ~bucket ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?prefix ~bucket __id =
  let (r : _ Tf_core.resource) = make ?id ?prefix ~bucket __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
