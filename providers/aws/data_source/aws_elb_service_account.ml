(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_elb_service_account = {
  id : string prop option; [@option]
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_elb_service_account) -> ()

let yojson_of_aws_elb_service_account =
  (function
   | { id = v_id; region = v_region } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
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
    : aws_elb_service_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_elb_service_account

[@@@deriving.end]

let aws_elb_service_account ?id ?region () : aws_elb_service_account
    =
  { id; region }

type t = {
  arn : string prop;
  id : string prop;
  region : string prop;
}

let make ?id ?region __id =
  let __type = "aws_elb_service_account" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       region = Prop.computed __type __id "region";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_elb_service_account
        (aws_elb_service_account ?id ?region ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?region __id =
  let (r : _ Tf_core.resource) = make ?id ?region __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
