(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_elastic_beanstalk_hosted_zone = {
  id : string prop option; [@option]
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_elastic_beanstalk_hosted_zone) -> ()

let yojson_of_aws_elastic_beanstalk_hosted_zone =
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
    : aws_elastic_beanstalk_hosted_zone ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_elastic_beanstalk_hosted_zone

[@@@deriving.end]

let aws_elastic_beanstalk_hosted_zone ?id ?region () :
    aws_elastic_beanstalk_hosted_zone =
  { id; region }

type t = { tf_name : string; id : string prop; region : string prop }

let make ?id ?region __id =
  let __type = "aws_elastic_beanstalk_hosted_zone" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       region = Prop.computed __type __id "region";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_elastic_beanstalk_hosted_zone
        (aws_elastic_beanstalk_hosted_zone ?id ?region ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?region __id =
  let (r : _ Tf_core.resource) = make ?id ?region __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
