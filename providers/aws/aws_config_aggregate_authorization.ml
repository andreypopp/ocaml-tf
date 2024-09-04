(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_config_aggregate_authorization = {
  account_id : string prop;
  id : string prop option; [@option]
  region : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_config_aggregate_authorization) -> ()

let yojson_of_aws_config_aggregate_authorization =
  (function
   | {
       account_id = v_account_id;
       id = v_id;
       region = v_region;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_config_aggregate_authorization ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_config_aggregate_authorization

[@@@deriving.end]

let aws_config_aggregate_authorization ?id ?tags ?tags_all
    ~account_id ~region () : aws_config_aggregate_authorization =
  { account_id; id; region; tags; tags_all }

type t = {
  tf_name : string;
  account_id : string prop;
  arn : string prop;
  id : string prop;
  region : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?id ?tags ?tags_all ~account_id ~region __id =
  let __type = "aws_config_aggregate_authorization" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       region = Prop.computed __type __id "region";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_config_aggregate_authorization
        (aws_config_aggregate_authorization ?id ?tags ?tags_all
           ~account_id ~region ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~account_id ~region __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~account_id ~region __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
